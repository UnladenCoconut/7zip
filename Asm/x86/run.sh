set -e
rm -f LzFindOpt.o LzFindOpt.post
uasm -10 -EP -DABI_MACOS=1 -macho64 LzFindOpt.asm > LzFindOpt.post
uasm -10 -DABI_MACOS=1 -macho64 LzFindOpt.asm
nm LzFindOpt.o
