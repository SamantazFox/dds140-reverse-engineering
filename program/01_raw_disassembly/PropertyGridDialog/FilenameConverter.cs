using System;
using System.ComponentModel;

namespace PropertyGridDialog
{
	public class FilenameConverter : StringConverter
	{
		public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
		{
			return true;
		}

		public override TypeConverter.StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
		{
			return new TypeConverter.StandardValuesCollection(new string[]
			{
				"Rectangle",
				"Hanning",
				"Hamming",
				"Blackman"
			});
		}
	}
}
