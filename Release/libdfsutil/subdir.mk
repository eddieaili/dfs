################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libdfsutil/debug.cpp \
../libdfsutil/dfscrypt.cpp \
../libdfsutil/dfsfile.cpp \
../libdfsutil/dfsnet.cpp \
../libdfsutil/dfsstr.cpp \
../libdfsutil/dfsutil.cpp \
../libdfsutil/key.cpp \
../libdfsutil/kvserializer.cpp \
../libdfsutil/lrucache.cpp \
../libdfsutil/monitor.cpp \
../libdfsutil/mutex_posix.cpp \
../libdfsutil/mutex_windows.cpp \
../libdfsutil/objecthash.cpp \
../libdfsutil/objectinfo.cpp \
../libdfsutil/rwlock.cpp \
../libdfsutil/rwlock_posix.cpp \
../libdfsutil/rwlock_windows.cpp \
../libdfsutil/stopwatch.cpp \
../libdfsutil/stream.cpp \
../libdfsutil/thread_posix.cpp \
../libdfsutil/zeroconf.cpp 

OBJS += \
./libdfsutil/debug.o \
./libdfsutil/dfscrypt.o \
./libdfsutil/dfsfile.o \
./libdfsutil/dfsnet.o \
./libdfsutil/dfsstr.o \
./libdfsutil/dfsutil.o \
./libdfsutil/key.o \
./libdfsutil/kvserializer.o \
./libdfsutil/lrucache.o \
./libdfsutil/monitor.o \
./libdfsutil/mutex_posix.o \
./libdfsutil/mutex_windows.o \
./libdfsutil/objecthash.o \
./libdfsutil/objectinfo.o \
./libdfsutil/rwlock.o \
./libdfsutil/rwlock_posix.o \
./libdfsutil/rwlock_windows.o \
./libdfsutil/stopwatch.o \
./libdfsutil/stream.o \
./libdfsutil/thread_posix.o \
./libdfsutil/zeroconf.o 

CPP_DEPS += \
./libdfsutil/debug.d \
./libdfsutil/dfscrypt.d \
./libdfsutil/dfsfile.d \
./libdfsutil/dfsnet.d \
./libdfsutil/dfsstr.d \
./libdfsutil/dfsutil.d \
./libdfsutil/key.d \
./libdfsutil/kvserializer.d \
./libdfsutil/lrucache.d \
./libdfsutil/monitor.d \
./libdfsutil/mutex_posix.d \
./libdfsutil/mutex_windows.d \
./libdfsutil/objecthash.d \
./libdfsutil/objectinfo.d \
./libdfsutil/rwlock.d \
./libdfsutil/rwlock_posix.d \
./libdfsutil/rwlock_windows.d \
./libdfsutil/stopwatch.d \
./libdfsutil/stream.d \
./libdfsutil/thread_posix.d \
./libdfsutil/zeroconf.d 


# Each subdirectory must supply rules for building sources it contributes
libdfsutil/%.o: ../libdfsutil/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/opt/local/include -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

