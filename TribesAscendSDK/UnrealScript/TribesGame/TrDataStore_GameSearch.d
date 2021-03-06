module UnrealScript.TribesGame.TrDataStore_GameSearch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDataStore_GameSearchDM;

extern(C++) interface TrDataStore_GameSearch : UTDataStore_GameSearchDM
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDataStore_GameSearch")); }
	private static __gshared TrDataStore_GameSearch mDefaultProperties;
	@property final static TrDataStore_GameSearch DefaultProperties() { mixin(MGDPC("TrDataStore_GameSearch", "TrDataStore_GameSearch TribesGame.Default__TrDataStore_GameSearch")); }
}
