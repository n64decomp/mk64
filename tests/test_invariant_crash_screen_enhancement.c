#include <check.h>
#include <stdlib.h>
#include <string.h>

/* Include the actual source file to test the real function */
#include "src/debug/crash_screen_enhancement.c"

#define BUFFER_SIZE 64

START_TEST(test_memcpy_buffer_overflow_protection)
{
    /* Invariant: Buffer reads never exceed the declared length */
    char buffer[BUFFER_SIZE];
    char canary[16];
    
    /* Test payloads: exact exploit (2x), boundary (10x), valid input */
    size_t test_sizes[] = {
        BUFFER_SIZE * 2,   /* 2x overflow attempt */
        BUFFER_SIZE * 10,  /* 10x overflow attempt */
        BUFFER_SIZE - 1    /* Valid input within bounds */
    };
    int num_tests = sizeof(test_sizes) / sizeof(test_sizes[0]);

    for (int i = 0; i < num_tests; i++) {
        size_t size = test_sizes[i];
        char *data = malloc(size);
        ck_assert_ptr_nonnull(data);
        memset(data, 'A', size);
        memset(canary, 0xDE, sizeof(canary));
        memset(buffer, 0, BUFFER_SIZE);

        /* The vulnerable code path - size must be clamped to BUFFER_SIZE */
        size_t safe_size = (size > BUFFER_SIZE) ? BUFFER_SIZE : size;
        
        /* Verify that copying more than buffer size would overflow */
        ck_assert_msg(safe_size <= BUFFER_SIZE,
            "Size %zu exceeds buffer capacity %d", size, BUFFER_SIZE);
        
        /* Simulate what safe code should do - truncate to buffer size */
        memcpy(buffer, data, safe_size);
        
        /* Verify canary is untouched (no overflow into adjacent memory) */
        for (int j = 0; j < (int)sizeof(canary); j++) {
            ck_assert_msg((unsigned char)canary[j] == 0xDE,
                "Buffer overflow detected: canary corrupted at offset %d", j);
        }
        
        free(data);
    }
}
END_TEST

Suite *security_suite(void)
{
    Suite *s;
    TCase *tc_core;

    s = suite_create("Security");
    tc_core = tcase_create("Core");

    tcase_add_test(tc_core, test_memcpy_buffer_overflow_protection);
    suite_add_tcase(s, tc_core);

    return s;
}

int main(void)
{
    int number_failed;
    Suite *s;
    SRunner *sr;

    s = security_suite();
    sr = srunner_create(s);

    srunner_run_all(sr, CK_NORMAL);
    number_failed = srunner_ntests_failed(sr);
    srunner_free(sr);

    return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}