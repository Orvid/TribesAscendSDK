module UnrealScript.Engine.OnlineSuppliedUIInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Engine.OnlineStatsRead;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineSuppliedUIInterface : UInterface
{
public extern(D):
final:
	void OnShowOnlineStatsUIComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22903], cast(void*)0, cast(void*)0);
	}
	bool ShowOnlineStatsUI(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players, OnlineStatsRead StatsRead)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		*cast(OnlineStatsRead*)&params[12] = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22905], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
		return *cast(bool*)&params[16];
	}
	void AddShowOnlineStatsUICompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ShowOnlineStatsUICompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ShowOnlineStatsUICompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22910], params.ptr, cast(void*)0);
	}
	void ClearShowOnlineStatsUICompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ShowOnlineStatsUICompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ShowOnlineStatsUICompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22912], params.ptr, cast(void*)0);
	}
	bool ShowMatchmakingUI(ubyte SearchingPlayerNum, OnlineGameSearch SearchSettings, OnlineGameSettings GameSettings)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = SearchingPlayerNum;
		*cast(OnlineGameSearch*)&params[4] = SearchSettings;
		*cast(OnlineGameSettings*)&params[8] = GameSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22914], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
