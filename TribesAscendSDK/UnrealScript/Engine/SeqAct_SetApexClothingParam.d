module UnrealScript.Engine.SeqAct_SetApexClothingParam;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetApexClothingParam : SequenceAction
{
public extern(D):
	@property final
	{
		bool bEnableApexClothingSimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bEnableApexClothingSimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
