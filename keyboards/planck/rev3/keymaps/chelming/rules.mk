ifeq ($(strip $(AUDIO_ENABLE)), yes)
    SRC += muse.c
endif

ifneq ($(strip $(NO_SECRETS)), yes)
    ifneq ("$(wildcard $(USER_PATH)/secrets.c)","")
        SRC += secrets.c
    endif
endif
