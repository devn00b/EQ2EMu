/*  
    EQ2Emulator:  Everquest II Server Emulator
    Copyright (C) 2007  EQ2EMulator Development Team (http://www.eq2emulator.net)

    This file is part of EQ2Emulator.

    EQ2Emulator is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    EQ2Emulator is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with EQ2Emulator.  If not, see <http://www.gnu.org/licenses/>.
*/
#ifndef __EQ2_SPAWN__
#define __EQ2_SPAWN__

#include "../common/types.h"
#include "../common/EQPacket.h"
#include "../common/EQ2_Common_Structs.h"
#include "../common/MiscFunctions.h"
#include "../common/opcodemgr.h"
#include "../common/timer.h"
#include "Commands/Commands.h"
#include "Zone/position.h"
#include "SpawnLists.h"
#include <vector>
#include "../common/ConfigReader.h"
#include "Items/Items.h"
#include "Zone/map.h"
#include "Zone/region_map.h"
#include "Zone/region_map_v1.h"
#include "../common/Mutex.h"
#include "MutexList.h"
#include <deque>
#include <memory> // needed for LS to compile properly on linux
#include <mutex>

#define DAMAGE_PACKET_TYPE_SIPHON_SPELL		0x41
#define DAMAGE_PACKET_TYPE_SIPHON_SPELL2	0x49
#define DAMAGE_PACKET_TYPE_MULTIPLE_DAMAGE	0x80
#define DAMAGE_PACKET_TYPE_SIMPLE_DAMAGE	0xC0
#define DAMAGE_PACKET_TYPE_SPELL_DAMAGE		0xC1
#define DAMAGE_PACKET_TYPE_SIMPLE_CRIT_DMG	0xC4
#define DAMAGE_PACKET_TYPE_SPELL_CRIT_DMG	0xC5
#define DAMAGE_PACKET_TYPE_SPELL_DAMAGE2	0xC8
#define DAMAGE_PACKET_TYPE_SPELL_DAMAGE3	0xC9
#define DAMAGE_PACKET_TYPE_RANGE_DAMAGE		0xE2
#define DAMAGE_PACKET_TYPE_RANGE_SPELL_DMG	0xE3
#define DAMAGE_PACKET_TYPE_RANGE_SPELL_DMG2	0xEA

#define DAMAGE_PACKET_RESULT_NO_DAMAGE		0
#define DAMAGE_PACKET_RESULT_SUCCESSFUL		1		
#define DAMAGE_PACKET_RESULT_MISS			4
#define DAMAGE_PACKET_RESULT_DODGE			8
#define DAMAGE_PACKET_RESULT_PARRY			12
#define DAMAGE_PACKET_RESULT_RIPOSTE		16
#define DAMAGE_PACKET_RESULT_BLOCK			20
#define DAMAGE_PACKET_RESULT_DEATH_BLOW		24
#define DAMAGE_PACKET_RESULT_INVULNERABLE	28
#define DAMAGE_PACKET_RESULT_RESIST			36
#define DAMAGE_PACKET_RESULT_REFLECT		40
#define DAMAGE_PACKET_RESULT_IMMUNE			44
#define DAMAGE_PACKET_RESULT_DEFLECT		48
#define DAMAGE_PACKET_RESULT_COUNTER		52
#define DAMAGE_PACKET_RESULT_COUNTER_STRIKE	60
#define DAMAGE_PACKET_RESULT_BASH			64

#define DAMAGE_PACKET_DAMAGE_TYPE_SLASH		0
#define DAMAGE_PACKET_DAMAGE_TYPE_CRUSH		1
#define DAMAGE_PACKET_DAMAGE_TYPE_PIERCE	2
#define DAMAGE_PACKET_DAMAGE_TYPE_HEAT		3
#define DAMAGE_PACKET_DAMAGE_TYPE_COLD		4
#define DAMAGE_PACKET_DAMAGE_TYPE_MAGIC		5
#define DAMAGE_PACKET_DAMAGE_TYPE_MENTAL	6
#define DAMAGE_PACKET_DAMAGE_TYPE_DIVINE	7
#define DAMAGE_PACKET_DAMAGE_TYPE_DISEASE	8
#define DAMAGE_PACKET_DAMAGE_TYPE_POISON	9
#define DAMAGE_PACKET_DAMAGE_TYPE_DROWN		10
#define DAMAGE_PACKET_DAMAGE_TYPE_FALLING	11
#define DAMAGE_PACKET_DAMAGE_TYPE_PAIN		12

#define HEAL_PACKET_TYPE_SIMPLE_HEAL        0
#define HEAL_PACKET_TYPE_CRIT_HEAL          1
#define HEAL_PACKET_TYPE_ABSORB             2
#define HEAL_PACKET_TYPE_REGEN_ABSORB       4
#define HEAL_PACKET_TYPE_SIMPLE_MANA        8
#define HEAL_PACKET_TYPE_CRIT_MANA          9
#define HEAL_PACKET_TYPE_SAVAGERY           16
#define HEAL_PACKET_TYPE_CRIT_SAVAGERY      17
#define HEAL_PACKET_TYPE_REPAIR             64
#define HEAL_PACKET_TYPE_CRIT_REPAIR        65

#define ARROW_COLOR_GRAY 0 // 3
#define ARROW_COLOR_GREEN 1 // 1
#define ARROW_COLOR_BLUE 2
#define ARROW_COLOR_WHITE 3 // 3
#define ARROW_COLOR_YELLOW 4 // 4
#define ARROW_COLOR_ORANGE 5 // 5
#define ARROW_COLOR_RED 6

#define ACTIVITY_STATUS_ROLEPLAYING			 1
#define ACTIVITY_STATUS_ANONYMOUS			 2
#define ACTIVITY_STATUS_LINKDEAD			 4
#define ACTIVITY_STATUS_CAMPING				 8
#define ACTIVITY_STATUS_LFG					16
#define ACTIVITY_STATUS_LFW					32
#define ACTIVITY_STATUS_SOLID				64 //used by zone objects to remain solid
#define ACTIVITY_STATUS_IMMUNITY_GAINED		8192
#define ACTIVITY_STATUS_IMMUNITY_REMAINING	16384
// WE ARE UNSURE OF THESE OLD CLIENT VALUES USED AS TEMP PLACEHOLDERS FOR NEWER CLIENTS
#define ACTIVITY_STATUS_AFK					32768 // whats the real one?

#define ACTIVITY_STATUS_MERCENARY_1188				1<<2
#define ACTIVITY_STATUS_STATICOBJECT_1188			1<<3
#define ACTIVITY_STATUS_MERCHANT_1188				1<<4
#define ACTIVITY_STATUS_HIDEICON_1188				1<<9
#define ACTIVITY_STATUS_INTERACTABLE_1188			1<<10
#define ACTIVITY_STATUS_NOTARGET_1188				1<<11
#define ACTIVITY_STATUS_ISTRANSPORT_1188			1<<12
#define ACTIVITY_STATUS_SHOWHOUSEICON_1188			1<<13
#define ACTIVITY_STATUS_LOOTABLE_1188				1<<14
#define ACTIVITY_STATUS_INCOMBAT_1188				1<<15
#define ACTIVITY_STATUS_AFK_1188					1<<16
#define ACTIVITY_STATUS_ROLEPLAYING_1188			1<<17
#define ACTIVITY_STATUS_ANONYMOUS_1188				1<<18
#define ACTIVITY_STATUS_LINKDEAD_1188				1<<19
#define ACTIVITY_STATUS_CAMPING_1188				1<<20
#define ACTIVITY_STATUS_LFG_1188					1<<21
#define ACTIVITY_STATUS_LFW_1188					1<<22
#define ACTIVITY_STATUS_SOLID_1188					1<<23 //used by zone objects to remain solid
#define ACTIVITY_STATUS_MENTORING_1188				1<<28
#define ACTIVITY_STATUS_IMMUNITY_GAINED_1188		1<<30
#define ACTIVITY_STATUS_IMMUNITY_REMAINING_1188		1<<31

#define POS_STATE_KNEELING					 64
#define POS_STATE_SOLID						128 //used by most mobs to remaind solid (cant walk through them)
#define POS_STATE_NOTARGET_CURSOR			256 //cant target and no cursor is displayed
#define POS_STATE_CROUCHING					512

#define MERCHANT_TYPE_NO_BUY				1
#define MERCHANT_TYPE_NO_BUY_BACK			2
#define MERCHANT_TYPE_SPELLS				4
#define MERCHANT_TYPE_CRAFTING				8
#define MERCHANT_TYPE_REPAIR				16
#define MERCHANT_TYPE_LOTTO					32
#define MERCHANT_TYPE_CITYMERCHANT			64

#define INFO_VIS_FLAG_INVIS                 1
#define INFO_VIS_FLAG_HIDE_HOOD             2
#define INFO_VIS_FLAG_MOUNTED               4
#define INFO_VIS_FLAG_CROUCH                8

#define ENCOUNTER_STATE_NONE				0
#define ENCOUNTER_STATE_AVAILABLE			1
#define ENCOUNTER_STATE_BROKEN				2
#define ENCOUNTER_STATE_LOCKED				3
#define ENCOUNTER_STATE_OVERMATCHED			4
#define ENCOUNTER_STATE_NO_REWARD			5

using namespace std;
class Spell;
class ZoneServer;
class Quest;
struct LUAHistory;
struct Cell;

struct CellInfo {
	Cell* CurrentCell;
	int CellListIndex;
};

struct MovementData{
	float x;
	float y;
	float z;
	float speed;
	int32 delay;
	string lua_function;
	float heading;
	bool use_movement_location_heading;
};

struct BasicInfoStruct{
	sint32	cur_hp;
	sint32	max_hp;
	sint32	hp_base;
	sint32	cur_power;
	sint32	max_power;
	sint32	power_base;
	sint32	cur_savagery;
	sint32	max_savagery;
	sint32	savagery_base;
	sint32	cur_dissonance;
	sint32	max_dissonance;
	sint32	dissonance_base;
	sint16	assigned_aa;
	sint16	unassigned_aa;
	sint16	tradeskill_aa;
	sint16	unassigned_tradeskill_aa;
	sint16	prestige_aa;
	sint16	unassigned_prestige_aa;
	sint16	tradeskill_prestige_aa;
	sint16	unassigned_tradeskill_prestige_aa;
	int32	aaxp_rewards;
};

struct MovementLocation{
	float	x;
	float	y;
	float	z;
	float	speed;
	//int32	start_time;
	//int32	end_time;
	bool	attackable;
	string	lua_function;
	bool	mapped;
	int32	gridid;
	int8	stage;
	bool	reset_hp_on_runback;
};

struct SpawnUpdate {
	int32 spawn_id;
	bool info_changed;
	bool vis_changed;
	bool pos_changed;
	shared_ptr<Client> client;
};

struct SpawnData {
	Spawn* spawn;
	uchar* data;
	int32 size;
};

struct TimedGridData {
	int32 timestamp;
	int32 grid_id;
	float x;
	float y;
	float z;
	bool npc_save;
};

class Spawn {
public:
	Spawn();
	virtual ~Spawn();

	template <class Field, class Value> void Set(Field* field, Value value, bool setUpdateFlags = true){
		if (setUpdateFlags) {
			changed = true;
			AddChangedZoneSpawn();
		}
		*field = value;
	}
	template <class Field> void Set(Field* field, const char* value, bool setUpdateFlags = true){
		if (setUpdateFlags) {
			changed = true;
			AddChangedZoneSpawn();
		}
		strcpy(field, value);
	}
	template <class Field, class Value> void SetPos(Field* field, Value value, bool setUpdateFlags = true){
		if(setUpdateFlags){
			position_changed = true;
		}
		Set(field, value, setUpdateFlags);
	}
	template <class Field, class Value> void SetInfo(Field* field, Value value, bool setUpdateFlags = true){
		if(setUpdateFlags){
			info_changed = true;
		}
		Set(field, value);
	}
	template <class Field, class Value> void SetVis(Field* field, Value value, bool setUpdateFlags = true){
		if(setUpdateFlags)
			vis_changed = true;
		Set(field, value);
	}
	template <class Field> void SetPos(Field* field, char* value, bool setUpdateFlags = true){
		if(setUpdateFlags){
			position_changed = true;
		}
		Set(field, value, setUpdateFlags);
	}
	template <class Field> void SetInfo(Field* field, char* value, bool setUpdateFlags = true){
		if(setUpdateFlags){
			info_changed = true;
		}
		Set(field, value);
	}
	EntityCommand* CreateEntityCommand(EntityCommand* old_command){
		EntityCommand* entity_command = new EntityCommand;
		entity_command->name = old_command->name;
		entity_command->distance = old_command->distance;
		entity_command->command = old_command->command;
		entity_command->error_text = old_command->error_text;
		entity_command->cast_time = old_command->cast_time;
		entity_command->spell_visual = old_command->spell_visual;
		entity_command->default_allow_list = old_command->default_allow_list;
		return entity_command;
	}
	EntityCommand* CreateEntityCommand(const char* name, float distance, const char* command, const char* error_text, int16 cast_time, int32 spell_visual, bool default_allow_list=true){
		EntityCommand* entity_command = new EntityCommand;
		entity_command->name = name;
		entity_command->distance = distance;
		entity_command->command = command;
		entity_command->error_text = error_text;
		entity_command->cast_time = cast_time;
		entity_command->spell_visual = spell_visual;
		entity_command->default_allow_list = default_allow_list;
		return entity_command;
	}
	virtual Client* GetClient() { return 0; }
	void AddChangedZoneSpawn();
	void AddPrimaryEntityCommand(const char* name, float distance, const char* command, const char* error_text, int16 cast_time, int32 spell_visual, bool defaultDenyList = false, Player* player = NULL);
	void RemovePrimaryEntityCommand(const char* command);
	bool SetPermissionToEntityCommand(EntityCommand* command, Player* player, bool permissionValue);
	bool SetPermissionToEntityCommandByCharID(EntityCommand* command, int32 charID, bool permissionValue);

	void RemoveSpawnFromPlayer(Player* player);

	void AddSecondaryEntityCommand(const char* name, float distance, const char* command, const char* error_text, int16 cast_time, int32 spell_visual){
		secondary_command_list.push_back(CreateEntityCommand(name, distance, command, error_text, cast_time, spell_visual));
	}
	int8 GetLockedNoLoot(){
		return appearance.locked_no_loot;
	}
	int16 GetEmoteState(){
		return appearance.emote_state;
	}
	int8 GetHideHood(){
		return appearance.hide_hood;
	}
	void SetLockedNoLoot(int8 new_val, bool updateFlags = true){
		SetVis(&appearance.locked_no_loot, new_val, updateFlags);
	}
	void SetHandFlag(int8 new_val, bool updateFlags = true){
		SetVis(&appearance.display_hand_icon, new_val, updateFlags);
	}
	void SetHideHood(int8 new_val, bool updateFlags = true){
		SetInfo(&appearance.hide_hood, new_val, updateFlags);
	}
	void SetEmoteState(int8 new_val, bool updateFlags = true){
		SetInfo(&appearance.emote_state, new_val, updateFlags);
	}
	void SetName(const char* new_name, bool updateFlags = true){ 
		SetInfo(appearance.name, new_name, updateFlags); 
	}
	void SetPrefixTitle(const char* new_prefix_title, bool updateFlags = true) {
		SetInfo(appearance.prefix_title, new_prefix_title, updateFlags);
	}
	void SetSuffixTitle(const char* new_suffix_title, bool updateFlags = true) {
		SetInfo(appearance.suffix_title, new_suffix_title, updateFlags);
	}
	void SetSubTitle(const char* new_sub_title, bool updateFlags = true) {
		SetInfo(appearance.sub_title, new_sub_title, updateFlags);
	}
	void SetLastName(const char* new_last_name, bool updateFlags = true) {
		SetInfo(appearance.last_name, new_last_name, updateFlags);
	}
	void SetAdventureClass(int8 new_class, bool updateFlags = true) { 
		SetInfo(&appearance.adventure_class, new_class, updateFlags); 
	}
	void SetTradeskillClass(int8 new_class, bool updateFlags = true) { 
		SetInfo(&appearance.tradeskill_class, new_class, updateFlags); 
	}
	void SetSize(int16 new_size, bool updateFlags = true) { 
		SetPos(&size, new_size, updateFlags); 
	}
	void SetSpeedX(float speed_x, bool updateFlags = true) {
		SetPos(&appearance.pos.SpeedX, speed_x, updateFlags);
	}
	void SetSpeedY(float speed_y, bool updateFlags = true) {
		SetPos(&appearance.pos.SpeedY, speed_y, updateFlags);
	}
	void SetSpeedZ(float speed_z, bool updateFlags = true) {
		SetPos(&appearance.pos.SpeedZ, speed_z, updateFlags);
	}
	void SetX(float x, bool updateFlags = true){ 
		SetPos(&appearance.pos.X, x, updateFlags); 
	}
	void SetY(float y, bool updateFlags = true, bool disableYMapFix = false);
	void SetZ(float z, bool updateFlags = true){ 
		SetPos(&appearance.pos.Z, z, updateFlags);
	}
	void SetHeading(sint16 dir1, sint16 dir2, bool updateFlags = true){ 
		SetPos(&appearance.pos.Dir1, dir1, updateFlags);
		SetPos(&appearance.pos.Dir2, dir2, updateFlags);
	}
	void SetHeading(float heading, bool updateFlags = true){
		last_heading_angle = heading;
		if (heading != 180)
			heading = (heading - 180) * 64;
		SetHeading((sint16)heading, (sint16)heading, updateFlags);
	}
	void SetPitch(sint16 pitch1, sint16 pitch2, bool updateFlags = true){
		SetPos(&appearance.pos.Pitch1, (sint16)pitch1, updateFlags);
		SetPos(&appearance.pos.Pitch2, (sint16)pitch2, updateFlags);
	}
	void SetPitch(float pitch, bool updateFlags = true){
		if (pitch == 0){
			SetPos(&appearance.pos.Pitch1, (sint16)0, updateFlags);
			SetPos(&appearance.pos.Pitch2, (sint16)0, updateFlags);
			return;
		}
		if (pitch != 180)
			pitch = (pitch - 180) * 64;
		SetPos(&appearance.pos.Pitch1, (sint16)pitch, updateFlags);
		SetPos(&appearance.pos.Pitch2, (sint16)pitch, updateFlags);
	}
	void SetRoll(float roll, bool updateFlags = true){
		if (roll == 0){
			SetPos(&appearance.pos.Roll, (sint16)0, updateFlags);
			return;
		}
		else if (roll != 180)
			roll = (roll - 180) * 64;
		SetPos(&appearance.pos.Roll, (sint16)roll, updateFlags);
	}
	void SetVisualState(int16 state, bool updateFlags = true){ 
		SetInfo(&appearance.visual_state, state, updateFlags);
	}
	void SetActionState(int16 state, bool updateFlags = true){ 
		SetInfo(&appearance.action_state, state, updateFlags);
	}
	void SetMoodState(int16 state, bool updateFlags = true){ 
		SetInfo(&appearance.mood_state, state, updateFlags);
	}
	void SetInitialState(int16 state, bool updateFlags = true){ 
		SetPos(&appearance.pos.state, state, updateFlags);
	}
	void SetActivityStatus(int16 state, bool updateFlags = true){ 
		SetInfo(&appearance.activity_status, state, updateFlags);
	}
	void SetCollisionRadius(int32 radius, bool updateFlags = true){ 
		SetPos(&appearance.pos.collision_radius, radius, updateFlags);
	}
	int16 GetCollisionRadius(){
		return appearance.pos.collision_radius;
	}
	int16 GetVisualState(){
		return appearance.visual_state;
	}
	int16 GetActionState(){
		return appearance.action_state;
	}
	int16 GetMoodState(){
		return appearance.mood_state;
	}
	int16 GetInitialState(){
		return appearance.pos.state;
	}
	int16 GetActivityStatus(){
		return appearance.activity_status;
	}
	int32 GetPrimaryCommandListID(){
		return primary_command_list_id;
	}
	int32 GetSecondaryCommandListID(){
		return secondary_command_list_id;
	}
	void SetID(int32 in_id){
		Set(&id, in_id);
	}
	void SetEncounterLevel(int8 enc_level, bool setUpdateFlags = true){
		SetInfo(&appearance.encounter_level, enc_level, setUpdateFlags);
	}
	virtual void SetLevel(int16 level, bool setUpdateFlags = true){
		SetInfo(&appearance.level, level, setUpdateFlags);
	}	
	void SetTSLevel(int16 tradeskill_level, bool setUpdateFlags = true){
		SetInfo(&appearance.tradeskill_level, tradeskill_level, setUpdateFlags);
	}	
	void SetGender(int8 gender, bool setUpdateFlags = true){
		SetInfo(&appearance.gender, gender, setUpdateFlags);
	}
	void SetShowName(int8 new_val, bool setUpdateFlags = true){
		SetVis(&appearance.display_name, new_val, setUpdateFlags);
	}
	void SetShowLevel(int8 new_val, bool setUpdateFlags = true){
		SetVis(&appearance.show_level, new_val, setUpdateFlags);
	}
	void SetHeroic(int8 new_val, bool setUpdateFlags = true){
		SetInfo(&appearance.heroic_flag, new_val, setUpdateFlags);
	}
	void SetTargetable(int8 new_val, bool setUpdateFlags = true){
		SetVis(&appearance.targetable, new_val, setUpdateFlags);
	}
	void SetShowCommandIcon(int8 new_val, bool setUpdateFlags = true){
		SetVis(&appearance.show_command_icon, new_val, setUpdateFlags);
	}	
	void SetShowHandIcon(int8 new_val, bool setUpdateFlags = true){
		SetVis(&appearance.display_hand_icon, new_val, setUpdateFlags);
	}
	void SetAttackable(int8 new_val, bool setUpdateFlags = true){
		SetInfo(&appearance.attackable, new_val, setUpdateFlags);
	}
	void SetLocation(int32 id, bool setUpdateFlags = true){
		SetPos(&appearance.pos.grid_id, id, setUpdateFlags);
	}
	void SetRace(int8 race, bool setUpdateFlags = true){
		SetInfo(&appearance.race, race, setUpdateFlags);
	}
	void SetIcon(int8 icon, bool setUpdateFlags = true){
		SetInfo(&appearance.icon, icon, setUpdateFlags);
	}
	void AddIconValue(int8 val){
		if(!(appearance.icon & val))
			SetIcon(appearance.icon+val);
	}
	void RemoveIconValue(int8 val){
		if((appearance.icon & val))
			SetIcon(appearance.icon-val);
	}
	int8 GetIconValue(){
		return appearance.icon;
	}
	virtual void SetSpeed(float speed){
		SetPos(&appearance.pos.Speed1, (int8)speed);
	}
	virtual float GetSpeed(){
		return (float)appearance.pos.Speed1;
	}
	virtual float GetBaseSpeed(){
		return (float)appearance.pos.Speed1;
	}
	void SetSpawnType(int8 new_type){
		SetInfo(&spawn_type, new_type);
	}
	int8 GetSpawnType(){
		return spawn_type;
	}
	void SetDatabaseID(int32 new_id){
		database_id = new_id;
	}
	int32 GetDatabaseID(){
		return database_id;
	}
	int8 GetShowHandIcon(){
		return appearance.display_hand_icon;
	}
	int32 GetLocation(){
		return appearance.pos.grid_id;
	}
	int8 GetAttackable(){
		return appearance.attackable;
	}
	int8 GetShowName(){
		return appearance.display_name;
	}
	int8 GetShowLevel(){
		return appearance.show_level;
	}
	int8 GetHeroic(){
		return appearance.heroic_flag;
	}
	int8 GetTargetable(){
		return appearance.targetable;
	}
	int8 GetShowCommandIcon(){
		return appearance.show_command_icon;
	}
	char* GetName(){ 
		return appearance.name;
	}
	char* GetPrefixTitle(){
		return appearance.prefix_title;
	}
	char* GetSuffixTitle(){
		return appearance.suffix_title;
	}
	char* GetSubTitle() {
		return appearance.sub_title;
	}
	char* GetLastName() {
		return appearance.last_name;
	}
	int8 GetAdventureClass() { 
		return appearance.adventure_class; 
	}
	int8 GetTradeskillClass() { 
		return appearance.tradeskill_class; 
	}
	float GetDestinationX(){
		return appearance.pos.X2;
	}
	float GetX() {
		return appearance.pos.X;
	}
	float GetSpeedX() {
		return appearance.pos.SpeedX;
	}
	float GetSpeedY() {
		return appearance.pos.SpeedY;
	}
	float GetSpeedZ() {
		return appearance.pos.SpeedZ;
	}
	float GetDestinationY(){
		return appearance.pos.Y2;
	}
	float GetY(){ 
		return appearance.pos.Y; 
	}
	float GetDestinationZ(){
		return appearance.pos.Z2;
	}
	float GetZ(){ 
		return appearance.pos.Z; 
	}
	float GetHeading(){
		float heading = 0;
		if(appearance.pos.Dir1 != 0){
			heading = ((float)appearance.pos.Dir1)/((float)64);
			if(heading >= 180)
				heading -= 180;
			else
				heading += 180;
		}
		return heading; 
	}
	float GetPitch(){
		float pitch = 0;
		if(appearance.pos.Pitch1 != 0){
			pitch = ((float)appearance.pos.Pitch1)/((float)64);
			if(pitch >= 180)
				pitch -= 180;
			else
				pitch += 180;
		}
		return pitch; 
	}
	float GetRoll(){
		float roll = 0;
		if(appearance.pos.Roll != 0){
			roll = ((float)appearance.pos.Roll)/((float)64);
			if(roll >= 180)
				roll -= 180;
			else
				roll += 180;
		}
		return roll; 
	}
	int32 GetID(){
		return id;
	}
	float GetDistance(float x1, float y1, float z1, float x2, float y2, float z2);
	float GetDistance(float x, float y, float z, float radius, bool ignore_y = false);
	float GetDistance(float x, float y, float z, bool ignore_y = false);
	float GetDistance(Spawn* spawn, bool ignore_y = false, bool includeRadius=true);
	float GetDistance(Spawn* spawn, float x1, float y1, float z1, bool includeRadius=true);
	float CalculateRadius(Spawn* target);

	int8 GetEncounterLevel(){
		return appearance.encounter_level;
	}
	sint32 GetTotalPower();
	sint32 GetPower();
	sint32 GetTotalHP();
	sint32 GetHP();
	sint32 GetTotalHPBase();
	sint32 GetTotalPowerBase();

	sint32 GetTotalSavagery();
	sint32 GetSavagery();
	sint32 GetTotalDissonance();
	sint32 GetDissonance();
	sint32 GetTotalSavageryBase();
	sint32 GetTotalDissonanceBase();
	sint16 GetAssignedAA();
	sint16 GetUnassignedAA();
	sint16 GetTradeskillAA();
	sint16 GetUnassignedTradeskillAA();
	sint16 GetPrestigeAA();
	sint16 GetUnassignedPretigeAA();
	sint16 GetTradeskillPrestigeAA();
	sint16 GetUnassignedTradeskillPrestigeAA();
	int32 GetAAXPRewards();

	void SetTotalPower(sint32 new_val);
	void SetTotalHP(sint32 new_val);
	void SetTotalSavagery(sint32 new_val);
	void SetTotalDissonance(sint32 new_val);
	void SetTotalPowerBase(sint32 new_val);
	void SetTotalHPBase(sint32 new_val);
	void SetTotalSavageryBase(sint32 new_val);
	void SetTotalDissonanceBase(sint32 new_val);
	void SetPower(sint32 power, bool setUpdateFlags = true);
	void SetHP(sint32 new_val, bool setUpdateFlags = true);
	void SetSavagery(sint32 savagery, bool setUpdateFlags = true);
	void SetDissonance(sint32 dissonance, bool setUpdateFlags = true);
	void SetAssignedAA(sint16 new_val);
	void SetUnassignedAA(sint16 new_val);
	void SetTradeskillAA(sint16 new_val);
	void SetUnassignedTradeskillAA(sint16 new_val);
	void SetPrestigeAA(sint16 new_val);
	void SetUnassignedPrestigeAA(sint16 new_val);
	void SetTradeskillPrestigeAA(sint16 new_val);
	void SetUnassignedTradeskillPrestigeAA(sint16 new_val);
	void SetAAXPRewards(int32 amount);
	void SetPrivateQuestSpawn(bool val) {req_quests_private = val;}
	void SetQuestsRequiredOverride(int16 val) {req_quests_override = val;}
	void SetQuestsRequiredContinuedAccess(bool val) {req_quests_continued_access = val;}
	bool GetPrivateQuestSpawn() {return req_quests_private;}
	int16 GetQuestsRequiredOverride() {return req_quests_override;}
	bool GetQuestsRequiredContinuedAccess() {return req_quests_continued_access;}

	bool Alive(){ return GetHP() > 0; }
	int16 GetLevel(){
		return appearance.level;
	}
	int16 GetTSLevel(){
		return appearance.tradeskill_level;
	}
	int8 GetGender(){
		return appearance.gender;
	}
	int8 GetRace(){
		return appearance.race;
	}
	int8 GetLuaRaceId() {
		return appearance.lua_race_id;
	}
	int32 GetSize(){
		return size;
	}
	int32 GetDeviation(){
		return deviation;
	}
	void SetDeviation(int32 in_dev){
		deviation = in_dev;
	}
	float GetSpawnOrigHeading(){
		return appearance.pos.SpawnOrigHeading;
	}
	void SetSpawnOrigHeading(float val){
		appearance.pos.SpawnOrigHeading = val;
	}
	float GetSpawnOrigX(){
		return appearance.pos.SpawnOrigX;
	}
	float GetSpawnOrigY(){
		return appearance.pos.SpawnOrigY;
	}
	float GetSpawnOrigZ(){
		return appearance.pos.SpawnOrigZ;
	}
	float GetSpawnOrigPitch(){
		return appearance.pos.SpawnOrigPitch;
	}
	float GetSpawnOrigRoll(){
		return appearance.pos.SpawnOrigRoll;
	}
	void SetSpawnOrigX(float val){
		appearance.pos.SpawnOrigX = val;
	}
	void SetSpawnOrigY(float val){
		appearance.pos.SpawnOrigY = val;
	}
	void SetSpawnOrigZ(float val){
		appearance.pos.SpawnOrigZ = val;
	}
	void SetSpawnOrigRoll(float val){
		appearance.pos.SpawnOrigRoll = val;
	}
	void SetSpawnOrigPitch(float val){
		appearance.pos.SpawnOrigPitch = val;
	}
	void SetSogaModelType(int16 new_val, bool setUpdateFlags = true){
		SetInfo(&appearance.soga_model_type, new_val, setUpdateFlags);
	}
	void SetModelType(int16 model_type, bool setUpdateFlags = true){
		SetInfo(&appearance.model_type, model_type, setUpdateFlags);
		SetInfo(&appearance.soga_model_type, model_type, setUpdateFlags);
		SetFlyingCreature();
		SetWaterCreature();
	}
	int16 GetSogaModelType(){
		return appearance.soga_model_type;
	}
	int16 GetModelType(){
		return appearance.model_type;
	}
	
	bool IsFlyingCreature();
	bool IsWaterCreature();
	bool InWater();
	bool InLava();

	void SetFlyingCreature();
	void SetWaterCreature();
	
	void SetPrimaryCommand(const char* name, const char* command, float distance = 10);
	void SetPrimaryCommands(vector<EntityCommand*>* commands);
	void SetSecondaryCommands(vector<EntityCommand*>* commands);
	vector<EntityCommand*>* GetPrimaryCommands() {return &primary_command_list;}
	vector<EntityCommand*>* GetSecondaryCommands() {return &secondary_command_list;}
	EntityCommand* FindEntityCommand(string command, bool primaryOnly=false);
	virtual EQ2Packet* serialize(Player* player, int16 version);
	EQ2Packet* spawn_serialize(Player* player, int16 version, int16 offset = 0, int32 value = 0, int16 offset2 = 0, int16 offset3 = 0, int16 offset4 = 0, int32 value2 = 0);
	EQ2Packet* spawn_update_packet(Player* player, int16 version, bool override_changes = false, bool override_vis_changes = false);
	EQ2Packet* player_position_update_packet(Player* player, int16 version);
	uchar* spawn_info_changes(Player* spawn, int16 version);
	uchar* spawn_pos_changes(Player* spawn, int16 version);
	uchar* spawn_vis_changes(Player* spawn, int16 version);

	uchar* spawn_info_changes_ex(Player* spawn, int16 version);
	uchar* spawn_pos_changes_ex(Player* spawn, int16 version);
	uchar* spawn_vis_changes_ex(Player* spawn, int16 version);

	virtual bool EngagedInCombat(){ return false; }
	virtual bool IsObject(){ return false; }
	virtual bool IsGroundSpawn(){ return false; }
	virtual bool IsNPC(){ return false; }
	virtual bool IsEntity(){ return false; }
	virtual bool IsPlayer(){ return false; }
	virtual bool IsWidget(){ return false; }
	virtual bool IsSign(){ return false; }
	virtual bool IsBot() { return false; }

	bool			HasInfoChanged(){ return info_changed; }
	bool			HasPositionChanged(){ return position_changed; }	
	bool			HasTarget(){ return target ? true : false; }

	int32			GetRespawnTime();
	void			SetRespawnTime(int32 time);
	int32			GetExpireTime() { return expire_time; }
	void			SetExpireTime(int32 new_expire_time) { expire_time = new_expire_time; }
	int32			GetExpireOffsetTime();
	void			SetExpireOffsetTime(int32 time);
	int32			GetSpawnLocationID();
	void			SetSpawnLocationID(int32 id);
	int32			GetSpawnEntryID();
	void			SetSpawnEntryID(int32 id);
	int32			GetSpawnLocationPlacementID();
	void			SetSpawnLocationPlacementID(int32 id);
	float			GetXOffset() { return x_offset; }
	void			SetXOffset(float new_x_offset) { x_offset = new_x_offset; }
	float			GetYOffset() { return y_offset; }
	void			SetYOffset(float new_y_offset) { y_offset = new_y_offset; }
	float			GetZOffset() { return z_offset; }
	void			SetZOffset(float new_z_offset) { z_offset = new_z_offset; }

	bool HasTrapTriggered() {
		return trap_triggered;
	}
	int32 GetTrapState() {
		return trap_state;
	}
	void SetChestDropTime() {
		chest_drop_time = Timer::GetCurrentTime2();
		trap_opened_time = 0;
	}
	void SetTrapTriggered(bool triggered, int32 state) {
		if(!trap_triggered && triggered)
			trap_opened_time = Timer::GetCurrentTime2();
		
		trap_triggered = triggered;
		trap_state = state;
	}
	int32 GetChestDropTime() {
		return chest_drop_time;
	}
	int32 GetTrapOpenedTime() {
		return trap_opened_time;
	}
	void AddLootItem(int32 id, int16 charges = 1) {
		Item* master_item = master_item_list.GetItem(id);
		if (master_item) {
			Item* item = new Item(master_item);
			item->details.count = charges;
			LockLoot();
			loot_items.push_back(item);
			UnlockLoot();
		}
	}
	void AddLootItem(Item* item) {
		if(item) {
			LockLoot();
			loot_items.push_back(item);
			UnlockLoot();
		}
	}
	bool HasLoot() {
		LockLoot();
		if (loot_items.size() == 0 && loot_coins == 0) {
			UnlockLoot();
			return false;
		}
		UnlockLoot();
		return true;
	}
	void TransferLoot(Spawn* spawn);
	bool HasLootItemID(int32 id);
	int32 GetLootItemID();
	Item* LootItem(int32 id);
	vector<Item*>* GetLootItems() {
		return &loot_items;
	}
	void LockLoot() {
		MLootItems.lock();
	}
	void UnlockLoot() {
		MLootItems.unlock();
	}
	void ClearLoot() {

		MLootItems.lock();
		vector<Item*>::iterator itr;
		for (itr = loot_items.begin(); itr != loot_items.end();) {
			Item* itm = *itr;
			itr++;
			safe_delete(itm);
		}

		loot_items.clear();

		MLootItems.unlock();
	}

	void ClearNonBodyLoot() {

		MLootItems.lock();
		vector<Item*>::iterator itr;
		for (itr = loot_items.begin(); itr != loot_items.end();) {
			Item* itm = *itr;
			if(!itm->IsBodyDrop())
			{
				itr = loot_items.erase(itr);
				safe_delete(itm);
			}
			else
				itr++;
		}
		MLootItems.unlock();
	}
	
	int32 GetLootCoins() {
		LockLoot();
		int32 coins = loot_coins;
		UnlockLoot();
		return coins;
	}
	void SetLootCoins(int32 val) {
		LockLoot();
		loot_coins = val;
		UnlockLoot();
	}
	void AddLootCoins(int32 coins) {
		LockLoot();
		loot_coins += coins;
		UnlockLoot();
	}
	Spawn*			GetTarget();
	void			SetTarget(Spawn* spawn);
	Spawn*			GetLastAttacker();
	void			SetLastAttacker(Spawn* spawn);
	bool			TakeDamage(int32 damage);
	ZoneServer*		GetZone();
	virtual void	SetZone(ZoneServer* in_zone, int32 version=0);
	void			SetFactionID(int32 val) { faction_id = val; }
	int32			GetFactionID(){
		return faction_id;
	}
	static int32 NextID() {
		static CriticalSection id_lock;
		id_lock.lock();
		int32 ret = ++next_id;
		if (next_id == 0xFFFFFFFE)
			next_id = 1;
		else if ((next_id - 255) % 256 == 0) { //we dont want it to end in 255, it will confuse/crash the client
			id_lock.unlock();
			return NextID();
		}
		
		id_lock.unlock();
		return ret;
	}
	void			AddProvidedQuest(int32 val){
		quest_ids.push_back(val);
	}
	vector<int32>*	GetProvidedQuests(){
		return &quest_ids;
	}
	bool			HasProvidedQuests(){
		return (quest_ids.size() > 0);
	}
	void	SetSpawnScript(string name);
	const char*	GetSpawnScript();

	vector<Spawn*>* GetSpawnGroup();
	bool	HasSpawnGroup();
	bool	IsInSpawnGroup(Spawn* spawn);
	Spawn*	IsSpawnGroupMembersAlive(Spawn* ignore_spawn=nullptr, bool npc_only = true);
	void	SendSpawnChanges(bool val){ send_spawn_changes = val; }
	void	SetSpawnGroupID(int32 id);
	int32	GetSpawnGroupID();
	void	AddSpawnToGroup(Spawn* spawn);
	void	SetSpawnGroupList(vector<Spawn*>* list, Mutex* mutex);
	void	RemoveSpawnFromGroup(bool erase_all = false);

	void	SetRunningTo(Spawn* spawn){ running_to = spawn->GetID(); }
	Spawn*	GetRunningTo();
	void	SetTempVisualState(int val, bool update = true) { SetInfo(&tmp_visual_state, val, update); }
	int  	GetTempVisualState(){ return tmp_visual_state; }
	void	SetTempActionState(int val, bool update = true) { SetInfo(&tmp_action_state, val, update); }
	int  	GetTempActionState(){ return tmp_action_state; }
	void	AddAllowAccessSpawn(Spawn* spawn){ allowed_access[spawn->GetID()] = 1; }
	void	RemoveSpawnAccess(Spawn* spawn);
	bool	IsPrivateSpawn(){ return allowed_access.size() > 0 ;}
	bool	AllowedAccess(Spawn* spawn){ return allowed_access.count(spawn->GetID()) > 0; }
	void	MakeSpawnPublic() { allowed_access.clear(); }
	void	SetSizeOffset(int8 offset);
	int8	GetSizeOffset();
	void	SetMerchantID(int32 val);
	int32	GetMerchantID();
	void	SetMerchantType(int8 val);
	int8	GetMerchantType();
	void	SetCollector(bool is_it) { is_collector = is_it; }
	bool	IsCollector() { return is_collector; }
	void	SetMerchantLevelRange(int32 minLvl = 0, int32 maxLvl = 0);
	bool	IsClientInMerchantLevelRange(Client* ent, bool sendMessageIfDenied = true);
	int32	GetMerchantMinLevel();
	int32	GetMerchantMaxLevel();
	void	SetQuestsRequired(Spawn* new_spawn);
	void	SetQuestsRequired(int32 quest_id, int16 quest_step);
	bool	HasQuestsRequired();
	void	SetRequiredHistory(int32 event_id, int32 value1, int32 value2);
	void	SetTransporterID(int32 id);
	int32	GetTransporterID();
	bool	MeetsSpawnAccessRequirements(Player* player);

	void	RemovePrimaryCommands();

	void	InitializePosPacketData(Player* player, PacketStruct* packet, bool bSpawnUpdate = false);
	void	InitializeInfoPacketData(Player* player, PacketStruct* packet);
	void	InitializeVisPacketData(Player* player, PacketStruct* packet);
	void	InitializeHeaderPacketData(Player* player, PacketStruct* packet, int16 index);
	void	InitializeFooterPacketData(Player* player, PacketStruct* packet);

	void	MoveToLocation(Spawn* spawn, float distance, bool immediate = true, bool isMappedLocation = false);
	void	AddMovementLocation(float x, float y, float z, float speed, int16 delay, const char* lua_function, float heading, bool include_heading = false);
	void	ProcessMovement(bool isSpawnListLocked=false);
	void	ResetMovement(bool inFlight=false);
	bool	IsRunning();
	void	CalculateRunningLocation(bool stop = false);
	void	RunToLocation(float x, float y, float z, float following_x = 0, float following_y = 0, float following_z = 0);
	
	MovementLocation* GetCurrentRunningLocation();
	MovementLocation* GetLastRunningLocation();
	void	NewWaypointChange(MovementLocation* data);
	bool	CalculateChange();
	void	AddRunningLocation(float x, float y, float z, float speed, float distance_away = 0, bool attackable = true, bool finished_adding_locations = true, string lua_function = "", bool isMapped=false);
	bool	RemoveRunningLocation();
	void	ClearRunningLocations();

	void    CopySpawnAppearance(Spawn* spawn);

	bool	MovementInterrupted(){ return movement_interrupted; }
	void	MovementInterrupted(bool val) { movement_interrupted = val; }
	bool	NeedsToResumeMovement(){ return attack_resume_needed; }
	void	NeedsToResumeMovement(bool val) { attack_resume_needed = val; }
	bool	HasMovementLoop(){ return movement_loop.size() > 0; }
	bool	HasMovementLocations() { 
			bool hasLocations = false;
			if (MMovementLocations)
				MMovementLocations->readlock(__FUNCTION__, __LINE__);
				hasLocations = movement_locations ? movement_locations->size() > 0 : false;
			if (MMovementLocations)
				MMovementLocations->releasereadlock(__FUNCTION__, __LINE__);
			return hasLocations;
	}

	Timer*	GetRunningTimer();
	float	GetFaceTarget(float x, float z);
	void	FaceTarget(float x, float z);
	void	FaceTarget(Spawn* target, bool disable_action_state = true);
	void	SetInvulnerable(bool val);
	bool	GetInvulnerable();
	bool				changed;
	bool				position_changed;
	bool				info_changed;
	bool				vis_changed;
	int16				size;
	int32				faction_id;
	int8				oversized_packet; //0xff
	int32				id;
	int8				unknown1;
	int32				unknown2;
	int32				primary_command_list_id;
	int32				secondary_command_list_id;
	vector<EntityCommand*>	primary_command_list;
	vector<EntityCommand*>	secondary_command_list;
	int32				group_id;
	int8				group_len;
	vector<Spawn*>*		spawn_group_list;
	AppearanceData		appearance;
	int32	last_movement_update;
	int32	last_location_update;
	bool	forceMapCheck;
	bool	is_water_creature;
	bool	is_flying_creature;

	bool following;
	bool	IsPet() { return is_pet; }
	void	SetPet(bool val) { is_pet = val; }
	Mutex m_requiredQuests;
	Mutex m_requiredHistory;

	void SetFollowTarget(Spawn* spawn, int32 followDistance=0);
	Spawn* GetFollowTarget();

	/// <summary>Sets a user defined variable</summary>
	/// <param name='var'>Variable we are setting</param>
	/// <param name='val'>Value to set the variable to</param>
	void AddTempVariable(string var, string val);

	void AddTempVariable(string var, Spawn* val);
	void AddTempVariable(string var, ZoneServer* val);
	void AddTempVariable(string var, Quest* val);
	void AddTempVariable(string var, Item* val);
	/// <summary>Gets the value for the given variable</summary>
	/// <param name='var'>Variable to check</param>
	/// <returns>The value for the given variable, "" if variable was not set</returns>
	string GetTempVariable(string var);

	Spawn* GetTempVariableSpawn(string var);
	ZoneServer* GetTempVariableZone(string var);
	Item* GetTempVariableItem(string var);
	Quest* GetTempVariableQuest(string var);
	int8 GetTempVariableType(string var);
	void DeleteTempVariable(string var);

	void SetIllusionModel(int16 val, bool setUpdateFlags = true) {
		SetInfo(&m_illusionModel, val, setUpdateFlags);
	}
	int16 GetIllusionModel() { return m_illusionModel; }

	CellInfo Cell_Info;


	int32 GetSpawnAnim() { return m_spawnAnim; }
	void SetSpawnAnim(int32 value) { m_spawnAnim = value; }
	int32 GetAddedToWorldTimestamp() { return m_addedToWorldTimestamp; }
	void SetAddedToWorldTimestamp(int32 value) { m_addedToWorldTimestamp = value; }
	int16 GetSpawnAnimLeeway() { return m_spawnAnimLeeway; }
	void SetSpawnAnimLeeway(int16 value) { m_spawnAnimLeeway = value; }

	float FindDestGroundZ(glm::vec3 dest, float z_offset);
	float GetFixedZ(const glm::vec3& destination, int32 z_find_offset = 1);
	void FixZ(bool forceUpdate=false);
	bool CheckLoS(Spawn* target);
	bool CheckLoS(glm::vec3 myloc, glm::vec3 oloc);

	void CalculateNewFearpoint();

	void StopMoving() {
		if (movement_locations && MMovementLocations)
		{
			MMovementLocations->writelock(__FUNCTION__, __LINE__);
			while (movement_locations->size()){
				safe_delete(movement_locations->front());
				movement_locations->pop_front();
			}
			movement_locations->clear();
			MMovementLocations->releasewritelock(__FUNCTION__, __LINE__);
		}
	}

	int16 pos_packet_size;
	int16 info_packet_size;
	int16 vis_packet_size;

	enum SpawnProximityType {
		SPAWNPROXIMITY_DATABASE_ID = 0,
		SPAWNPROXIMITY_LOCATION_ID = 1
	};

	struct SpawnProximity {
		float				x;
		float				y;
		float				z;
		int32				spawn_value;
		int8				spawn_type;
		float				distance;
		string				in_range_lua_function;
		string				leaving_range_lua_function;
		map<int32, bool>	spawns_in_proximity;
	};

	void AddSpawnToProximity(int32 spawnValue, SpawnProximityType type);
	void RemoveSpawnFromProximity(int32 spawnValue, SpawnProximityType type);

	SpawnProximity* AddLUASpawnProximity(int32 spawnValue, SpawnProximityType type, float distance, string in_range_function, string leaving_range_function) {
		SpawnProximity* prox = new SpawnProximity;
		prox->spawn_value = spawnValue;
		prox->spawn_type = type;
		prox->distance = distance;
		prox->in_range_lua_function = in_range_function;
		prox->leaving_range_lua_function = leaving_range_function;
		spawn_proximities.Add(prox);
		has_spawn_proximities = true;
		return prox;
	}

	void RemoveSpawnProximities() {
		MutexList<SpawnProximity*>::iterator itr = spawn_proximities.begin();
		while (itr.Next()) {
			safe_delete(itr->value);
		}
		spawn_proximities.clear();
		has_spawn_proximities = false;
	}

	Mutex	MCommandMutex;
	bool	has_spawn_proximities;

	void	SetPickupItemID(int32 itemid)
	{
		pickup_item_id = itemid;
	}

	void	SetPickupUniqueItemID(int32 uniqueid)
	{
		pickup_unique_item_id = uniqueid;
	}

	int32	GetPickupItemID() { return pickup_item_id; }
	int32	GetPickupUniqueItemID() { return pickup_unique_item_id; }

	bool	IsSoundsDisabled() { return disable_sounds; }
	void	SetSoundsDisabled(bool val) { disable_sounds = val; }

	RegionMap* GetRegionMap() { return region_map; }
	Map* GetMap() { return current_map; }
	std::map<int32,TimedGridData> established_grid_id;
	
	void DeleteRegion(Region_Node* inNode, ZBSP_Node* rootNode);
	bool InRegion(Region_Node* inNode, ZBSP_Node* rootNode);
	int32 GetRegionType(Region_Node* inNode, ZBSP_Node* rootNode);
	
	float SpawnAngle(Spawn* target, float selfx, float selfz);
	bool BehindSpawn(Spawn *target, float selfx, float selfz)
	{ return (!target || target == this) ? false : SpawnAngle(target, selfx, selfz) > 90.0f; }
	bool InFrontSpawn(Spawn *target, float selfx, float selfz)
	{ return (!target || target == this) ? false : SpawnAngle(target, selfx, selfz) < 63.0f; }
	bool IsFlankingSpawn(Spawn *target, float selfx, float selfz)
	{ return (!target || target == this) ? false : SpawnAngle(target, selfx, selfz) > 63.0f; }

	std::map<std::map<Region_Node*, ZBSP_Node*>, Region_Status> Regions;
	Mutex RegionMutex;

	virtual void StopMovement();
	virtual bool PauseMovement(int32 period_of_time_ms);
	virtual bool IsPauseMovementTimerActive();
	bool IsTransportSpawn() { return is_transport_spawn; }
	void SetTransportSpawn(bool val) { is_transport_spawn = val; }
	
	sint64 GetRailID() { return rail_id; }
	void SetRailID(sint64 val) { rail_id = val; }
	void AddRailPassenger(int32 char_id);
	void RemoveRailPassenger(int32 char_id);
	vector<Spawn*> GetPassengersOnRail();

	void SetAppearancePosition(float x, float y, float z);

	void SetOmittedByDBFlag(bool val) { is_omitted_by_db_flag = val; }
	bool IsOmittedByDBFlag() { return is_omitted_by_db_flag; }

	int32 GetLootTier() { return loot_tier; }
	void SetLootTier(int32 tier) { loot_tier = tier; }
	
	int32 GetLootDropType() { return loot_drop_type; }
	void SetLootDropType(int32 type) { loot_drop_type = type; }

	void SetDeletedSpawn(bool val) { deleted_spawn = val; }
	bool IsDeletedSpawn() { return deleted_spawn; }
	
	EquipmentItemList equipment_list;
	EquipmentItemList appearance_equipment_list;
protected:

	bool	has_quests_required;
	bool	send_spawn_changes;
	bool	invulnerable;
	bool	attack_resume_needed;
	bool	resume_movement;
	bool	movement_interrupted;
	int32	running_timer_begin;
	int32	running_timer_end;
	vector<MovementData*> movement_loop;
	bool	running_timer_updated;
	int16	movement_index;
	int32	last_grid_update;
	int32	movement_start_time;
	Mutex	MMovementLoop;
	map<int32, int8>	allowed_access;
	vector<int32>	quest_ids;	
	int32			database_id;
	int32			packet_num;
	int32			target;
	int8			spawn_type;
	int32			last_attacker;
	int32			merchant_id;
	int8			merchant_type;
	int32			merchant_min_level;
	int32			merchant_max_level;

	int32			transporter_id;
	int32			pickup_item_id;
	int32			pickup_unique_item_id;
	map<int32, vector<int16>* > required_quests;
	map<int32, LUAHistory*> required_history;

	MutexList<SpawnProximity*> spawn_proximities;

	void CheckProximities();
	Timer pause_timer;
private:		
	vector<Item*>	loot_items;
	int32			loot_coins;
	bool			trap_triggered;
	int32			trap_state;
	int32			chest_drop_time;
	int32			trap_opened_time;
	deque<MovementLocation*>* movement_locations;
	Mutex			MLootItems;
	Mutex*			MMovementLocations;
	Mutex*			MSpawnGroup;
	int8			size_offset;
	int				tmp_visual_state;
	int				tmp_action_state;
	int32			running_to;
	string			spawn_script;
	static int32	next_id;
	ZoneServer*		zone;
	int32			spawn_location_id;
	int32			spawn_entry_id;
	int32			spawn_location_spawns_id;
	int32			respawn;
	int32			expire_time;
	int32			expire_offset;
	float			x_offset;
	float			y_offset;
	float			z_offset;
	int32			deviation;
	BasicInfoStruct	basic_info;
	//string			data;
	bool			is_pet;
	// m_followTarget = spawn to follow around
	int32			m_followTarget;
	int32			m_followDistance;
	bool            req_quests_private;
	int16           req_quests_override;
	bool            req_quests_continued_access;
	float			last_heading_angle;

	map<string, int8>			m_tempVariableTypes;
	map<string, int32>			m_tempVariableSpawn;
	map<string, ZoneServer*>	m_tempVariableZone;
	map<string, Item*>			m_tempVariableItem;
	map<string, Quest*>			m_tempVariableQuest;
	// m_tempVariables = stores user defined variables from lua, will not persist through a zone
	map<string, string>			m_tempVariables;

	int16						m_illusionModel;

	int32 m_spawnAnim;
	int32 m_addedToWorldTimestamp;
	int16 m_spawnAnimLeeway;

	Mutex m_Update;
	Mutex m_SpawnMutex;
	bool disable_sounds;

	RegionMap* region_map;
	Map* current_map;

	bool is_transport_spawn;
	sint64 rail_id;
	map<int32, bool> rail_passengers;
	mutex m_RailMutex;
	bool is_omitted_by_db_flag; // this particular spawn is omitted by an expansion or holiday flag

	int32 loot_tier;
	int32 loot_drop_type;

	bool deleted_spawn;
	Mutex m_GridMutex;
	bool is_collector;
};

#endif

