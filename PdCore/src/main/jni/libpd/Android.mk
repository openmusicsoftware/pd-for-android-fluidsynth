LOCAL_PATH := $(call my-dir)


# prebuilts for fluidsynth

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libfluidsynth.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-a
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libfluidsynth-assetloader.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-flac
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libFLAC.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-gio
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libgio-2.0.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-glib
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libglib-2.0.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-gmodule
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libgmodule-2.0.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-gobject
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libgobject-2.0.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-gthread
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libgthread-2.0.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-instpatch
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libinstpatch-1.0.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-oboe
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/liboboe.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-opus
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libopus.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-ogg
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libogg.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-sndfile
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libsndfile.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-vorbis
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libvorbis.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-vorbisfile
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libvorbisfile.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := fluidsynth-prebuilt-vorbisenc
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/lib/$(TARGET_ARCH_ABI)/libvorbisenc.so
include $(PREBUILT_SHARED_LIBRARY)



# PD-specific flags

PD_SRC_FILES := \
  pure-data/src/d_arithmetic.c pure-data/src/d_array.c pure-data/src/d_ctl.c \
  pure-data/src/d_dac.c pure-data/src/d_delay.c pure-data/src/d_fft.c \
  pure-data/src/d_fft_fftsg.c \
  pure-data/src/d_filter.c pure-data/src/d_global.c pure-data/src/d_math.c \
  pure-data/src/d_misc.c pure-data/src/d_osc.c pure-data/src/d_resample.c \
  pure-data/src/d_soundfile.c pure-data/src/d_ugen.c \
  pure-data/src/g_all_guis.c pure-data/src/g_array.c pure-data/src/g_bang.c \
  pure-data/src/g_canvas.c pure-data/src/g_clone.c pure-data/src/g_editor.c \
  pure-data/src/g_editor_extras.c \
  pure-data/src/g_graph.c pure-data/src/g_guiconnect.c pure-data/src/g_hdial.c \
  pure-data/src/g_hslider.c pure-data/src/g_io.c pure-data/src/g_mycanvas.c \
  pure-data/src/g_numbox.c pure-data/src/g_readwrite.c \
  pure-data/src/g_rtext.c pure-data/src/g_scalar.c pure-data/src/g_template.c \
  pure-data/src/g_text.c pure-data/src/g_toggle.c pure-data/src/g_traversal.c \
  pure-data/src/g_undo.c \
  pure-data/src/g_vdial.c pure-data/src/g_vslider.c pure-data/src/g_vumeter.c \
  pure-data/src/m_atom.c pure-data/src/m_binbuf.c pure-data/src/m_class.c \
  pure-data/src/m_conf.c pure-data/src/m_glob.c pure-data/src/m_memory.c \
  pure-data/src/m_obj.c pure-data/src/m_pd.c pure-data/src/m_sched.c \
  pure-data/src/s_audio.c pure-data/src/s_audio_dummy.c \
  pure-data/src/s_inter.c \
  pure-data/src/s_loader.c pure-data/src/s_main.c \
  pure-data/src/s_net.c pure-data/src/s_path.c \
  pure-data/src/s_print.c pure-data/src/s_utf8.c pure-data/src/x_acoustics.c \
  pure-data/src/x_arithmetic.c pure-data/src/x_connective.c \
  pure-data/src/x_gui.c pure-data/src/x_list.c pure-data/src/x_midi.c \
  pure-data/src/x_misc.c pure-data/src/x_net.c pure-data/src/x_array.c \
  pure-data/src/x_time.c pure-data/src/x_interface.c pure-data/src/x_scalar.c \
  pure-data/src/x_text.c pure-data/src/x_vexp.c pure-data/src/x_vexp_if.c \
  pure-data/src/x_vexp_fun.c libpd_wrapper/s_libpdmidi.c \
  libpd_wrapper/x_libpdreceive.c libpd_wrapper/z_libpd.c \
  libpd_wrapper/util/ringbuffer.c libpd_wrapper/util/z_queued.c \
  libpd_wrapper/z_hooks.c libpd_wrapper/util/z_print_util.c
PD_C_INCLUDES := $(LOCAL_PATH)/pure-data/src $(LOCAL_PATH)/libpd_wrapper \
  $(LOCAL_PATH)/libpd_wrapper/util \
  $(LOCAL_PATH)/pure-data/extra/fluidsynth~/fluidsynth-2.2.4-android24/include \
  $(LOCAL_PATH)/pure-data/src

PD_CFLAGS := -DPD -DHAVE_UNISTD_H -DLIBPD_EXTRA=1 -DHAVE_LIBDL -DUSEAPI_DUMMY -w
PD_JNI_CFLAGS := -Wno-int-to-pointer-cast -Wno-pointer-to-int-cast
PD_LDLIBS := -ldl -latomic

PD_EXTRA_FILES := \
    pure-data/extra/bob~/bob~.c pure-data/extra/bonk~/bonk~.c \
    pure-data/extra/choice/choice.c \
    pure-data/extra/fiddle~/fiddle~.c pure-data/extra/loop~/loop~.c \
    pure-data/extra/lrshift~/lrshift~.c pure-data/extra/pique/pique.c \
    pure-data/extra/sigmund~/sigmund~.c pure-data/extra/stdout/stdout.c \
    pure-data/extra/fluidsynth~/fluidsynth~.c


# Build a tickler

include $(CLEAR_VARS)

LOCAL_MODULE := cpp-tickler
LOCAL_CPP_INCLUDES := $(PD_CPP_INCLUDES)
LOCAL_SRC_FILES := pure-data/extra/fluidsynth~/cpptickler.cpp
include $(BUILD_SHARED_LIBRARY)


# Build libpd

include $(CLEAR_VARS)

LOCAL_MODULE := pd
LOCAL_C_INCLUDES := $(PD_C_INCLUDES)
LOCAL_CFLAGS := $(PD_CFLAGS)
LOCAL_LDLIBS := $(PD_LDLIBS)
LOCAL_SRC_FILES := $(PD_SRC_FILES) $(PD_EXTRA_FILES)
LOCAL_SHARED_LIBRARIES := fluidsynth-prebuilt
include $(BUILD_SHARED_LIBRARY)


# Build plain JNI binary

include $(CLEAR_VARS)

LOCAL_MODULE := pdnative
LOCAL_C_INCLUDES := $(PD_C_INCLUDES)
LOCAL_CFLAGS := $(PD_JNI_CFLAGS)
LOCAL_SRC_FILES := jni/z_jni_plain.c
LOCAL_SHARED_LIBRARIES := pd
include $(BUILD_SHARED_LIBRARY)


# Build OpenSL JNI binary

include $(CLEAR_VARS)

LOCAL_MODULE := pdnativeopensl
LOCAL_C_INCLUDES := $(PD_C_INCLUDES) $(LOCAL_PATH)/jni
LOCAL_CFLAGS := $(PD_JNI_CFLAGS)
LOCAL_LDLIBS := -lOpenSLES -llog
LOCAL_SRC_FILES := jni/opensl_stream/opensl_stream.c jni/z_jni_opensl.c
LOCAL_SHARED_LIBRARIES := pd
include $(BUILD_SHARED_LIBRARY)




