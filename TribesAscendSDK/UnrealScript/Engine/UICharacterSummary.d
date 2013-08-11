module UnrealScript.Engine.UICharacterSummary;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UICharacterSummary : UIResourceDataProvider
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString CharacterBio() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
			ScriptString CharacterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			ScriptString ClassPathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		}
		bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28118], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
