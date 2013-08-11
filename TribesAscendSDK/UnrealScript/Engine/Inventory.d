module UnrealScript.Engine.Inventory;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InventoryManager;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface Inventory : Actor
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptClass DroppedPickupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 536); }
			ScriptString PickupForce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 524); }
			SoundCue PickupSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 520); }
			ScriptString PickupMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
			float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			ScriptString ItemName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 484); }
			InventoryManager InvManager() { return *cast(InventoryManager*)(cast(size_t)cast(void*)this + 480); }
			// WARNING: Property 'Inventory' has the same name as a defined type!
		}
		bool bPredictRespawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x4) != 0; }
		bool bPredictRespawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x4; } return val; }
		bool bDelayedSpawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
		bool bDelayedSpawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
		bool bDropOnDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bDropOnDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	}
final:
	float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14796], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void GiveTo(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14803], params.ptr, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18783], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18785], cast(void*)0, cast(void*)0);
	}
	float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18786], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void AnnouncePickup(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18798], params.ptr, cast(void*)0);
	}
	void GivenTo(Pawn thisPawn, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = thisPawn;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18800], params.ptr, cast(void*)0);
	}
	void ClientGivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18803], params.ptr, cast(void*)0);
	}
	void ItemRemovedFromInvManager()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18806], cast(void*)0, cast(void*)0);
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18807], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18811], params.ptr, cast(void*)0);
	}
	ScriptString GetLocalString(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18815], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
