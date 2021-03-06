module UnrealScript.TribesGame.TrDevice_NovaColt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_NovaColt : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_NovaColt")); }
	private static __gshared TrDevice_NovaColt mDefaultProperties;
	@property final static TrDevice_NovaColt DefaultProperties() { mixin(MGDPC("TrDevice_NovaColt", "TrDevice_NovaColt TribesGame.Default__TrDevice_NovaColt")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldRefire;
			ScriptFunction mFireAmmunition;
			ScriptFunction mStartFire;
		}
		public @property static final
		{
			ScriptFunction ShouldRefire() { mixin(MGF("mShouldRefire", "Function TribesGame.TrDevice_NovaColt.ShouldRefire")); }
			ScriptFunction FireAmmunition() { mixin(MGF("mFireAmmunition", "Function TribesGame.TrDevice_NovaColt.FireAmmunition")); }
			ScriptFunction StartFire() { mixin(MGF("mStartFire", "Function TribesGame.TrDevice_NovaColt.StartFire")); }
		}
	}
final:
	bool ShouldRefire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRefire, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
}
