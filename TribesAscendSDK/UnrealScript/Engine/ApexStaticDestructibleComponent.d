module UnrealScript.Engine.ApexStaticDestructibleComponent;

import UnrealScript.Engine.ApexStaticComponent;
import UnrealScript.Core.UObject;

extern(C++) interface ApexStaticDestructibleComponent : ApexStaticComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			UObject.Pointer ApexDestructiblePreview() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 532); }
			// WARNING: Property 'ApexDestructibleActor' has the same name as a defined type!
			float SleepDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float SleepEnergyThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
		}
		bool bIsThumbnailComponent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x1) != 0; }
		bool bIsThumbnailComponent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x1; } return val; }
	}
}
