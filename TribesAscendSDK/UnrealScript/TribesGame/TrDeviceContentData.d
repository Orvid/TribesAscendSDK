module UnrealScript.TribesGame.TrDeviceContentData;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.AnimTree;

extern(C++) interface TrDeviceContentData : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptClass m_TrDeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 88); }
		ScriptArray!(AnimSet) m_AnimSets1p() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 68); }
		AnimSet m_PaperDollAnimSet() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 84); }
		AnimTree m_AnimTreeTemplate1p() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 80); }
		PhysicsAsset m_PhysicsAsset1p() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 64); }
		SkeletalMesh m_SkeletalMesh1p() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 60); }
	}
}
