src_dir := $(shell pwd)
bin_dir := /usr/local/bin
man_dir := /usr/local/share/man/man1
bin := openssl-generate-certificates

install:
		@if ! [ -f $(bin_dir)/$(bin) ]; then ln -s $(src_dir)/$(bin) $(bin_dir)/$(bin) ; fi
		@if ! [ -f $(man_dir)/$(bin).1.gz ]; then ln -s $(src_dir)/man/$(bin).1.gz $(man_dir)/$(bin).1.gz ; fi
