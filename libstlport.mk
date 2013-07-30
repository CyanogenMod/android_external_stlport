# To use stlport, "include external/stlport/libstlport.mk" in your target.

# We *prepend* the STL libraries.
LOCAL_C_INCLUDES := \
	external/stlport/stlport \
	bionic \
        bionic/libstdc++/include \
	$(LOCAL_C_INCLUDES)

LOCAL_SHARED_LIBRARIES += libstlport
