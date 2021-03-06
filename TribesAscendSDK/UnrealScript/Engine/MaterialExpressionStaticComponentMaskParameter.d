module UnrealScript.Engine.MaterialExpressionStaticComponentMaskParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionParameter;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionStaticComponentMaskParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionStaticComponentMaskParameter")); }
	private static __gshared MaterialExpressionStaticComponentMaskParameter mDefaultProperties;
	@property final static MaterialExpressionStaticComponentMaskParameter DefaultProperties() { mixin(MGDPC("MaterialExpressionStaticComponentMaskParameter", "MaterialExpressionStaticComponentMaskParameter Engine.Default__MaterialExpressionStaticComponentMaskParameter")); }
	@property final
	{
		auto ref
		{
			Pointer InstanceOverride() { mixin(MGPC("Pointer", 164)); }
			MaterialExpression.ExpressionInput InputVar() { mixin(MGPC("MaterialExpression.ExpressionInput", 132)); }
		}
		bool DefaultA() { mixin(MGBPC(160, 0x8)); }
		bool DefaultA(bool val) { mixin(MSBPC(160, 0x8)); }
		bool DefaultB() { mixin(MGBPC(160, 0x4)); }
		bool DefaultB(bool val) { mixin(MSBPC(160, 0x4)); }
		bool DefaultG() { mixin(MGBPC(160, 0x2)); }
		bool DefaultG(bool val) { mixin(MSBPC(160, 0x2)); }
		bool DefaultR() { mixin(MGBPC(160, 0x1)); }
		bool DefaultR(bool val) { mixin(MSBPC(160, 0x1)); }
	}
}
