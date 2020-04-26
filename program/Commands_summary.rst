Summary of commands sent by host software
=========================================

USBCtrlTransSimple
++++++++++++++++++

+-----+------------------------------------------------------------------------+
| Req | Meaning                                                                |
+-----+------------------------------------------------------------------------+
|  96 | Signal generator - Select sinusoidal waveform                          |
+-----+------------------------------------------------------------------------+
|  97 | Signal generator - Select triangle waveform                            |
+-----+------------------------------------------------------------------------+
|  98 | Signal generator - Select square waveform                              |
+-----+------------------------------------------------------------------------+



USBCtrlTrans
++++++++++++

+-----+------------------------------------------------------------------------+
| Req | Meaning                                                                |
+-----+------------------------------------------------------------------------+
|  34 | Oscilloscope - Set voltage range of CH1. Associated values:            |
|     |   - 0: depends on control byte 1 -> either 200mV, 1V, 2V or 5V         |
|     |   - 2: depends on control byte 1 -> either 100mV or 0.5V               |
|     |   - 4: 50 mV                                                           |
+-----+------------------------------------------------------------------------+
|  35 | Oscilloscope - Set voltage range of CH2. Associated values:            |
|     |   -  0: depends on control byte 1 -> either 0.5V, 1V, 2V or 5V         |
|     |   - 64: depends on control byte 1 -> either 50mV, 100mV or 200mV       |
+-----+------------------------------------------------------------------------+
|  36 | Oscilloscope - Send Control byte 1                                     |
+-----+------------------------------------------------------------------------+
|  52 | Select mode. Associated values:                                        |
|     |   - 0: Oscilloscope and/or Signal generator                            |
|     |   - 1: Logic analyzer                                                  |
+-----+------------------------------------------------------------------------+
| 144 | Oscilloscope - Get bias Voltage data. Associated values:               |
|     |   -  1: CH1 - Vbias Zero  - 1 V range                                  |
|     |   -  2: CH2 - Vbias Zero  - 1 V range                                  |
|     |   -  3: CH1 - Vbias Scale - 1 V range                                  |
|     |   -  4: CH2 - Vbias Scale - 1 V range                                  |
|     |   -  5:	m_ZrroUniInt (??????)                                          |
|     |   -	 6: CH1 - Vbias Scale - 200 mV range                               |
|     |   -	 7: CH2 - Vbias Scale - 200 mV range                               |
|     |   -	 8: CH1 - Vbias Scale - 500 mV range                               |
|     |   -	 9: CH1 - Vbias Scale - 100 mV range                               |
|     |   -	10: CH1 - Vbias Scale -  50 mV range                               |
|     |   -	11: CH2 - Vbias Scale - 500 mV range                               |
|     |   -	12: CH2 - Vbias Scale - 100 mV range                               |
|     |   -	13: CH2 - Vbias Scale -  50 mV range                               |
|     |   -	14: CH1 - Vbias Zero  - 500 mV range                               |
|     |   -	15: CH2 - Vbias Zero  - 500 mV range                               |
|     |   -	16: CH1 - Vbias Zero  -  50 mV range                               |
|     |   -	17: CH2 - Vbias Zero  - 050 mV range                               |
|     |   -	18: CH1 - Vbias Zero  - 100 mV range                               |
|     |   -	19: CH2 - Vbias Zero  - 100 mV range                               |
+-----+------------------------------------------------------------------------+
| 148 | Oscilloscope - Send Control byte 0                                     |
+-----+------------------------------------------------------------------------+
| 231 | Oscilloscope - Set trigger source                                      |
|     |   - 0: Use internal trigger (CH1 or CH2)                               |
|     |   - 1: Use external trigger port (EXT)                                 |
+-----+------------------------------------------------------------------------+





SetTrigInfo
+++++++++++

Argument #1 : TrigSourceChan

+-------+-------------------------+
| Value | Meaning                 |
+-------+-------------------------+
|     0 | Use CH1 as the trigger  |
|     1 | Use CH2 as the trigger  |
|     2 | Use an external trigger |
+-------+-------------------------+


Argument #2 : TrigMode

+-------+--------------------------+
| Value | Meaning                  |
+-------+--------------------------+
|     0 | No (internal) triggering |
|     1 | Regular trigger          |
|     2 | Single trigger           |
+-------+--------------------------+


Argument #3 : TrigEdgeFlag

+-------+-----------------------------------------+
| Value | Meaning                                 |
+-------+-----------------------------------------+
|     1 | Trigger is activated by a rising edge   |
|     2 | Trigger is activated by a falling edge  |
+-------+-----------------------------------------+
