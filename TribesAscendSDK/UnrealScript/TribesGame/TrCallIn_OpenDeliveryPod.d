module UnrealScript.TribesGame.TrCallIn_OpenDeliveryPod;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface TrCallIn_OpenDeliveryPod : Actor
{
public extern(D):
	@property final auto ref
	{
		MaterialInstanceTimeVarying PodFadeMaterial() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 484); }
		float TimeToFade() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		float TimeToDelete() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74062], cast(void*)0, cast(void*)0);
	}
	void RemovePod()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74064], cast(void*)0, cast(void*)0);
	}
}
