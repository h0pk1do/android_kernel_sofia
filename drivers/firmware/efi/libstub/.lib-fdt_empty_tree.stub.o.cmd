cmd_drivers/firmware/efi/libstub/lib-fdt_empty_tree.stub.o := if /home/justin/kernel/toolchain/bin/aarch64-linux-android-strip --strip-debug -R *ksymtab* -R *kcrctab* -o drivers/firmware/efi/libstub/lib-fdt_empty_tree.stub.o drivers/firmware/efi/libstub/lib-fdt_empty_tree.o; then if /home/justin/kernel/toolchain/bin/aarch64-linux-android-objdump -r drivers/firmware/efi/libstub/lib-fdt_empty_tree.stub.o | grep R_AARCH64_ABS; then (echo >&2 "drivers/firmware/efi/libstub/lib-fdt_empty_tree.stub.o: absolute symbol references not allowed in the EFI stub"; rm -f drivers/firmware/efi/libstub/lib-fdt_empty_tree.stub.o; /bin/false); else /home/justin/kernel/toolchain/bin/aarch64-linux-android-objcopy --prefix-alloc-sections=.init --prefix-symbols=__efistub_ drivers/firmware/efi/libstub/lib-fdt_empty_tree.o drivers/firmware/efi/libstub/lib-fdt_empty_tree.stub.o; fi else /bin/false; fi
