using System;
using System.ComponentModel;
using System.Drawing;

namespace PropertyGridDialog
{
	public class PropertyGridSet
	{
		public bool m_Ch1;

		public bool m_Ch2;

		public string name;

		public bool Ch1Value = true;

		public bool Ch2Value = true;

		public Color BackColorValue = SystemColors.Control;

		public Color Ch1WaveColorValue = SystemColors.Control;

		public Color Ch2WaveColorValue = SystemColors.Control;

		public string Ch1Frequencyvalue = "1000Hz";

		public string Ch1Amplitudevalue = "1V";

		public string Ch2Frequencyvalue = "1000Hz";

		public string Ch2Amplitudevalue = "1V";

		public string Ch1WinFunValue = "Rectangle";

		public string Ch2WinFunValue = "Rectangle";

		[Category("FFT wave Display"), Description("Set the wave  for Ch1 to Display")]
		public bool Ch1
		{
			get
			{
				if (this.m_Ch1)
				{
					this.Ch1Value = false;
					return this.Ch1Value;
				}
				return this.Ch1Value;
			}
			set
			{
				this.Ch1Value = value;
			}
		}

		[Category("FFT wave Display"), Description("Set the wave  for Ch2 to Display")]
		public bool Ch2
		{
			get
			{
				if (this.m_Ch2)
				{
					this.Ch2Value = false;
					return this.Ch2Value;
				}
				return this.Ch2Value;
			}
			set
			{
				this.Ch2Value = value;
			}
		}

		[Category("Name"), Description("Wave Name")]
		public string Name
		{
			get
			{
				return this.name;
			}
			set
			{
				this.name = value;
			}
		}

		[Category("Color Control"), Description("Set the BK color where Ch1 and Ch2 to Draw on")]
		public Color BackColor
		{
			get
			{
				return this.BackColorValue;
			}
			set
			{
				this.BackColorValue = value;
			}
		}

		[Category("Color Control"), Description("Set the wave color for Ch1")]
		public Color Ch1WaveColor
		{
			get
			{
				return this.Ch1WaveColorValue;
			}
			set
			{
				this.Ch1WaveColorValue = value;
			}
		}

		[Category("Color Control"), Description("Set the wave color for Ch2")]
		public Color Ch2WaveColor
		{
			get
			{
				return this.Ch2WaveColorValue;
			}
			set
			{
				this.Ch2WaveColorValue = value;
			}
		}

		[Category("Frequency   Amplitude"), Description("Set FFTWave's frequency")]
		public string Ch1Frequency
		{
			get
			{
				return this.Ch1Frequencyvalue;
			}
			set
			{
				this.Ch1Frequencyvalue = value;
			}
		}

		[Category("Frequency   Amplitude"), Description("Set FFTWave's frequency")]
		public string Ch2Frequency
		{
			get
			{
				return this.Ch2Frequencyvalue;
			}
			set
			{
				this.Ch2Frequencyvalue = value;
			}
		}

		[Category("Frequency   Amplitude"), Description("Set FFTWave's amplitude")]
		public string Ch1Amplitude
		{
			get
			{
				return this.Ch1Amplitudevalue;
			}
			set
			{
				this.Ch1Amplitudevalue = value;
			}
		}

		[Category("Frequency   Amplitude"), Description("Set FFTWave's amplitude")]
		public string Ch2Amplitude
		{
			get
			{
				return this.Ch2Amplitudevalue;
			}
			set
			{
				this.Ch2Amplitudevalue = value;
			}
		}

		[Category("Windows Funtion"), TypeConverter(typeof(FilenameConverter))]
		public string Ch1WindowsFuntion
		{
			get
			{
				return this.Ch1WinFunValue;
			}
			set
			{
				this.Ch1WinFunValue = value;
			}
		}

		[Category("Windows Funtion"), TypeConverter(typeof(FilenameConverter))]
		public string Ch2WindowsFuntion
		{
			get
			{
				return this.Ch2WinFunValue;
			}
			set
			{
				this.Ch2WinFunValue = value;
			}
		}
	}
}
