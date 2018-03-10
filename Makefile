src_dir := $(shell pwd)
platform := $(shell uname -o)
bin := openssl-generate-certificates
man := $(bin).1.gz
THIS_FILE := $(lastword $(MAKEFILE_LIST))
ifeq ($(platform),Darwin)
		bin_dir := /usr/local/bin
		man_dir := /usr/local/share/man/man1
else
		bin_dir := /usr/bin
		man_dir := /usr/share/man/man1
endif

check_installed:
		@if [ -f $(bin_dir)/$(bin) ]; then echo "Another version of $(bin) is already installed. Execute 'make overwrite' to overwrite existing version." && exit 1 ; fi

install: check_installed
		@if ! [ -f $(bin_dir)/$(bin) ]; then ln -s $(src_dir)/$(bin) $(bin_dir)/$(bin) ; fi
		@if [ -d $(man_dir) ] && ! [ -f $(man_dir)/$(man) ]; then ln -s $(src_dir)/man/$(man) $(man_dir)/$(man) ; fi

remove:
		@if [ -f $(bin_dir)/$(bin) ]; then rm $(bin_dir)/$(bin) ; fi
		@if [ -f $(man_dir)/$(man) ]; then rm $(man_dir)/$(man) ; fi

overwrite: remove
		@$(MAKE) -f $(THIS_FILE) install
