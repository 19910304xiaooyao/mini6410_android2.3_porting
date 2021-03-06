


ifneq ($(TARGET_SIMULATOR),true)
  BUILD_INTELLECT := 1
endif
ifeq ($(BUILD_INTELLECT),1)

LOCAL_PATH:= $(call my-dir)




include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= \
	$(KERNEL_HEADERS) \
	$(LOCAL_PATH)/ 


LOCAL_SRC_FILES:= \
	src/lex.yy.c \
	src/y.tab.c \
         src/alias.c \
         src/boa.c \
         src/buffer.c \
         src/cgi.c \
         src/cgi_header.c \
         src/config.c \
         src/escape.c \
         src/get.c \
         src/hash.c \
         src/ip.c \
         src/log.c \
         src/mmap_cache.c \
         src/pipe.c \
         src/queue.c \
         src/read.c \
         src/request.c \
         src/response.c \
         src/select.c \
         src/signals.c \
         src/util.c \
         src/sublog.c \
         src/timestamp.c

LOCAL_MODULE_TAGS:=eng
LOCAL_MODULE:= boa
LOCAL_CFLAGS := -Wstrict-prototypes -Wpointer-arith -Wcast-align -Wcast-qual \
                   -Wtraditional \
                   -Wshadow \
                   -Wconversion \
                   -Waggregate-return \
                   -Wmissing-prototypes \
                   -Wnested-externs \
                   -Wundef -Wwrite-strings -Wredundant-decls -Winline \
                   -Wall 
#LOCAL_STATIC_LIBRARIES := \
#	libts
#LOCAL_SHARED_LIBRARIES := libdl


include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
         src/index_dir.c \
         src/escape.c
 
LOCAL_SHARED_LIBRARIES := \
         libcutils 
 
LOCAL_CFLAGS := -Wstrict-prototypes -Wpointer-arith -Wcast-align -Wcast-qual \
                   -Wtraditional \
                   -Wshadow \
                   -Wconversion \
                   -Waggregate-return \
                   -Wmissing-prototypes \
                   -Wnested-externs \
                   -Wundef -Wwrite-strings -Wredundant-decls -Winline \
                   -Wall 
LOCAL_MODULE_TAGS:=eng
LOCAL_MODULE:= boa_indexer
include $(BUILD_EXECUTABLE)
endif
