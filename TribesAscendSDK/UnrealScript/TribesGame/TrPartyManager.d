module UnrealScript.TribesGame.TrPartyManager;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrPartyManager : UObject
{
public extern(D):
	@property final
	{
		@property final auto ref ScriptString InvitingPlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
		bool bCreatedParty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bCreatedParty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
final:
	bool InParty()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54628], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AmLeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54630], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59813], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetMemberCap()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59815], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetMemberCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59817], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool Kick(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59853], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SendInvite(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59878], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int GetMemberId(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59908], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	ScriptString GetMemberName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59925], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool ActiveMember(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59927], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool Leave()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100577], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AcceptInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100582], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetLeaderName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100584], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100587], cast(void*)0, cast(void*)0);
	}
	void ShowInvitation(ScriptString LeaderName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LeaderName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100588], params.ptr, cast(void*)0);
	}
	void InvitationPopup(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100590], params.ptr, cast(void*)0);
	}
	void InvitationComplete(int Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100595], params.ptr, cast(void*)0);
	}
	void OnUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100597], cast(void*)0, cast(void*)0);
	}
	void LeaveParty(bool bHandle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHandle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100598], params.ptr, cast(void*)0);
	}
}
