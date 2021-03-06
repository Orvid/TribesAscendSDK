module UnrealScript.Helpers;

private import std.conv;

/**
 * A mixin for checking if a field is already filled, and,
 * if it isn't, find the ScriptFunction to fill it.
 */
string MGF(string fieldName, string fullName)
{
	return "return " ~ fieldName ~ " ? " ~ fieldName ~ " : (" ~ fieldName ~ ` = ScriptObject.Find!(ScriptFunction)("` ~ fullName ~ `"));`;
}

/**
 * A mixin for getting a property of a struct.
 */
string MGPS(string typeName, int offset)
{
	return "return *cast(" ~ typeName ~ "*)(cast(size_t)&this + " ~ to!string(offset) ~ ");";
}

/**
 * A mixin for getting a property of a class.
 */
string MGPC(string typeName, int offset)
{
	return "return *cast(" ~ typeName ~ "*)(cast(size_t)cast(void*)this + " ~ to!string(offset) ~ ");";
}

/**
 * A mixin for getting a bool property of a struct.
 */
string MGBPS(int offset, uint mask)
{
	return "return (*cast(uint*)(cast(size_t)&this + " ~ to!string(offset) ~ ") & " ~ to!string(mask) ~ ") != 0;";
}

/**
 * A mixin for getting a bool property of a class.
 */
string MGBPC(int offset, uint mask)
{
	return "return (*cast(uint*)(cast(size_t)cast(void*)this + " ~ to!string(offset) ~ ") & " ~ to!string(mask) ~ ") != 0;";
}

/**
 * A mixin for setting a bool property of a struct.
 */
string MSBPS(int offset, uint mask)
{
	return "if (val) { *cast(uint*)(cast(size_t)&this + " ~ to!string(offset) ~ ") |= " ~ to!string(mask) ~ "; } else { *cast(uint*)(cast(size_t)&this + " ~ to!string(offset) ~ ") &= ~" ~ to!string(mask) ~"; } return val;";
}

/**
 * A mixin for setting a bool property of a class.
 */
string MSBPC(int offset, uint mask)
{
	return "if (val) { *cast(uint*)(cast(size_t)cast(void*)this + " ~ to!string(offset) ~ ") |= " ~ to!string(mask) ~ "; } else { *cast(uint*)(cast(size_t)cast(void*)this + " ~ to!string(offset) ~ ") &= ~" ~ to!string(mask) ~"; } return val;";
}

/**
 * A mixin for getting the static class of a struct.
 */
string MGSCS(string fullName)
{
	return `return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("` ~ fullName ~ `"));`;
}

/**
 * A mixin for getting the static class of a class.
 */
string MGSCC(string fullName)
{
	return `return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("` ~ fullName ~ `"));`;
}

/**
 * A mixin for getting the static class of a state.
 */
string MGSCSA(string fullName)
{
	return `return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptState)("` ~ fullName ~ `"));`;
}

/**
 * A mixin for getting the default instance of a class.
 */
string MGDPC(string className, string fullName)
{
	return `return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(` ~ className ~ `)("` ~ fullName ~ `"));`;
}
