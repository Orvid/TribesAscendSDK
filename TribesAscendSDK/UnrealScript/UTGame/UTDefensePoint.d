module UnrealScript.UTGame.UTDefensePoint;

import ScriptClasses;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKScriptedNavigationPoint;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTDefensePoint : UDKScriptedNavigationPoint
{
public extern(D):
	enum EDefensePriority : ubyte
	{
		DEFPRI_Low = 0,
		DEFPRI_High = 1,
		DEFPRI_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			ScriptClass WeaponPreference() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 712); }
			UDKGameObjective DefendedObjective() { return *cast(UDKGameObjective*)(cast(size_t)cast(void*)this + 704); }
			ScriptName DefenseGroup() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 716); }
			UTDefensePoint NextDefensePoint() { return *cast(UTDefensePoint*)(cast(size_t)cast(void*)this + 700); }
			Controller CurrentUser() { return *cast(Controller*)(cast(size_t)cast(void*)this + 696); }
			ScriptArray!(Texture2D) TeamSprites() { return *cast(ScriptArray!(Texture2D)*)(cast(size_t)cast(void*)this + 728); }
			UTDefensePoint.EDefensePriority DefensePriority() { return *cast(UTDefensePoint.EDefensePriority*)(cast(size_t)cast(void*)this + 724); }
		}
		bool bSniping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x2) != 0; }
		bool bSniping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x2; } return val; }
		bool bFirstScript() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x1) != 0; }
		bool bFirstScript(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x1; } return val; }
		bool bOnlyOnFoot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x4) != 0; }
		bool bOnlyOnFoot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x4; } return val; }
		bool bOnlySkilled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x8) != 0; }
		bool bOnlySkilled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x8; } return val; }
	}
final:
	Actor GetMoveTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42630], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool HigherPriorityThan(UTDefensePoint S, UTBot B, bool bAutoPointsInUse, bool bPrioritizeSameGroup, int* NumChecked)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UTDefensePoint*)params.ptr = S;
		*cast(UTBot*)&params[4] = B;
		*cast(bool*)&params[8] = bAutoPointsInUse;
		*cast(bool*)&params[12] = bPrioritizeSameGroup;
		*cast(int*)&params[16] = *NumChecked;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46332], params.ptr, cast(void*)0);
		*NumChecked = *cast(int*)&params[16];
		return *cast(bool*)&params[20];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47055], cast(void*)0, cast(void*)0);
	}
	void FreePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47056], cast(void*)0, cast(void*)0);
	}
	bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47057], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47059], cast(void*)0, cast(void*)0);
	}
}
