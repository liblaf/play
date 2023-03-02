ifneq ($(shell which go),)
	ARCH != go env GOARCH
	EXE  != go env GOEXE
	OS   != go env GOOS
else
	ARCH != echo $(ARCH) | tr '[:upper:]' '[:lower:]'
	EXE  != echo $(EXE)  | tr '[:upper:]' '[:lower:]'
	OS   != echo $(OS)   | tr '[:upper:]' '[:lower:]'
endif

$(info $(ARCH))
$(info $(EXE))
$(info $(OS))

build:
	echo
