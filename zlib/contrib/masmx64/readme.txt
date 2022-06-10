This directory contains ASM implementation of the function longest_match(),
for 64 bits x86 (both AMD64 and Intel EM64t).

gvmat64.asm is written by Gilles Vollant (2005), by using Brian Raiter 686/32 bits
assembly optimized version from Jean-loup Gailly original longest_match function.

In zlib package 1.2.12, this directory has been completely removed, but the
function has not actually changed. So I decided that it would be safe to
continue using this ASM implementation.
