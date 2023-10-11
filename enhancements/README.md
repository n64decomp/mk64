# Mario Kart 64 Enhancements

This directory contains unofficial patches to the source code that provide various features
and enhancements.

To apply a patch, run `tools/apply_patch.sh [patch]` where `[patch]` is the name of the
.patch file you wish to apply. This will perform all of the patch's changes
to the source code.

Likewise, to undo the changes from a patch you applied, run
`tools/revert_patch.sh` with the name of the .patch file you wish to undo.

To create your own enhancement patch, switch to the `master` Git
branch, make your changes to the code (but do not commit), then run `tools/create_patch.sh`. Your changes will be stored in the .patch file you specify.

The following enhancements are included in this directory:

## Flycam - `flycam.patch`

This enhancement provides a flycam mode.
