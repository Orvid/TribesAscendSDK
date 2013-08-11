module UnrealScript.Engine.UIDataStore_StringAliasMap;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_StringBase;

extern(C++) interface UIDataStore_StringAliasMap : UIDataStore_StringBase
{
public extern(D):
	struct UIMenuInputMap
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			ScriptString MappedText() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
			ScriptName Set() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName FieldName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_StringAliasMap.UIMenuInputMap) MenuInputMapArray() { return *cast(ScriptArray!(UIDataStore_StringAliasMap.UIMenuInputMap)*)(cast(size_t)cast(void*)this + 120); }
		int PlayerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
		UObject.Map_Mirror MenuInputSets() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 132); }
	}
final:
	LocalPlayer GetPlayerOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28877], params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)params.ptr;
	}
	int FindMappingWithFieldName(ScriptString FieldName, ScriptString SetName)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = SetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28879], params.ptr, cast(void*)0);
		return *cast(int*)&params[24];
	}
	int GetStringWithFieldName(ScriptString FieldName, ScriptString* MappedString)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = *MappedString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28883], params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		return *cast(int*)&params[24];
	}
}
