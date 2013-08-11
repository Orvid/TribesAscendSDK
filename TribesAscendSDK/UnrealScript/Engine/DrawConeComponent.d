module UnrealScript.Engine.DrawConeComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface DrawConeComponent : PrimitiveComponent
{
public extern(D):
	@property final auto ref
	{
		int ConeSides() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
		float ConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		float ConeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		UObject.Color ConeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
	}
}
