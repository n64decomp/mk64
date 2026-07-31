#!/usr/bin/env python3
"""Write the three JP v1.1 course-name tables that menu_items.c includes.

US shows one English name everywhere, so `gCourseNames`, `gCourseNamesDup` and
`gCourseNamesDup2` all include the same generated file. JP shows three different
forms and needs three tables:

    gCourseNames      romanised ascii   "mario circuit", "noko noko beach"
    gCourseNamesDup   japanese          "マリオサーキット"
    gCourseNamesDup2  japanese, and one name shortened to fit
                                        "ドンキージャングル" not "…パーク"

Why these are not in yamls/courses/*_metadata.yml with the US names
-------------------------------------------------------------------
Torch's mk64:metadata factory emits twenty files from one course-metadata set
(names, cup tables, path tables, CPU tuning, sky colours, bomb-kart spawns) and
its parser requires every field of every course. It writes exactly one names
table per config entry, from the fixed `name` field.

So a second names table means a second config entry, which means a second copy
of all twenty-one fully populated course yamls, differing in a single string and
re-emitting nineteen identical tables alongside. A third means a third copy.
That is the per-version duplication this branch removes everywhere else, and it
would be the largest single thing in the diff for the smallest reason.

These twenty names are hand-authored map data exactly like `name: banshee
boardwalk` already is in the course yamls; they simply do not need Torch's
twenty-table machinery to express. If the factory ever learns to take the names
table's source field from its config entry, this file and its json fold back
into yamls/courses and nothing else changes.

The output is EUC-JP, the encoding the cartridge and menu_items.c use.

    generate_jp_course_names.py <output directory>
"""
import json
import os
import sys

FIELDS = (("romaji", "gCourseNames.jp1.inc.c"),
          ("name", "gCourseNames.jp2.inc.c"),
          ("short", "gCourseNames.jp3.inc.c"))


def main():
    out_dir = sys.argv[1]
    here = os.path.dirname(os.path.realpath(__file__))
    courses = json.load(open(os.path.join(here, "jp_course_names.json")))["courses"]
    os.makedirs(out_dir, exist_ok=True)
    for key, filename in FIELDS:
        # Same shape as the table Torch writes for US: one quoted name per
        # course, in course-id order, spliced into a char* array initialiser.
        body = "".join('"%s", ' % c[key] for c in courses) + "\n"
        with open(os.path.join(out_dir, filename), "wb") as f:
            f.write(body.encode("euc_jp"))
    print("%d courses -> %s" % (len(courses), ", ".join(f for _, f in FIELDS)))


main()
