void SATURATE_FREOUTPWM()
{
	if (this.m_FreOutPWM > globleVariables.g_FreUpperLimitPWM)
		this.m_FreOutPWM = globleVariables.g_FreUpperLimitPWM;
}

void SATURATE_FREOUT()
{
	if (this.m_FreOut > globleVariables.g_FreUpperLimit)
		this.m_FreOut = globleVariables.g_FreUpperLimit;
}



private void numclr_Click(object sender, EventArgs e)
{
	this.m_FreOut = 0uL;
	this.m_FreOutPWM = 0uL
}


// Pattern for all the numX_click() functions:
//
//  Step 1)
//    m_SignalOutFlg == 1  --> populate g_FreOutPWM
//    m_SignalOutFlg == 2  --> populate g_Freout
//
//  Step 2)
//    If the button is the first pressed, set freq to X
//    Otherwise shift nulber (mult by 10), and add X to freq
//
//  Step 3)
//    Saturate the value of (either) g_FreOutPWM or g_Freout
//
//
// Pattern for hundred_click(), K_click(), M_click() functions:
//
//    Same as above, but with 100, 1'000 and 1'000'000 respectively


private void num1_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 1uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 1uL;

		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 1uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 1uL;

		SATURATE_FREOUT();
	}
}

private void num2_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 2uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 2uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 2uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 2uL;

		SATURATE_FREOUT();
	}
}

private void num3_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 3uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 3uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 3uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 3uL;

		SATURATE_FREOUT();
	}
}

private void num4_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 4uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 4uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 4uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 4uL;

		SATURATE_FREOUT();
	}
}

private void num9_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 9uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 9uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 9uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 9uL;

		SATURATE_FREOUT();
	}
}

private void num5_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 5uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 5uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 5uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 5uL;

		SATURATE_FREOUT();
	}
}

private void num6_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 6uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 6uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 6uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 6uL;

		SATURATE_FREOUT();
	}
}

private void num7_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 7uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 7uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 7uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 7uL;

		SATURATE_FREOUT();
	}
}

private void num8_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 8uL;
		}
		else
			this.m_FreOutPWM = this.m_FreOutPWM * 10uL + 8uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 8uL;
		}
		else
			this.m_FreOut = this.m_FreOut * 10uL + 8uL;

		SATURATE_FREOUT();
	}
}

private void num0_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 0uL;
		}
		else
			this.m_FreOutPWM *= 10uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 0uL;
		}
		else
			this.m_FreOut *= 10uL;

		SATURATE_FREOUT();
	}
}






private void hundred_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 100uL;
		}
		else
			this.m_FreOutPWM *= 100uL;
		
		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 100uL;
		}
		else
			this.m_FreOut *= 100uL;

		SATURATE_FREOUT();
	}
}

private void K_Click(object sender, EventArgs e)
{
	if (this.m_SignalOutFlg == 1)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOutPWM = 1000uL;
		}
		else
			this.m_FreOutPWM *= 1000uL;

		SATURATE_FREOUTPWM();
		return;
	}
	if (this.m_SignalOutFlg == 2)
	{
		if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
		{
			globleVariables.g_DDSstate[0] = -1;
			this.m_FreOut = 1000uL;
		}
		else
			this.m_FreOut *= 1000uL;

		SATURATE_FREOUT();
	}
}

private void M_Click(object sender, EventArgs e)
{
	if (globleVariables.g_DDSstate[0] == 0 && globleVariables.g_DDSstate[1] == -1)
	{
		globleVariables.g_DDSstate[0] = -1;
		this.m_FreOut = 1000000uL;
	}
	else
	{
		this.m_FreOut *= 1000000uL;
	}

	if (this.m_SignalOutFlg == 1) { return; }
	if (this.m_SignalOutFlg == 2) { SATURATE_FREOUT(); }
}
