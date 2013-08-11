module UnrealScript.Engine.SeqAct_Teleport;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Teleport : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(Volume) TeleportVolumes() { return *cast(ScriptArray!(Volume)*)(cast(size_t)cast(void*)this + 240); }
			float TeleportDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bCheckOverlap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bCheckOverlap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bUpdateRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bUpdateRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
final:
	bool ShouldTeleport(Actor TestActor, Vector TeleportLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		*cast(Vector*)&params[4] = TeleportLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4372], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25976], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
