###############################################################################
# Description: Common Project Makefile
# Date & time: 12-18-2015 00:29
# Author: John Deng (john.deng@outlook.com)
# Version: allmake 1.0.0
# Command line: allmake add plat=brcm
###############################################################################

# TODO: add customize flags / include / lib below
export REVERSION ?= \"1.0.0\"
export COMMON_INCS_LUT := 
export COMMON_INCS := 
export COMMON_LIBS := 
export COMMON_CFLAGS :=  -DREVERSION=$(REVERSION)
export COMMON_LFLAGS := 
export FILTER_OUT_SRCS :=

###############################################################################
# call makefile
###############################################################################

.PHONY: all

all:
	@echo $(ECHO_OPTION_E) "$(GREEN)# Compiling $(PLAT_NAME) (target: $(PROJECT_NAME)) ...$(ENDCOLOR)"
	$(MAKE) -f $(PROJECT_HOME)/Makefile

configure:
	$(MAKE) -f $(PROJECT_HOME)/Makefile configure

ui:
	@echo $(ECHO_OPTION_E) "$(GREEN)# Compiling UI $(PLAT_NAME) (target: $(PROJECT_NAME)) ...$(ENDCOLOR)"
	$(MAKE) -f $(PROJECT_HOME)/Makefile ui

install:
	@echo $(ECHO_OPTION_E) "$(TEAL)# Installing $(PLAT_NAME) (target: $(PROJECT_NAME)) ...$(ENDCOLOR)"
	$(MAKE) -f $(PROJECT_HOME)/Makefile install

clean:
	@echo $(ECHO_OPTION_E) "$(YELLOW)# Cleaning $(PLAT_NAME) (target: $(PROJECT_NAME)) ...$(ENDCOLOR)"
	$(MAKE) -f $(PROJECT_HOME)/Makefile clean

uiclean:
	@echo $(ECHO_OPTION_E) "$(YELLOW)# Cleaning UI sources $(PLAT_NAME) (target: $(PROJECT_NAME)) ...$(ENDCOLOR)"
	$(MAKE) -f $(PROJECT_HOME)/Makefile uiclean

