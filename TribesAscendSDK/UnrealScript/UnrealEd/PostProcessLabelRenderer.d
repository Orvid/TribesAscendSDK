module UnrealScript.UnrealEd.PostProcessLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface PostProcessLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PostProcessLabelRenderer")); }
	private static __gshared PostProcessLabelRenderer mDefaultProperties;
	@property final static PostProcessLabelRenderer DefaultProperties() { mixin(MGDPC("PostProcessLabelRenderer", "PostProcessLabelRenderer UnrealEd.Default__PostProcessLabelRenderer")); }
}
