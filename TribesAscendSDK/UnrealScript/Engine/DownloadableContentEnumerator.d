module UnrealScript.Engine.DownloadableContentEnumerator;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface DownloadableContentEnumerator : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlineContent) DLCBundles() { return *cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) FindDLCDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 84); }
		ScriptString DLCRootDir() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	}
final:
	void OnFindDLCComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14683], cast(void*)0, cast(void*)0);
	}
	void FindDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14686], cast(void*)0, cast(void*)0);
	}
	void AddFindDLCDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14687], params.ptr, cast(void*)0);
	}
	void ClearFindDLCDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14689], params.ptr, cast(void*)0);
	}
	void DeleteDLC(ScriptString DLCName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DLCName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14692], params.ptr, cast(void*)0);
	}
	void InstallAllDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14694], cast(void*)0, cast(void*)0);
	}
	void InstallDLC(ScriptString DLCName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DLCName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14698], params.ptr, cast(void*)0);
	}
	void TriggerFindDLCDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14700], cast(void*)0, cast(void*)0);
	}
}
