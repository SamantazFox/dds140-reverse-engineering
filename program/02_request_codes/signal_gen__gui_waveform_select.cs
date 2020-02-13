private void sin_Click(object sender, EventArgs e)
{
	if (globleVariables.g_shape != 0)
	{
		MyDLLimport.USBCtrlTransSimple(96);
		globleVariables.g_shape = 0;
	}
}

private void tri_Click(object sender, EventArgs e)
{
	if (globleVariables.g_shape != 1)
	{
		MyDLLimport.USBCtrlTransSimple(97);
		globleVariables.g_shape = 1;
	}
}

private void squ_Click(object sender, EventArgs e)
{
	if (globleVariables.g_shape != 2)
	{
		MyDLLimport.USBCtrlTransSimple(98);
		globleVariables.g_shape = 2;
	}
}
