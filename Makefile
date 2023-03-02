BIN    := $(HOME)/.local/bin
DIST   := $(CURDIR)/dist
NAME   := thu-learn-downloader
SHELL  := /bin/bash

$(info $(SHELL))
OS   != echo $(RUNNER_OS)   | tr '[:upper:]' '[:lower:]'
ARCH != echo $(RUNNER_ARCH) | tr '[:upper:]' '[:lower:]'
ifeq ($(OS), windows)
	EXE := .exe
else
	EXE :=
endif

TARGET := $(DIST)/$(NAME)$(EXE)

rename:
	echo $(RUNNER_OS) $(RUNNER_ARCH) $(OS) $(ARCH)
ifneq ($(and $(OS), $(ARCH)), )
	echo $(DIST)/$(NAME)-$(OS)-$(ARCH)$(EXE)
endif
