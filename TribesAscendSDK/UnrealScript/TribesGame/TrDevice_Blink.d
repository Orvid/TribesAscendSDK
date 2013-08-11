module UnrealScript.TribesGame.TrDevice_Blink;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_Blink : TrDevice_Pack
{
public extern(D):
	@property final auto ref
	{
		float m_fMinZImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 2180); }
		float m_fPowerPoolCost() { return *cast(float*)(cast(size_t)cast(void*)this + 2184); }
		float m_fSpeedCapThresholdStart() { return *cast(float*)(cast(size_t)cast(void*)this + 2200); }
		float m_fSpeedCapPct() { return *cast(float*)(cast(size_t)cast(void*)this + 2204); }
		float m_fSpeedCapThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2196); }
		float m_fLastActivationTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2192); }
		float m_fCooldownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
		Vector m_vBlinkImpulse() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2168); }
	}
final:
	Vector GetBlinkImpulse()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76587], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void ToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81098], cast(void*)0, cast(void*)0);
	}
	void OnBlink(float PercentEffectiveness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = PercentEffectiveness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81101], params.ptr, cast(void*)0);
	}
}
