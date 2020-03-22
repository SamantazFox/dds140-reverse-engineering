List of commands sent by host software
======================================

Those commands are sent using either the `USBCtrlTrans` or `USBCtrlTransSimple`
functions found in the DLL.


`USBCtrlTrans` takes 3 arguments: a "Request" code (byte), a value (ushort) and
a buffer size (uint), at it seems it can return data in an array-ish form.
A return code is also provided (byte).

`USBCtrlTransSimple` takes only one argument, the "request code", and returns a
status code (int).


Below are listed the request codes and their meaning, as far as I could
understand this software (trus me, some stuff is completely WTF!).

It seems that, for many request codes, the "value" argument provides a sub-code.


Notice
------

The request codes and alues are noted either in hexadecimal (form `<hex data>h`)
or in decimal (`<value>u` if unsigned, `<value>` if signed).


Notes on "control bytes"
------------------------

The "control bytes" are



Oscilloscope Codes
++++++++++++++++++

Time ranges
-----------

In the UI
`````````

The values below are extracted from the program itself. they mostly represent UI
elements proporties, but are needed to understand the codes later on.

The `freq` and `pixar` values comes from the C# source.
See program reversing for more details (more specifically `time_list.cs` and
`time_event_handle.cs`).


.. code::
	+---------+------+-----+------+---------+
	|  Range  | Knob | Idx | Freq | Pixar   |
	+---------+------+-----+------+---------+
	|   25 ns |   9u |  2u | 200M |    0.08 |
	|   50 ns |   9u |  1u | 200M |    0.16 |
	|  125 ns |   9u |  0u | 200M |    0.4  |
	+---------+------+-----+------+---------+
	| 0.25 us |   0u |   - | 100M |    0.4  |
	|  0.5 us |   1u |   - | 100M |    0.8  |
	|    1 us |   2u |   - | 100M |    1.6  |
	|  2.5 us |   3u |   - | 100M |    4.0  |
	|   10 us |   4u |   - | 100M |   16.0  |
	+---------+------+-----+------+---------+
	|   25 us |   5u |   - |  10M |    5.0  |
	|  0.1 ms |   6u |   - |  10M |   20.0  |
	|  0.2 ms |   7u |   - |  10M |   40.0  |
	+---------+------+-----+------+---------+
	|    1 ms |   8u |  0u | 625k |   12.5  |
	|    2 ms |   8u |  1u | 625k |   25.0  |
	+---------+------+-----+------+---------+
	|    5 ms |   8u |  2u |  39k |    4.0  |
	|   10 ms |   8u |  3u |  39k |    8.0  |
	|   20 ms |   8u |  4u |  39k |   16.0  |
	|   50 ms |   8u |  5u |  39k |   39.0  |
	|  100 ms |   8u |  6u |  39k |   80.0  |
	+---------+------+-----+------+---------+
	|  200 ms |   8u |  7u | 240k |  960.0  |
	|  500 ms |   8u |  8u | 240k | 2400.0  |
	|    1 s  |   8u |  9u | 240k | 4800.0  |
	+---------+------+-----+------+---------+


NB: Those "frequencies" are definitively in kS/s or MS/s (kilo/mega samples per
second) and not in kHz/MHz.

NB2: ranges values are exactly as in the software. I know that some ranges (e.g
the "0.25 us" one) could have been written in a better way (e.g "250 ns").

NB3: I also know that there is an issue with the 39k/240k frequencies. Fun fact,
I think that this is responsible for the original software's bug in the
200ms, 500ms ans 1s ranges, where the UI just crashes because there's too many
points to render.


Programatically
```````````````

+------------+-------------+-------------------------+--------------------------+
| SampleRate | CurrentFreq | Control byte operations | Stable enable            |
+------------+-------------+-------------------------+--------------------------+
|      "39K" |        39.0 | g_CtrlByte0 &= 240;     | SetStableEnableOrNot(0u) |
|            |             | g_CtrlByte0 |= 11;      |                          |
+------------+-------------+-------------------------+--------------------------+
|     "240K" |       240.0 | g_CtrlByte0 &= 240;     | SetStableEnableOrNot(0u) |
|            |             | g_CtrlByte0 |= 10;      |                          |
+------------+-------------+-------------------------+--------------------------+
|     "625K" |       625.0 | g_CtrlByte0 &= 240;     | SetStableEnableOrNot(1u) |
|            |             | g_CtrlByte0 |= 8;       |                          |
+------------+-------------+-------------------------+--------------------------+
|      "10M" |     10000.0 | g_CtrlByte0 &= 240;     | SetStableEnableOrNot(1u) |
|            |             | g_CtrlByte0 |= 12;      |                          |
+------------+-------------+-------------------------+--------------------------+
|     "100M" |     80000.0 | g_CtrlByte0 &= 240;     | SetStableEnableOrNot(1u) |
+------------+-------------+-------------------------+--------------------------+
|     "200M" |    160000.0 | g_CtrlByte0 &= 240;     | SetStableEnableOrNot(1u) |
+------------+-------------+-------------------------+--------------------------+

Note 1: The `SampleRate` is the UI displayed data, where `CurrentFreq` is the
actual number sent to the device.

Note 2: The SetStableEnableOrNot() function seems to be here to tell the device
if the requested sample rate is stable, i.e that it corresponds to a multiple of
it's internal crystal frequency.

Note 3: It seems that the HW is quite more limited than advertized, as the
"CurrentFreq" parameter for the 100M and 200M ranges does not correspond.
Some tests has to be done here.

Note 4: Some other ranges may be supported (theorically, any) but this
hypothesis needs more to be verified.

Note 5: The following operations on "control bytes" have to be done:
 * When knob position is "9u" (200M range):
 	.. code::
 		g_CtrlByte1 &= 254;
 		g_CtrlByte1 |= 1;

 * In all other positions/ranges:
 	.. code::
 		g_CtrlByte1 &= 254;


In order to update the time range, the following has to be done:

.. code::
	USBCtrlTrans( 36, (ushort) g_CtrlByte1, 1u);
	USBCtrlTrans(148, (ushort) g_CtrlByte0, 1u);



Channel 1 (id 0 in software)
----------------------------

It seems that the 1V, 2V and 5V channels have no differences. Wut?


Voltage ranges
``````````````

+---------+------+-------------------------+---------------------------------------------+
|  Range  | Knob | Control byte operations | USB commands                                |
+---------+------+-------------------------+---------------------------------------------+
|   50 mV |   5u | (1) g_CtrlByte1 &= 247; | USBCtrlTrans(34, 4, 1u);                    |
|         |      |                         | USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u); |
+---------+------+-------------------------+---------------------------------------------+
|  100 mV |   4u | (1) g_CtrlByte1 &= 247; | USBCtrlTrans(34, 2, 1u);                    |
|         |      |                         | USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u); |
+---------+------+-------------------------+---------------------------------------------+
|  200 mV |   3u | (1) g_CtrlByte1 &= 247; | USBCtrlTrans(34, 0, 1u);                    |
|         |      |                         | USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u); |
+---------+------+-------------------------+---------------------------------------------+
|   0.5 V |   2u | (1) g_CtrlByte1 &= 247; | USBCtrlTrans(34, 2, 1u);                    |
|         |      | (2) g_CtrlByte1 |= 8;   | USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u); |
+---------+------+-------------------------+---------------------------------------------+
|     1 V |   1u | (1) g_CtrlByte1 &= 247; | USBCtrlTrans(34, 0, 1u);                    |
|         |      | (2) g_CtrlByte1 |= 8;   | USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u); |
+---------+------+-------------------------+---------------------------------------------+
|     2 V |   0u | (1) g_CtrlByte1 &= 247; | USBCtrlTrans(34, 0, 1u);                    |
|         |      | (2) g_CtrlByte1 |= 8;   | USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u); |
+---------+------+-------------------------+---------------------------------------------+
|     5 V |   9u | (1) g_CtrlByte1 &= 247; | USBCtrlTrans(34, 0, 1u);                    |
|         |      | (2) g_CtrlByte1 |= 8;   | USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u); |
+---------+------+-------------------------+---------------------------------------------+



Vbias (?????)
`````````````

.. code::
	// Get Vbias zero for channel 0 (CH1)
	//
	Vbias_Zero_ch0_1v    = USBCtrlTrans(144,  1, 1u);
	Vbias_Zero_ch0_500mv = USBCtrlTrans(144, 14, 1u);
	Vbias_Zero_ch0_100mv = USBCtrlTrans(144, 18, 1u);
	Vbias_Zero_ch0_050mv = USBCtrlTrans(144, 16, 1u);

.. code::
	// Get Vbias scale for channel 0 (CH1)
	//
	Vbias_Scale_ch0_1V    = (double) ((float) USBCtrlTrans(144,  3, 1u) * 2f / 255f );
	Vbias_Scale_ch0_200mV = (double) ((float) USBCtrlTrans(144,  6, 1u) * 2f / 255f );
	Vbias_Scale_ch0_500mV = (double) ((float) USBCtrlTrans(144,  8, 1u) * 2f / 255f );
	Vbias_Scale_ch0_100mV = (double) ((float) USBCtrlTrans(144,  9, 1u) * 2f / 255f );
	Vbias_Scale_ch0_50mV  = (double) ((float) USBCtrlTrans(144, 10, 1u) * 2f / 255f );



AC/DC coupling
``````````````

Switch to DC coupling:

.. code::
	g_CtrlByte0 &= 239;
	g_CtrlByte0 |= 16;

Switch to AC coupling:

.. code::
	g_CtrlByte0 &= 239;



Channel 2 (id 1 in software)
----------------------------

Voltage ranges
``````````````

+---------+------+-------------------------+
|  Range  | Knob | Control byte operation  |
+---------+------+-------------------------+
|   50 mV |   5u | (1) g_CtrlByte1 &= 249; |
|         |      | (2) g_CtrlByte1 |= 4;   |
+---------+------+-------------------------+
|  100 mV |   4u | (1) g_CtrlByte1 &= 249; |
|         |      | (2) g_CtrlByte1 |= 2;   |
+---------+------+-------------------------+
|  200 mV |   3u | (1) g_CtrlByte1 &= 249; |
+---------+------+-------------------------+

NB: On CH2, for the 50mV, 100mV and 200mV ranges, the usb commands always are:

.. code::
	USBCtrlTrans(35, 64, 1u);
	USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);



+---------+------+-------------------------+
|  Range  | Knob | Control byte operation  |
+---------+------+-------------------------+
|   0.5 V |   2u | (1) g_CtrlByte1 &= 249; |
|         |      | (2) g_CtrlByte1 |= 2;   |
+---------+------+-------------------------+
|     1 V |   1u | (1) g_CtrlByte1 &= 249; |
+---------+------+-------------------------+
|     2 V |   0u | (1) g_CtrlByte1 &= 249; |
+---------+------+-------------------------+
|     5 V |   9u | (1) g_CtrlByte1 &= 249; |
+---------+------+-------------------------+

NB: On CH2, for the 0.5V, 1V, 2V and 5V ranges, the usb commands always are:

.. code::
	USBCtrlTrans(35, 0, 1u);
	USBCtrlTrans(36, (ushort) g_CtrlByte1, 1u);



Vbias (?????)
`````````````

.. code::
	// Get Vbias zero for channel 1 (CH2)
	//
	Vbias_Zero_ch1_1v    = USBCtrlTrans(144,  2, 1u);
	Vbias_Zero_ch1_500mv = USBCtrlTrans(144, 15, 1u);
	Vbias_Zero_ch1_100mv = USBCtrlTrans(144, 19, 1u);
	Vbias_Zero_ch1_050mv = USBCtrlTrans(144, 17, 1u);

.. code::
	// Get Vbias scale for channel 1 (CH2)
	//
	Vbias_Scale_ch1_1V    = (double) ((float) USBCtrlTrans(144,  4, 1u) * 2f / 255f );
	Vbias_Scale_ch1_500mV = (double) ((float) USBCtrlTrans(144, 11, 1u) * 2f / 255f );
	Vbias_Scale_ch1_200mV = (double) ((float) USBCtrlTrans(144,  7, 1u) * 2f / 255f );
	Vbias_Scale_ch1_100mV = (double) ((float) USBCtrlTrans(144, 12, 1u) * 2f / 255f );
	Vbias_Scale_ch1_050mV = (double) ((float) USBCtrlTrans(144, 13, 1u) * 2f / 255f );



AC/DC coupling
``````````````

Switch to DC coupling:

.. code::
	g_CtrlByte1 &= 239;
	g_CtrlByte1 |= 16;

Switch to AC coupling:

.. code::
	g_CtrlByte1 &= 239;



Other (???? also)
-----------------

.. code::
	m_ZrroUniInt = (int)(USBCtrlTrans(144, 5, 1u) - 128);



Signal generator Codes
++++++++++++++++++++++

Waveform select
---------------

+-----------+------------------------+------------------+
| Waveform  | USB command            | (global) g_shape |
+-----------+------------------------+------------------+
| Sinusoid  | USBCtrlTransSimple(96) | 0                |
+-----------+------------------------+------------------+
| Triangle  | USBCtrlTransSimple(97) | 1                |
+-----------+------------------------+------------------+
| Square    | USBCtrlTransSimple(98) | 2                |
+-----------+------------------------+------------------+


Logic analyzer Codes
++++++++++++++++++++
