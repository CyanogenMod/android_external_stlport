# Add a couple include paths to use stlport.

# Only use this on the device or emulator.
ifeq ($(TARGET_SIMULATOR),true)
$(error STLPort not suitable for the simulator! $(LOCAL_PATH))
endif

# Make sure bionic is first so we can include system headers.
LOCAL_C_INCLUDES := \
	bionic \
	external/stlport/stlport \
	$(LOCAL_C_INCLUDES)
