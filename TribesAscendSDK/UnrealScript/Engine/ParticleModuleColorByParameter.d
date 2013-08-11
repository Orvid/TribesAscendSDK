module UnrealScript.Engine.ParticleModuleColorByParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleModuleColorBase;

extern(C++) interface ParticleModuleColorByParameter : ParticleModuleColorBase
{
public extern(D):
	@property final auto ref
	{
		UObject.Color DefaultColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 80); }
		ScriptName ColorParam() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
	}
}
