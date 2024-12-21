TEMP_DIR := $(shell mktemp -d)
ifndef EXE
	EXE = lc0
endif

all:
	git clone https://github.com/Ergodice/lc0 -b ch-new-3 $(TEMP_DIR)
	cd $(TEMP_DIR) && ./build.sh
	mv $(TEMP_DIR)/build/release/lc0 $(EXE)
