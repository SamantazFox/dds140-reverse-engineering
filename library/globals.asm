; Read only data
;

ds:0x1000d180  ; (dword)  00 00 00 00 00 00 f0 41
               ; (double) 4294967296.0 (2^32)
               ; https://reverseengineering.stackexchange.com/questions/16363/
               ; _const_pow2_32

ds:0x1000d188  ; (dword)  00 00 00 00 00 00 80 40
               ; (double) 512.0
               ; _const_512

ds:0x1000d190  ; (dword)  00 00 00 00 00 00 10 40
               ; (double) 4.0
               ; _const_4

ds:0x1000d198  ; (dword)  00 00 00 00 00 00 00 40
               ; (double) 2.0
               ; _const_2

ds:0x1000d1a0  ; (dword)  00 00 00 00 00 00 79 40
               ; (double) 400.0
               ; _const_400


; Global variables
;

ds:0x10010000    ; [4] / _global_DeviceHandle

; WINUSB_PIPE_INFORMATION structure
ds:0x10011000    ; [4] / _global_PipeType
ds:0x10011004    ; [1] / _global_PipeId
ds:0x10011005    ; [2] / _global_MaximumPacketSize
ds:0x10011007    ; [1] / _global_Interval


ds:0x10015210    ; [4] / _global_InterfaceHandle
ds:0x10015214    ; [1] / _global_Device_Speed
ds:0x10015215    ; [1] / _global_BulkIn_PipeID
ds:0x10015216    ; [1] / _global_BulkOut_PipeID
ds:0x10015217    ; [1] / _global_Interrupt_PipeID

ds:0x1001522c    ; _global_1001522c (initialization flag?)

ds:0x10015df8    ; _global_cpu_sopports_SSE2

ds:0x10016000    ; [8] / _global_CH1_FreqValue     (kHz)
ds:0x10016008    ; [1] / _global_CH1_MaxValue      (V)
ds:0x10016009    ; [1] / _global_CH1_MinValue      (V)
ds:0x1001600a    ; [1] / _global_CH1_PPValue       (V)
ds:0x1001600b    ; [1] / _global_CH1_AverageValue  (V)
ds:0x10016010    ; [8] / _global_CH1_PeriodValue   (us)
ds:0x10016018    ; [8] / _global_CH1_RiseTimeValue (us)
ds:0x10016020    ; [8] / _global_CH1_PosWidthValue (us)
ds:0x10016028    ; [8] / _global_CH1_NegWidthValue (us)
ds:0x10016030    ; [8] / _global_CH1_DutyValue     (%)

ds:0x10016038    ; [8] / _global_CH2_FreqValue     (kHz)
ds:0x10016040    ; [1] / _global_CH2_MaxValue      (V)
ds:0x10016041    ; [1] / _global_CH2_MinValue      (V)
ds:0x10016042    ; [1] / _global_CH2_PPValue       (V)
ds:0x10016043    ; [1] / _global_CH2_AverageValue  (V)
ds:0x10016044    ; [4] / _global_ZrroUniInt        (V?)
ds:0x10016048    ; [8] / _global_CH2_PeriodValue   (us)
ds:0x10016050    ; [8] / _global_CH2_RiseTimeValue (us)
ds:0x10016058    ; [8] / _global_CH2_PosWidthValue (us)
ds:0x10016060    ; [8] / _global_CH2_NegWidthValue (us)
ds:0x10016068    ; [8] / _global_CH2_DutyValue     (%)

ds:0x10016074    ; _global_BufferOffset
ds:0x10016078    ; _global_currentSampleRate

ds:0x10016080    ; [1] / _global_TrigSourceChan
ds:0x10016081    ; [1] / _global_TrigMode
ds:0x10016082    ; [1] / _global_TrigEdgeFlag
ds:0x10016083    ; [1] / _global_ReadEnable
ds:0x10016084    ; [4] / _global_HWbuffer_size
ds:0x10016088    ; [4] / _global_HWbuffer_ptr
ds:0x1001608c    ; _global_ChannelMask
ds:0x10016090    ; _global_dataNumPerPixar

ds:0x10016098    ; __UNKNOWN__

ds:0x1001609c    ; [1] / _global_ReadEnable
