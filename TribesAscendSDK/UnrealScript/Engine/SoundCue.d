module UnrealScript.Engine.SoundCue;

import ScriptClasses;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Engine.FaceFXAnimSet;

extern(C++) interface SoundCue : UObject
{
public extern(D):
	struct SoundNodeEditorData
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			int NodePosY() { return *cast(int*)(cast(size_t)&this + 4); }
			int NodePosX() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptString FaceFXAnimName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		FaceFXAnimSet FaceFXAnimSetRef() { return *cast(FaceFXAnimSet*)(cast(size_t)cast(void*)this + 152); }
		ScriptString FaceFXGroupName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptName SoundGroup() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 188); }
		int CurrentPlayCount() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
		int MaxConcurrentPlayCount() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
		float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		float PitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		float VolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
		float MaxAudibleDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		SoundNode FirstNode() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 72); }
		AudioDevice.ESoundClassName SoundClassName() { return *cast(AudioDevice.ESoundClassName*)(cast(size_t)cast(void*)this + 68); }
		// WARNING: Property 'SoundClass' has the same name as a defined type!
	}
	final float GetCueDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10380], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
