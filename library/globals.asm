; Read only data
;

ds:0x1000d180  ; (dword)  00 00 00 00 00 00 f0 41
               ; (double) 4294967296.0 (2^32)
               ; https://reverseengineering.stackexchange.com/questions/16363/


; Global variables
;

ds:0x10011004    ; _global_PipeID

ds:0x10015210    ; _global_InterfaceHandle


ds:0x10016000    ; _global_CH1_FreqValue     (kHz)
ds:0x10016008    ; _global_CH1_MaxValue      (V)
ds:0x10016009    ; _global_CH1_MinValue      (V)
ds:0x1001600a    ; _global_CH1_PPValue       (V)
ds:0x1001600b    ; _global_CH1_AverageValue  (V)
ds:0x10016010    ; _global_CH1_PeriodValue   (us)
ds:0x10016018    ; _global_CH1_RiseTimeValue (us)
ds:0x10016020    ; _global_CH1_PosWidthValue (us)
ds:0x10016028    ; _global_CH1_NegWidthValue (us)
ds:0x10016030    ; _global_CH1_DutyValue     (%)

ds:0x10016038    ; _global_CH2_FreqValue     (kHz)
ds:0x10016040    ; _global_CH2_MaxValue      (V)
ds:0x10016041    ; _global_CH2_MinValue      (V)
ds:0x10016042    ; _global_CH2_PPValue       (V)
ds:0x10016043    ; _global_CH2_AverageValue  (V)
ds:0x10016048    ; _global_CH2_PeriodValue   (us)
ds:0x10016050    ; _global_CH2_RiseTimeValue (us)
ds:0x10016058    ; _global_CH2_PosWidthValue (us)
ds:0x10016060    ; _global_CH2_NegWidthValue (us)
ds:0x10016068    ; _global_CH2_DutyValue     (%)


ds:0x10016084    ; _global_HWbuffer_size
