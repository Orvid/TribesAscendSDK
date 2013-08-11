module UnrealScript.UTGame.UTSeqAct_AIFreeze;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_AIFreeze : SequenceAction
{
public extern(D):
	@property final
	{
		bool bAllowWeaponFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bAllowWeaponFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
