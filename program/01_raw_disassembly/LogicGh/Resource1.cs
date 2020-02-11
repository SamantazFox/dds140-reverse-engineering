using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace LogicGh
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
					ResourceManager resourceManager = new ResourceManager("WindowsApplication1.Log.Resource1", typeof(Resource1).Assembly);
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

		internal static string StringMenuZoomOut
		{
			get
			{
				return Resource1.ResourceManager.GetString("StringMenuZoomOut", Resource1.resourceCulture);
			}
		}

		internal static string TipColor
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipColor", Resource1.resourceCulture);
			}
		}

		internal static string TipFitAll
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipFitAll", Resource1.resourceCulture);
			}
		}

		internal static string TipInfo
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipInfo", Resource1.resourceCulture);
			}
		}

		internal static string TipRuler
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipRuler", Resource1.resourceCulture);
			}
		}

		internal static string TipStringLeft
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipStringLeft", Resource1.resourceCulture);
			}
		}

		internal static string TipStringRight
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipStringRight", Resource1.resourceCulture);
			}
		}

		internal static string TipStringZoomX
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipStringZoomX", Resource1.resourceCulture);
			}
		}

		internal static string TipZoom
		{
			get
			{
				return Resource1.ResourceManager.GetString("TipZoom", Resource1.resourceCulture);
			}
		}

		internal Resource1()
		{
		}
	}
}
