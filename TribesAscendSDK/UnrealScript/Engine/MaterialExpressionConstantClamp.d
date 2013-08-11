module UnrealScript.Engine.MaterialExpressionConstantClamp;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstantClamp : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		float Max() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
		float Min() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
