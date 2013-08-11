module UnrealScript.TribesGame.GFxTrPage_Badges;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Badges : GFxTrPage
{
	public static immutable auto STAT_GAME_MAP = 200001;
	public static immutable auto STAT_GAME_TYPE = 200002;
	public static immutable auto STAT_GAME_TIME = 200003;
	public static immutable auto STAT_GAME_OVERTIME = 200004;
	public static immutable auto STAT_GAME_WINNER = 200005;
	public static immutable auto STAT_CLASS_TYPE = 201000;
	public static immutable auto STAT_CLASS_SCORE = 201001;
	public static immutable auto STAT_CLASS_KILLS = 201002;
	public static immutable auto STAT_CLASS_DEATHS = 201003;
	public static immutable auto STAT_CLASS_ASSISTS = 201004;
	public static immutable auto STAT_CLASS_CREDITS_EARNED = 201005;
	public static immutable auto STAT_CLASS_CREDITS_SPENT = 201006;
	public static immutable auto STAT_WEAPON_TYPE = 202000;
	public static immutable auto STAT_WEAPON_DAMAGE = 202001;
	public static immutable auto STAT_WEAPON_KILLS = 202002;
	public static immutable auto STAT_WEAPON_SHOTS = 202003;
	public static immutable auto STAT_WEAPON_HITS = 202004;
	public static immutable auto STAT_WEAPON_TIME = 202005;
	public static immutable auto STAT_WEAPON_DISTANCE = 202006;
	public static immutable auto STAT_ACO_KS_FIVE = 203001;
	public static immutable auto STAT_ACO_KS_TEN = 203002;
	public static immutable auto STAT_ACO_KS_FIFTEEN = 203003;
	public static immutable auto STAT_ACO_KS_TWENTY = 203004;
	public static immutable auto STAT_ACO_KS_TWENTYFIVE = 203005;
	public static immutable auto STAT_ACO_KS_FIVE_SNIPING = 203006;
	public static immutable auto STAT_ACO_KS_TEN_SNIPING = 203007;
	public static immutable auto STAT_ACO_KS_FIFTEEN_SNIPING = 203008;
	public static immutable auto STAT_ACO_KS_FIVE_EXPLOSIVE = 203009;
	public static immutable auto STAT_ACO_KS_TEN_EXPLOSIVE = 203010;
	public static immutable auto STAT_ACO_KS_FIFTEEN_EXPLOSIVE = 203011;
	public static immutable auto STAT_ACO_KS_FIVE_SPINFUSOR = 203012;
	public static immutable auto STAT_ACO_KS_TEN_SPINFUSOR = 203013;
	public static immutable auto STAT_ACO_KS_FIFTEEN_SPINFUSOR = 203014;
	public static immutable auto STAT_ACO_MK_DOUBLE = 203015;
	public static immutable auto STAT_ACO_MK_TRIPLE = 203016;
	public static immutable auto STAT_ACO_MK_QUATRA = 203017;
	public static immutable auto STAT_ACO_MK_ULTRA = 203018;
	public static immutable auto STAT_ACO_MK_TEAM = 203019;
	public static immutable auto STAT_ACO_NOJOY = 203020;
	public static immutable auto STAT_ACO_REVENGE = 203021;
	public static immutable auto STAT_ACO_AFTERMATH = 203022;
	public static immutable auto STAT_ACO_FIRSTBLOOD = 203023;
	public static immutable auto STAT_ACO_BLUEPLATESPECIAL = 203024;
	public static immutable auto STAT_ACO_STICKYKILL = 203025;
	public static immutable auto STAT_ACO_HEADSHOT = 203026;
	public static immutable auto STAT_ACO_ARTILLERYSTRIKE = 203027;
	public static immutable auto STAT_ACO_MELEE = 203028;
	public static immutable auto STAT_ACO_ROADKILL = 203029;
	public static immutable auto STAT_ACO_FLAG_CAPTURE = 203030;
	public static immutable auto STAT_ACO_FLAG_GRAB = 203031;
	public static immutable auto STAT_ACO_BK_GEN = 203032;
	public static immutable auto STAT_ACO_RABBITKILL = 203033;
	public static immutable auto STAT_ACO_KILLASRABBIT = 203034;
	public static immutable auto STAT_ACO_FINALBLOW = 203035;
	public static immutable auto STAT_ACO_REPAIR = 203036;
	public static immutable auto STAT_ACO_BK_TURRET = 203037;
	public static immutable auto STAT_ACO_ASSIST = 203039;
	public static immutable auto STAT_ACO_FLAG_RETURN = 203040;
	public static immutable auto STAT_ACO_BK_RADAR = 203041;
	public static immutable auto STAT_ACO_FLAG_ASSIST = 203042;
	public static immutable auto STAT_ACO_AIRMAIL = 203043;
	public static immutable auto STAT_ACO_GAME_COMPLETE = 203044;
	public static immutable auto STAT_ACO_GAME_WINNER = 203045;
	public static immutable auto STAT_ACO_FLAG_GRABDM = 203046;
	public static immutable auto STAT_ACO_FLAG_HOLDER = 203047;
	public static immutable auto STAT_ACO_FLAG_KILLER = 203048;
	public static immutable auto STAT_ACO_FLAG_GRABFAST = 203049;
	public static immutable auto STAT_ACO_DEFENSE_GEN = 203050;
	public static immutable auto STAT_ACO_DEFENSE_FLAG = 203051;
	public static immutable auto STAT_ACO_VD_BIKE = 203052;
	public static immutable auto STAT_ACO_VD_TANK = 203053;
	public static immutable auto STAT_ACO_VD_SHRIKE = 203054;
	public static immutable auto STAT_ACO_FLAG_GRABE = 203055;
	public static immutable auto STAT_ACO_FLAG_GRABLLAMA = 203056;
	public static immutable auto STAT_ACO_ASSIST_VEHICLE = 203057;
	public static immutable auto STAT_ACO_FLAG_GRABULTRA = 203058;
	public static immutable auto STAT_ACO_BENCHEM = 203059;
	public static immutable auto STAT_ACO_DOUBLEDOWN = 203060;
	public static immutable auto STAT_ACO_LASTMANSTANDING = 203061;
	public static immutable auto STAT_ACO_MIRACLE = 203062;
	public static immutable auto STAT_ACO_NOTAMONGEQUALS = 203063;
	public static immutable auto STAT_ACO_ONEMANARMY = 203064;
	public static immutable auto STAT_ACO_TRIBALHONOR = 203065;
	public static immutable auto STAT_ACO_UNITEDWESTAND = 203066;
	public static immutable auto STAT_ACO_HOLDTHELINE = 203067;
	public static immutable auto STAT_ACO_CAPTUREANDHOLD = 203068;
	public static immutable auto STAT_ACO_BASEASSIST = 203069;
	public static immutable auto STAT_ACO_TURRETASSIST = 203070;
	public static immutable auto STAT_ACO_HOTAIR = 203071;
	public static immutable auto ACT_ACO_KS_FIVE = 56;
	public static immutable auto ACT_ACO_KS_TEN = 63;
	public static immutable auto ACT_ACO_KS_FIFTEEN = 55;
	public static immutable auto ACT_ACO_KS_TWENTY = 64;
	public static immutable auto ACT_ACO_KS_TWENTYFIVE = 65;
	public static immutable auto ACT_ACO_KS_FIVE_SNIPING = 58;
	public static immutable auto ACT_ACO_KS_TEN_SNIPING = 59;
	public static immutable auto ACT_ACO_KS_FIFTEEN_SNIPING = 57;
	public static immutable auto ACT_ACO_KS_FIVE_EXPLOSIVE = 53;
	public static immutable auto ACT_ACO_KS_TEN_EXPLOSIVE = 54;
	public static immutable auto ACT_ACO_KS_FIFTEEN_EXPLOSIVE = 52;
	public static immutable auto ACT_ACO_KS_FIVE_SPINFUSOR = 61;
	public static immutable auto ACT_ACO_KS_TEN_SPINFUSOR = 62;
	public static immutable auto ACT_ACO_KS_FIFTEEN_SPINFUSOR = 60;
	public static immutable auto ACT_ACO_MK_DOUBLE = 66;
	public static immutable auto ACT_ACO_MK_TRIPLE = 67;
	public static immutable auto ACT_ACO_MK_QUATRA = 68;
	public static immutable auto ACT_ACO_MK_ULTRA = 69;
	public static immutable auto ACT_ACO_MK_TEAM = 70;
	public static immutable auto ACT_ACO_NOJOY = 89;
	public static immutable auto ACT_ACO_REVENGE = 90;
	public static immutable auto ACT_ACO_AFTERMATH = 73;
	public static immutable auto ACT_ACO_FIRSTBLOOD = 78;
	public static immutable auto ACT_ACO_BLUEPLATESPECIAL = 29;
	public static immutable auto ACT_ACO_STICKYKILL = 92;
	public static immutable auto ACT_ACO_HEADSHOT = 84;
	public static immutable auto ACT_ACO_ARTILLERYSTRIKE = 75;
	public static immutable auto ACT_ACO_MELEE = 88;
	public static immutable auto ACT_ACO_ROADKILL = 91;
	public static immutable auto ACT_ACO_FLAG_CAPTURE = 42;
	public static immutable auto ACT_ACO_FLAG_GRAB = 80;
	public static immutable auto ACT_ACO_BK_GEN = 48;
	public static immutable auto ACT_ACO_RABBITKILL = 72;
	public static immutable auto ACT_ACO_KILLASRABBIT = 71;
	public static immutable auto ACT_ACO_FINALBLOW = 49;
	public static immutable auto ACT_ACO_REPAIR = 39;
	public static immutable auto ACT_ACO_BK_TURRET = 40;
	public static immutable auto ACT_ACO_ASSIST = 76;
	public static immutable auto ACT_ACO_FLAG_RETURN = 46;
	public static immutable auto ACT_ACO_BK_RADAR = 38;
	public static immutable auto ACT_ACO_FLAG_ASSIST = 41;
	public static immutable auto ACT_ACO_AIRMAIL = 74;
	public static immutable auto ACT_ACO_GAME_COMPLETE = 82;
	public static immutable auto ACT_ACO_GAME_WINNER = 83;
	public static immutable auto ACT_ACO_FLAG_HOLDER = 51;
	public static immutable auto ACT_ACO_FLAG_KILLER = 81;
	public static immutable auto ACT_ACO_FLAG_GRABFAST = 77;
	public static immutable auto ACT_ACO_DEFENSE_GEN = 47;
	public static immutable auto ACT_ACO_DEFENSE_FLAG = 79;
	public static immutable auto ACT_ACO_VD_BIKE = 87;
	public static immutable auto ACT_ACO_VD_TANK = 85;
	public static immutable auto ACT_ACO_VD_SHRIKE = 86;
	public static immutable auto ACT_ACO_FLAG_GRABE = 44;
	public static immutable auto ACT_ACO_FLAG_GRABLLAMA = 45;
	public static immutable auto ACT_ACO_ASSIST_VEHICLE = 94;
	public static immutable auto ACT_ACO_FLAG_GRABULTRA = 93;
	public static immutable auto ACT_ACO_BENCHEM = 30;
	public static immutable auto ACT_ACO_DOUBLEDOWN = 31;
	public static immutable auto ACT_ACO_LASTMANSTANDING = 32;
	public static immutable auto ACT_ACO_MIRACLE = 33;
	public static immutable auto ACT_ACO_NOTAMONGEQUALS = 34;
	public static immutable auto ACT_ACO_ONEMANARMY = 35;
	public static immutable auto ACT_ACO_TRIBALHONOR = 36;
	public static immutable auto ACT_ACO_UNITEDWESTAND = 37;
	public static immutable auto ACT_ACO_HOLDTHELINE = 117;
	public static immutable auto ACT_ACO_CAPTUREANDHOLD = 118;
	public static immutable auto ACT_ACO_BASEASSIST = 121;
	public static immutable auto ACT_ACO_TURRETASSIST = 122;
	public static immutable auto ACT_ACO_HOTAIR = 123;
	public static immutable auto ACO_TYPE_GENERAL = 0;
	public static immutable auto ACO_TYPE_COMBAT = 1;
	public static immutable auto ACO_TYPE_FLAG = 2;
	public static immutable auto ACO_TYPE_OBJECTIVE = 3;
	public static immutable auto ACO_TYPE_SPREES = 4;
	public static immutable auto ACO_TYPE_MULTIKILL = 5;
	public static immutable auto ACO_TYPE_ARENA = 6;
	public static immutable auto STAT_ACOW_KS_FIVE = 5;
	public static immutable auto STAT_ACOW_KS_TEN = 12;
	public static immutable auto STAT_ACOW_KS_FIFTEEN = 20;
	public static immutable auto STAT_ACOW_KS_TWENTY = 40;
	public static immutable auto STAT_ACOW_KS_TWENTYFIVE = 100;
	public static immutable auto STAT_ACOW_KS_FIVE_SNIPING = 5;
	public static immutable auto STAT_ACOW_KS_TEN_SNIPING = 12;
	public static immutable auto STAT_ACOW_KS_FIFTEEN_SNIPING = 20;
	public static immutable auto STAT_ACOW_KS_FIVE_EXPLOSIVE = 5;
	public static immutable auto STAT_ACOW_KS_TEN_EXPLOSIVE = 12;
	public static immutable auto STAT_ACOW_KS_FIFTEEN_EXPLOSIVE = 20;
	public static immutable auto STAT_ACOW_KS_FIVE_SPINFUSOR = 5;
	public static immutable auto STAT_ACOW_KS_TEN_SPINFUSOR = 12;
	public static immutable auto STAT_ACOW_KS_FIFTEEN_SPINFUSOR = 20;
	public static immutable auto STAT_ACOW_MK_DOUBLE = 6;
	public static immutable auto STAT_ACOW_MK_TRIPLE = 20;
	public static immutable auto STAT_ACOW_MK_QUATRA = 50;
	public static immutable auto STAT_ACOW_MK_ULTRA = 75;
	public static immutable auto STAT_ACOW_MK_TEAM = 100;
	public static immutable auto STAT_ACOW_NOJOY = 3;
	public static immutable auto STAT_ACOW_REVENGE = 1;
	public static immutable auto STAT_ACOW_AFTERMATH = 1;
	public static immutable auto STAT_ACOW_FIRSTBLOOD = 1;
	public static immutable auto STAT_ACOW_BLUEPLATESPECIAL = 6;
	public static immutable auto STAT_ACOW_STICKYKILL = 1;
	public static immutable auto STAT_ACOW_HEADSHOT = 1;
	public static immutable auto STAT_ACOW_ARTILLERYSTRIKE = 3;
	public static immutable auto STAT_ACOW_MELEE = 1;
	public static immutable auto STAT_ACOW_ROADKILL = 1;
	public static immutable auto STAT_ACOW_FLAG_CAPTURE = 30;
	public static immutable auto STAT_ACOW_FLAG_GRAB = 1;
	public static immutable auto STAT_ACOW_BK_GEN = 2;
	public static immutable auto STAT_ACOW_RABBITKILL = 1;
	public static immutable auto STAT_ACOW_KILLASRABBIT = 1;
	public static immutable auto STAT_ACOW_FINALBLOW = 4;
	public static immutable auto STAT_ACOW_REPAIR = 1;
	public static immutable auto STAT_ACOW_BK_TURRET = 1;
	public static immutable auto STAT_ACOW_ASSIST = 1;
	public static immutable auto STAT_ACOW_FLAG_RETURN = 1;
	public static immutable auto STAT_ACOW_BK_RADAR = 1;
	public static immutable auto STAT_ACOW_FLAG_ASSIST = 1;
	public static immutable auto STAT_ACOW_AIRMAIL = 6;
	public static immutable auto STAT_ACOW_HOTAIR = 3;
	public static immutable auto STAT_ACOW_GAME_COMPLETE = 1;
	public static immutable auto STAT_ACOW_GAME_WINNER = 1;
	public static immutable auto STAT_ACOW_FLAG_GRABDM = 1;
	public static immutable auto STAT_ACOW_FLAG_HOLDER = 1;
	public static immutable auto STAT_ACOW_FLAG_KILLER = 3;
	public static immutable auto STAT_ACOW_FLAG_GRABFAST = 1;
	public static immutable auto STAT_ACOW_DEFENSE_GEN = 1;
	public static immutable auto STAT_ACOW_DEFENSE_FLAG = 1;
	public static immutable auto STAT_ACOW_VD_BIKE = 2;
	public static immutable auto STAT_ACOW_VD_TANK = 2;
	public static immutable auto STAT_ACOW_VD_SHRIKE = 2;
	public static immutable auto STAT_ACOW_FLAG_GRABE = 5;
	public static immutable auto STAT_ACOW_FLAG_GRABLLAMA = 1;
	public static immutable auto STAT_ACOW_ASSIST_VEHICLE = 1;
	public static immutable auto STAT_ACOW_FLAG_GRABULTRA = 2;
	public static immutable auto STAT_ACOW_BASEASSIST = 1;
	public static immutable auto STAT_ACOW_TURRETASSIST = 1;
	public static immutable auto STAT_AWD_CREDITS_EARNED = 204001;
	public static immutable auto STAT_AWD_CREDITS_SPENT = 204002;
	public static immutable auto STAT_AWD_DESTRUCTION_DEPLOYABLE = 204003;
	public static immutable auto STAT_AWD_DESTRUCTION_VEHICLE = 204004;
	public static immutable auto STAT_AWD_DISTANCE_HEADSHOT = 204005;
	public static immutable auto STAT_AWD_DISTANCE_KILL = 204006;
	public static immutable auto STAT_AWD_DISTANCE_SKIED = 204007;
	public static immutable auto STAT_AWD_KILLS = 204008;
	public static immutable auto STAT_AWD_KILLS_DEPLOYABLE = 204009;
	public static immutable auto STAT_AWD_KILLS_MIDAIR = 204010;
	public static immutable auto STAT_AWD_KILLS_VEHICLE = 204011;
	public static immutable auto STAT_AWD_REPAIRS = 204012;
	public static immutable auto STAT_AWD_SPEED_FLAGCAP = 204013;
	public static immutable auto STAT_AWD_SPEED_FLAGGRAB = 204014;
	public static immutable auto STAT_AWD_SPEED_SKIED = 204015;
	public static immutable auto STAT_AWD_FLAG_RETURNS = 204016;
	public static immutable auto STAT_AWD_DEATHS = 204017;
	public static immutable auto STAT_AWDW_CREDITS_EARNED = 98;
	public static immutable auto STAT_AWDW_CREDITS_SPENT = 89;
	public static immutable auto STAT_AWDW_DESTRUCTION_DEPLOYABLE = 84;
	public static immutable auto STAT_AWDW_DESTRUCTION_VEHICLE = 88;
	public static immutable auto STAT_AWDW_DISTANCE_HEADSHOT = 87;
	public static immutable auto STAT_AWDW_DISTANCE_KILL = 93;
	public static immutable auto STAT_AWDW_DISTANCE_SKIED = 90;
	public static immutable auto STAT_AWDW_KILLS = 86;
	public static immutable auto STAT_AWDW_KILLS_DEPLOYABLE = 92;
	public static immutable auto STAT_AWDW_KILLS_MIDAIR = 94;
	public static immutable auto STAT_AWDW_KILLS_VEHICLE = 81;
	public static immutable auto STAT_AWDW_REPAIRS = 96;
	public static immutable auto STAT_AWDW_SPEED_FLAGCAP = -100;
	public static immutable auto STAT_AWDW_SPEED_FLAGGRAB = 97;
	public static immutable auto STAT_AWDW_SPEED_SKIED = 95;
	public static immutable auto STAT_AWDW_FLAG_RETURNS = 85;
	public static immutable auto STAT_AWDW_DEATHS = 1;
	public static immutable auto MIN_CREDITS_FOR_XP = 100;
	public static immutable auto FRIEND_REFERRAL_ACTIVITY = 115;
	public static immutable auto HIDDEN_IF_UNEARNED_TYPE = 10378;
	public @property final auto ref ScriptArray!(int) CombatType() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref ScriptArray!(int) ObjectiveType() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref ScriptArray!(int) VehicleType() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptArray!(int) TacticalType() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptArray!(int) SingleType() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref ScriptArray!(int) ReferralType() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref int ActiveType() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57494], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57495], params.ptr, cast(void*)0);
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57497], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57501], cast(void*)0, cast(void*)0);
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57503], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57507], params.ptr, cast(void*)0);
	}
	final GFxObject FillProfile()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57510], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	final void FillCombatType(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57515], params.ptr, cast(void*)0);
	}
	final void FillObjectiveType(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57520], params.ptr, cast(void*)0);
	}
	final void FillVehicleType(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57525], params.ptr, cast(void*)0);
	}
	final void FillTacticalType(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57530], params.ptr, cast(void*)0);
	}
	final void FillSingleType(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57535], params.ptr, cast(void*)0);
	}
	final void FillReferralType(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57540], params.ptr, cast(void*)0);
	}
	final void FillBadge(GFxObject Obj, int Count, int badgeIndex, bool bSkiBadge, bool bSingle, bool bReferralBadge)
	{
		ubyte params[24];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		*cast(int*)&params[4] = Count;
		*cast(int*)&params[8] = badgeIndex;
		*cast(bool*)&params[12] = bSkiBadge;
		*cast(bool*)&params[16] = bSingle;
		*cast(bool*)&params[20] = bReferralBadge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57546], params.ptr, cast(void*)0);
	}
	final int GetHighestBadgeIndex(int ActivityId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActivityId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57557], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int GetHighestSkiBadgeIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57564], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void ProfileUp(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57569], params.ptr, cast(void*)0);
	}
	final void ProfileDown(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57571], params.ptr, cast(void*)0);
	}
}