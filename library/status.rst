

Functions Status
++++++++++++++++

Statuses explained:
 * `TODO `: not reformatted, not reversed
 * `FMT  `: file only reformatted, not reversed
 * `WIP  `: reversing in progress (elements may be missing)
 * `RE_OK`: fully commented .S file
 * `C_SRC`: function translated to C source (optionnal)
 * `DONE `: nothing to do
 * `???? `: To be determined


Primary (exported functions)
----------------------------

+---------+----------------------+
| Status  | Function             |
+---------+----------------------+
| WIP     | AiReadBulkData       |
| DONE    | BufferInit           |
| WIP     | DataPreDisposal      |
| FMT     | DeviceClose          |
| FMT     | DeviceOpen           |
| RE_OK   | DllMain              |
| WIP     | EventCheck           |
| WIP     | GetBuffer4Read       |
| RE_OK   | GetBuffer4Wr         |
| RE_OK   | GetData              |
| DONE    | GetHWbufferSize      |
| RE_OK   | GetInfoByte          |
| WIP     | GetInfodouble        |
| RE_OK   | GetRawData4Read      |
| RE_OK   | ResetPipe            |
| RE_OK   | SetData              |
| TODO    | SetInfo              |
| RE_OK   | SetReadEnableOrNot   |
| RE_OK   | SetStableEnableOrNot |
| RE_OK   | SetTrigInfo          |
| TODO    | TrigDataPrepare      |
| RE_OK   | USBCtrlTrans         |
| RE_OK   | USBCtrlTransSimple   |
+---------+----------------------+


Secondary (not exported)
------------------------

+---------+---------------------------+
| Status  | Function Name             |
+---------+---------------------------+
| ????    | unknown_100034a0          |
| ????    | unknown_10003540          |
| ????    | unknown_10003670          |
| RE_OK   | init_interface            |
| RE_OK   | free_interface            |
| FMT     | unknown_100038d0          |
| FMT     | unknown_1000397b          |
| FMT     | unknown_10003a09          |
| FMT     | unknown_10003a58          |
| WIP     | EH_prolog                 |
| WIP     | EH_epilog                 |
| FMT     | unknown_10005890          |
| FMT     | unknown_10005a26          |
| FMT     | unknown_10005a70          |
| ????    | unknown_10005a85          |
| RE_OK   | CorExitProcess            |
| ????    | unknown_10007080          |
| ????    | unknown_10007ea0          |
| ????    | unknown_10008210          |
| ????    | unknown_10008510          |
| ????    | unknown_100085f0          |
| ????    | unknown_10008670          |
| WIP     | test_SSE2_support         |
| WIP     | has_SSE2_support          |
| RE_OK   | save_SSE2_test_result     |
| ????    | unknown_100088a0          |
| ????    | unknown_100088a0          |
| ????    | unknown_10008a00          |
| ????    | unknown_10008a30          |
| ????    | unknown_10008a80          |
| ????    | unknown_10009210          |
| ????    | unknown_10009640          |
| FMT     | unknown_1000a200          |
| TODO    | unknown_1000a250          |
| ????    | unknown_1000c408          |
| ????    | unknown_1000c6d5          |
| ????    | unknown_1000c8d0          |
| ????    | unknown_1000cb50          |
| ????    | unknown_1000cdd0          |
| ????    | unknown_1000ce40          |
| ????    | unknown_1000cee0          |
| ????    | unknown_1000cf20          |
+---------+---------------------------+
