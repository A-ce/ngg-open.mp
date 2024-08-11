/*
	Minigame: Player Interaction
	- Jingles (September 2015)
*/

#include <YSI_Coding\y_hooks>

#define PVAR_INTERACT "1000"
#define PVAR_INTERACT_CANTRIGGER "1001"
#define INTERACT_TRUE "1002"

new Text:TD_Interact[7];


forward KEY:GetInteractSpriteKey(id);


timer Interact_Timer[1000](playerid) {

	if(GetPVarType(playerid, PVAR_INTERACT)) {

		ProcessInteractSprites(playerid);
		defer Interact_Timer(playerid);
	}
}

hook OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys) {

	if(newkeys & KEY_LEFT || newkeys & KEY_FIRE) {

		if(GetPVarType(playerid, PVAR_INTERACT_CANTRIGGER)) {

			if(newkeys & GetInteractSpriteKey(GetPVarInt(playerid, "I2"))) InteractSpriteProcess(playerid, true);
			else InteractSpriteProcess(playerid, false);
			DeletePVar(playerid, PVAR_INTERACT_CANTRIGGER);
			return 1;
		}
	}
	return 1;
}

hook OnGameModeInit()
{
	
	TD_Interact[0] = TextDrawCreate(320.000000, 180.000000, "-");
	TextDrawAlignment(TD_Interact[0], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawLetterSize(TD_Interact[0], 12.500013, 21.000000);
	TextDrawColour(TD_Interact[0], -196);
	TextDrawSetShadow(TD_Interact[0], 0);

	TD_Interact[1] = TextDrawCreate(299.000000, 279.000000, "LD_BEAT:cring");
	TextDrawFont(TD_Interact[1], TEXT_DRAW_FONT_SPRITE_DRAW);
	TextDrawColour(TD_Interact[1], -1);
	TextDrawTextSize(TD_Interact[1], 42.000000, 44.000000);

	TD_Interact[2] = TextDrawCreate(262.000000, 292.000000, "LD_BEAT:up");
	TextDrawFont(TD_Interact[2], TEXT_DRAW_FONT_SPRITE_DRAW);
	TextDrawColour(TD_Interact[2], -196);
	TextDrawTextSize(TD_Interact[2], 16.000000, 17.000000);

	TD_Interact[3] = TextDrawCreate(283.000000, 292.000000, "LD_BEAT:up");
	TextDrawFont(TD_Interact[3], TEXT_DRAW_FONT_SPRITE_DRAW);
	TextDrawColour(TD_Interact[3], -96);
	TextDrawTextSize(TD_Interact[3], 16.000000, 17.000000);

	TD_Interact[4] = TextDrawCreate(312.000000, 292.000000, "LD_BEAT:up");
	TextDrawFont(TD_Interact[4], TEXT_DRAW_FONT_SPRITE_DRAW);
	TextDrawColour(TD_Interact[4], -1);
	TextDrawTextSize(TD_Interact[4], 16.000000, 17.000000);

	TD_Interact[5] = TextDrawCreate(340.000000, 292.000000, "LD_BEAT:up");
	TextDrawFont(TD_Interact[5], TEXT_DRAW_FONT_SPRITE_DRAW);
	TextDrawColour(TD_Interact[5], -96);
	TextDrawTextSize(TD_Interact[5], 16.000000, 17.000000);

	TD_Interact[6] = TextDrawCreate(362.000000, 292.000000, "LD_BEAT:up");
	TextDrawFont(TD_Interact[6], TEXT_DRAW_FONT_SPRITE_DRAW);
	TextDrawColour(TD_Interact[6], -196);
	TextDrawTextSize(TD_Interact[6], 16.000000, 17.000000);
}

hook OnGameModeExit()
{
	TextDrawHideForAll(TD_Interact[0]);
	TextDrawDestroy(TD_Interact[0]);
	TextDrawHideForAll(TD_Interact[1]);
	TextDrawDestroy(TD_Interact[1]);
	TextDrawHideForAll(TD_Interact[2]);
	TextDrawDestroy(TD_Interact[2]);
	TextDrawHideForAll(TD_Interact[3]);
	TextDrawDestroy(TD_Interact[3]);
	TextDrawHideForAll(TD_Interact[4]);
	TextDrawDestroy(TD_Interact[4]);
	TextDrawHideForAll(TD_Interact[5]);
	TextDrawDestroy(TD_Interact[5]);
	TextDrawHideForAll(TD_Interact[6]);
	TextDrawDestroy(TD_Interact[6]);
}

hook OnPlayerConnect(playerid)
{
	DeletePVar(playerid, PVAR_INTERACT);
}

ProcessInteractSprites(playerid) {

	if(!GetPVarType(playerid, INTERACT_TRUE)) InteractSpriteProcess(playerid, false);
	SendClientMessage(playerid, -1, "trigger");

	new id[4];
	id[0] = GetPVarInt(playerid, "I0");
	id[1] = GetPVarInt(playerid, "I1");
	id[2] = GetPVarInt(playerid, "I2");
	id[3] = GetPVarInt(playerid, "I3");

	SetPVarInt(playerid, "I1", id[0]);
	SetPVarInt(playerid, "I2", id[1]);
	SetPVarInt(playerid, "I3", id[2]);
	
	TextDrawSetString(TD_Interact[3], GetInteractSpriteString(id[0]));
	TextDrawSetString(TD_Interact[4], GetInteractSpriteString(id[1]));
	TextDrawSetString(TD_Interact[5], GetInteractSpriteString(id[2]));
	TextDrawSetString(TD_Interact[6], GetInteractSpriteString(id[3]));

	id[0] = Random(1, 4);
	TextDrawSetString(TD_Interact[2], GetInteractSpriteString(id[0]));
	SetPVarInt(playerid, "I0", id[0]);

	TextDrawHideForPlayer(playerid, TD_Interact[2]);
	TextDrawHideForPlayer(playerid, TD_Interact[3]);
	TextDrawHideForPlayer(playerid, TD_Interact[4]);
	TextDrawHideForPlayer(playerid, TD_Interact[5]);
	TextDrawHideForPlayer(playerid, TD_Interact[6]);

	TextDrawShowForPlayer(playerid, TD_Interact[2]);
	TextDrawShowForPlayer(playerid, TD_Interact[3]);
	TextDrawShowForPlayer(playerid, TD_Interact[4]);
	TextDrawShowForPlayer(playerid, TD_Interact[5]);
	TextDrawShowForPlayer(playerid, TD_Interact[6]);
	DeletePVar(playerid, INTERACT_TRUE);
	SetPVarInt(playerid, PVAR_INTERACT_CANTRIGGER, 1);
}

GetInteractSpriteString(id) {

	new szString[20];
	switch(id) {
		case 0: {}
		case 1: szString = "LD_BEAT:left";
		case 2: szString = "pcbtns:right";
		default: szString = "hud:fist";
	}
	return szString;
}

KEY:GetInteractSpriteKey(id) {

	new KEY:iKeyID;
	switch(id) {
		case 0: {}
		case 1: iKeyID = KEY_LEFT;
		case 2: iKeyID = KEY_RIGHT;
		default: iKeyID = KEY_FIRE;
	}
	return iKeyID;
}

InteractSpriteProcess(playerid, bool:choice) {

	switch(choice) {

		case true: {
			SendClientMessage(playerid, 0x00FF00FF, "SUCCESS");
			TextDrawColour(TD_Interact[1], 0x00FF00FF);
			TextDrawHideForPlayer(playerid, TD_Interact[1]);
			TextDrawShowForPlayer(playerid, TD_Interact[1]);
			SetPVarInt(playerid, INTERACT_TRUE, 1);
		}
		default: {
			SendClientMessage(playerid, 0xFF0000FF, "FAIL");
			TextDrawColour(TD_Interact[1], 0xFF0000FF);
			TextDrawHideForPlayer(playerid, TD_Interact[1]);
			TextDrawShowForPlayer(playerid, TD_Interact[1]);
		}
	}
}
