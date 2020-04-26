private int m_DutyPWM = 50;

private int m_SignalOutFlg;

private ulong m_FreOut  = 50000uL;
private ulong m_FreOutPWM = 500uL;

private ulong m_LowFreq; // == Zero, I guess?
private ulong m_HighFreq = 1000000uL;

private ulong m_TimeSpan = 500uL;
private ulong m_FreqSpan = 1000uL;



private void PWM_caculation(double DutyPWM, ulong FreOutPWM)
{
	FreOutPWM += 1uL;                   // Increase by 1 to avoid div by 0
	ulong num = 12000000uL / FreOutPWM; // 12MHz / wanted freq
	if (num > 65500uL) num = 65500uL;   // Saturate @ 65500

	// Convert x to double (why double cast?)
	double x = (double) ((int)num);

	// Time (amount of ticks) high
	int time_high = 65535 - (int) (x * DutyPWM / 100.0);
	ushort usValue  = (ushort) ((time_high & 65280) >> 8); // high 8 bits (=0?)
	ushort usValue2 = (ushort)  (time_high & 255);         // Low 8 bits

	// Time (amount of ticks) low
	int time_low = 65535 - (int)(x * (100.0 - DutyPWM) / 100.0);
	ushort usValue3 = (ushort) ((time_low & 65280) >> 8); // high 8 bits (=0?)
	ushort usValue4 = (ushort)  (time_low & 255);         // Low 8 bits

	// Send data to device
	USBCtrlTrans(118, usValue3, 1u);
	USBCtrlTrans(119, usValue4, 1u);
	USBCtrlTrans(120, usValue,  1u);
	USBCtrlTrans(121, usValue2, 1u);
}

private void Offset_caculation(double DutyPWM, ulong FreOutPWM)
{
	FreOutPWM += 1uL;                   // Increase by 1 to avoid div by 0
	ulong num = 12000000uL / FreOutPWM; // 12MHz / wanted_freq
	if (num > 65500uL) num = 65500uL;   // Saturate @ 65500

	// Convert x to double (why double cast?)
	double x = (double) ((int)num);

	// Time (amount of ticks) high
	int time_high = 65535 - (int) (x * DutyPWM / 100.0);
	ushort usValue  = (ushort) ((time_high & 65280) >> 8); // high 8 bits
	ushort usValue2 = (ushort)  (time_high & 255);         // Low 8 bits

	// Time (amount of ticks) low
	int time_low = 65535 - (int)(x * (100.0 - DutyPWM) / 100.0);
	ushort usValue3 = (ushort) ((time_low & 65280) >> 8); // high 8 bits
	ushort usValue4 = (ushort)  (time_low & 255);         // Low 8 bits

	// Send data to device
	USBCtrlTrans(122, usValue3, 1u);
	USBCtrlTrans(123, usValue4, 1u);
	USBCtrlTrans(124, usValue,  1u);
	USBCtrlTrans(125, usValue2, 1u);
}
