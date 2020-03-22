Control bytes meaning
=====================


Control byte 0
++++++++++++++

This control byte is sent with `USBCtrlTrans()`, using command ID 148.

Summary table
-------------

+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Bit     |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Meaning |  ?  |  ?  |  ?  | CP1 |          SPR          |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+


CP1 - CH1 AC/DC Coupling [bit 4]
--------------------------------

+----+-------------+
|  0 | AC Coupling |
+----+-------------+
|  1 | DC Coupling |
+----+-------------+


SPR - Sample rate [bits 3-0]
----------------------------

	Set the sample rate range.
	This data seems redundant with the `setInfo()` function.

	+------+----------------+
	| 0000 | 200 MSps range |
	|      | 100 MSps range |
	+------+----------------+
	| 1000 | 625 kSps range |
	+------+----------------+
	| 1010 | 240 kSps range |
	+------+----------------+
	| 1011 |  39 kSps range |
	+------+----------------+
	| 1100 |  10 MSps range |
	+------+----------------+



Control byte 1
++++++++++++++

This control byte is sent with `USBCtrlTrans()`, using command ID 36.

Summary table
-------------

+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Bit     |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Meaning |  ?  |  ?  |  ?  | CP2 | VR1 |    VS2    | HSR |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+


CP2 - CH2 AC/DC Coupling [bit 4]
--------------------------------

+----+-------------+
|  0 | AC Coupling |
+----+-------------+
|  1 | DC Coupling |
+----+-------------+


VR1 - CH1 Voltage range select [bit 3]
--------------------------------------

	This bit changes the range of CH1 (either V or mV).
	Changing this bit affects the meaning of VS1.

	+----+------------------------------------+
	|  0 | mV ranges (50mv / 100 mV / 200 mV) |
	+----+------------------------------------+
	|  1 |  V ranges (0.5V / 1V / 2V / 5V)    |
	+----+------------------------------------+


VS2 - CH2 Voltage scale [bits 2-1]
----------------------------------

	Select the voltage scale of CH2.
	These bits' meaning depends on VR2.
	See "Control byte 2" bit 6 for details on VR2.

	+-----+--------------+
	| VR2 is cleared (0) |
	+-----+--------------+
	|  01 | 0.5 V range  |
	+-----+--------------+
	|     |   1 V range  |
	|  00 |   2 V range  |
	|     |   5 V range  |
	+-----+--------------+
	| VR2 is set (1)     |
	+-----+--------------+
	|  10 |  50 mV range |
	+-----+--------------+
	|  01 | 100 mV range |
	+-----+--------------+
	|  00 | 200 mV range |
	+-----+--------------+


HSR - High Sample Rate [bit 0]
------------------------------

	When this bit is set, the CH2 seems to be deactivated in order to let enough
	bandwidth for CH1, so 200 MSps can be reached.

	+----+------------------+
	|  0 | All other ranges |
	+----+------------------+
	|  1 | 200 MSps range   |
	+----+------------------+



Control byte 2
++++++++++++++

This control byte is sent with `USBCtrlTrans()`, using command ID 35.

.. warning::
	This byte is not marked as a "control byte" in the original software but
	many of its bits complete the same scheme as in CtrlByte0 and/or CtrlByte1.


Summary table
-------------

+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Bit     |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Meaning |  ?  | VR2 |  ?  |  ?  |  ?  |  ?  |  ?  |  ?  |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+


VR2 - CH2 Voltage range select [bit 6]
--------------------------------------

	This bit changes the range of CH2 (either V or mV).
	Changing this bit affects the meaning of VS2.

	+----+------------------------------------+
	|  0 |  V ranges (0.5V / 1V / 2V / 5V)    |
	+----+------------------------------------+
	|  1 | mV ranges (50mv / 100 mV / 200 mV) |
	+----+------------------------------------+



Control byte 3
++++++++++++++

This control byte is sent with `USBCtrlTrans()`, using command ID 34.

.. warning::
	This byte is not marked as a "control byte" in the original software but
	many of its bits complete the same scheme as in CtrlByte0 and/or CtrlByte1.


Summary table
-------------

+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Bit     |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+
| Meaning |  ?  |  ?  |  ?  |  ?  |  ?  |    VR1    |  ?  |
+---------+-----+-----+-----+-----+-----+-----+-----+-----+


VS1 - CH1 Voltage scale [bits 2-1]
-----------------------------------

	Select the voltage scale of CH1.
	These bits' meaning depends on VR1.
	See "Control byte 1" bit 3 for details on VR1.

	+-----+--------------+
	| VR1 is cleared (0) |
	+-----+--------------+
	|  10 |  50 mV range |
	+-----+--------------+
	|  01 | 100 mV range |
	+-----+--------------+
	|  00 | 200 mV range |
	+-----+--------------+
	| VR1 is set (1)     |
	+-----+--------------+
	|  01 | 0.5 V range  |
	+-----+--------------+
	|     |   1 V range  |
	|  00 |   2 V range  |
	|     |   5 V range  |
	+-----+--------------+
