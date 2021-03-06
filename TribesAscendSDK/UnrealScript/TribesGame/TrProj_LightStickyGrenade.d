module UnrealScript.TribesGame.TrProj_LightStickyGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_LightStickyGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_LightStickyGrenade")); }
	private static __gshared TrProj_LightStickyGrenade mDefaultProperties;
	@property final static TrProj_LightStickyGrenade DefaultProperties() { mixin(MGDPC("TrProj_LightStickyGrenade", "TrProj_LightStickyGrenade TribesGame.Default__TrProj_LightStickyGrenade")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mHitWall;
			ScriptFunction mProcessTouch;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrProj_LightStickyGrenade.PostBeginPlay")); }
			ScriptFunction HitWall() { mixin(MGF("mHitWall", "Function TribesGame.TrProj_LightStickyGrenade.HitWall")); }
			ScriptFunction ProcessTouch() { mixin(MGF("mProcessTouch", "Function TribesGame.TrProj_LightStickyGrenade.ProcessTouch")); }
		}
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
}
