module UnrealScript.UnrealEd.GenericBrowserType_TerrainLayer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_TerrainLayer : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_TerrainLayer")); }
	private static __gshared GenericBrowserType_TerrainLayer mDefaultProperties;
	@property final static GenericBrowserType_TerrainLayer DefaultProperties() { mixin(MGDPC("GenericBrowserType_TerrainLayer", "GenericBrowserType_TerrainLayer UnrealEd.Default__GenericBrowserType_TerrainLayer")); }
}
