module UnrealScript.TribesGame.TrStormControlPoint;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrInventoryStation_Storm;

extern(C++) interface TrStormControlPoint : TrGameObjective
{
public extern(D):
	enum ControlPointState : ubyte
	{
		ControlPointState_Neutral = 0,
		ControlPointState_FullyOwnedBE = 1,
		ControlPointState_FullyOwnedDS = 2,
		ControlPointState_TransitioningToBE = 3,
		ControlPointState_TransitioningToDS = 4,
		ControlPointState_MAX = 5,
	}
	@property final auto ref
	{
		ScriptArray!(TrInventoryStation_Storm) m_InventoryStations() { return *cast(ScriptArray!(TrInventoryStation_Storm)*)(cast(size_t)cast(void*)this + 1392); }
		ScriptString m_sControlPointName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1404); }
		float m_fLaunchTimeDescriptionPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
		float m_fControlDescriptionPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
		float m_fMissileFlightTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1380); }
		float m_fMissileLaunchTrackerSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
		float m_fMissileLaunchTracker() { return *cast(float*)(cast(size_t)cast(void*)this + 1372); }
		float m_fCurrentTransitionAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 1368); }
		float m_fTransitionSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
		TrStormControlPoint.ControlPointState r_CurrentControlPointState() { return *cast(TrStormControlPoint.ControlPointState*)(cast(size_t)cast(void*)this + 1360); }
	}
final:
	void OnPawnTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112762], params.ptr, cast(void*)0);
	}
	TrStormControlPoint.ControlPointState GetControlPointState()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112765], params.ptr, cast(void*)0);
		return *cast(TrStormControlPoint.ControlPointState*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112767], params.ptr, cast(void*)0);
	}
	void FireMissile(ubyte TeamNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112769], params.ptr, cast(void*)0);
	}
	void BeginTransition(ubyte TeamNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112772], params.ptr, cast(void*)0);
	}
	void SetControlPointState(TrStormControlPoint.ControlPointState NewControlPointState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrStormControlPoint.ControlPointState*)params.ptr = NewControlPointState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112775], params.ptr, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112780], params.ptr, cast(void*)0);
	}
	ScriptString GetScreenName(PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112791], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
