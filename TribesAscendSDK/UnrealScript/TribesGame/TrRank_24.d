module UnrealScript.TribesGame.TrRank_24;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_24 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_24")); }
	private static __gshared TrRank_24 mDefaultProperties;
	@property final static TrRank_24 DefaultProperties() { mixin(MGDPC("TrRank_24", "TrRank_24 TribesGame.Default__TrRank_24")); }
}
