using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace storefileCtrol
{
	[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "2.0.0.0"), DebuggerNonUserCode, CompilerGenerated]
	internal class Resource1
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		internal static ResourceManager ResourceManager
		{
			get
			{
				if (object.ReferenceEquals(Resource1.resourceMan, null))
				{
					ResourceManager resourceManager = new ResourceManager("WindowsApplication1.store.Resource1", typeof(Resource1).Assembly);
					Resource1.resourceMan = resourceManager;
				}
				return Resource1.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		internal static CultureInfo Culture
		{
			get
			{
				return Resource1.resourceCulture;
			}
			set
			{
				Resource1.resourceCulture = value;
			}
		}

		internal static string StringSettingInfo
		{
			get
			{
				return Resource1.ResourceManager.GetString("StringSettingInfo", Resource1.resourceCulture);
			}
		}

		internal static string StringSettingTitle
		{
			get
			{
				return Resource1.ResourceManager.GetString("StringSettingTitle", Resource1.resourceCulture);
			}
		}

		internal static string TipRecord
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipRecord", Resource1.resourceCulture);
			}
		}

		internal static string TipReview
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipReview", Resource1.resourceCulture);
			}
		}

		internal static string TipSetting
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipSetting", Resource1.resourceCulture);
			}
		}

		internal Resource1()
		{
		}
	}
}
