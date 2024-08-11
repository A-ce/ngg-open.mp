/*

	 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
	| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
	| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
	| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
	| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
	| $$\  $$$| $$  \ $$        | $$  \ $$| $$
	| $$ \  $$|  $$$$$$/        | $$  | $$| $$
	|__/  \__/ \______/         |__/  |__/|__/

						Weapons System

				Next Generation Gaming, LLC
	(created by Next Generation Gaming Development Team)
					
	* Copyright (c) 2016, Next Generation Gaming, LLC
	*
	* All rights reserved.
	*
	* Redistribution and use in source and binary forms, with or without modification,
	* are not permitted in any case.
	*
	*
	* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
	* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
	* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
	* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
	* CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
	* EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
	* PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
	* PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
	* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
	* NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
	* SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

GetWeaponParam(WEAPON:id, WeaponsEnum: param)
{
	for (new i; i < sizeof(Weapons); i++)
	{
		if (Weapons[i][WeaponId] == id)	return Weapons[i][param];
	}
	return 0;
}

GivePlayerValidWeapon( playerid, WEAPON:WeaponID )
{
    #if defined zombiemode
   	if(zombieevent == 1 && GetPVarType(playerid, "pIsZombie")) return SendClientMessageEx(playerid, COLOR_GREY, "Zombies can't have guns.");
	#endif
	if(GetPVarType(playerid, "IsInArena") || GetPVarType(playerid, "EventToken")) {
		GivePlayerWeapon(playerid, WeaponID, 99999);
		return 1;
	}
	switch( WeaponID )
	{
  		case WEAPON_FIST, WEAPON_BRASSKNUCKLE:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_UNARMED ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_GOLFCLUB, WEAPON_NITESTICK, WEAPON_KNIFE, WEAPON_BAT, WEAPON_SHOVEL, WEAPON_POOLSTICK, WEAPON_KATANA, WEAPON_CHAINSAW:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_COLT45, WEAPON_SILENCED, WEAPON_DEAGLE:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_SHOTGUN, WEAPON_SAWEDOFF, WEAPON_SHOTGSPA:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_SHOTGUN ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_UZI, WEAPON_MP5, WEAPON_TEC9:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_AK47, WEAPON_M4:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_RIFLE, WEAPON_SNIPER:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_ROCKETLAUNCHER, WEAPON_HEATSEEKER, WEAPON_FLAMETHROWER, WEAPON_MINIGUN:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ARTILLERY ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_GRENADE, WEAPON_TEARGAS, WEAPON_MOLTOV, WEAPON_SATCHEL, WEAPON_BOMB:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_EXPLOSIVES ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_SPRAYCAN, WEAPON_FIREEXTINGUISHER, WEAPON_CAMERA:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_EQUIPMENT ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_DILDO, WEAPON_DILDO2, WEAPON_VIBRATOR, WEAPON_VIBRATOR2, WEAPON_FLOWER, WEAPON_CANE:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case WEAPON_NIGHT_VISION_GOGGLES, WEAPON_THERMAL_GOGGLES, WEAPON_PARACHUTE:
		{
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GADGET ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
	}

	GivePlayerWeapon(playerid, WeaponID, 1);	
	return 1;
}

IsWeaponHandgun(WEAPON:weaponid) {
	switch(weaponid) {
		case WEAPON_GOLFCLUB..WEAPON_KATANA: return true;
		case WEAPON_DILDO..WEAPON_DEAGLE: return true;
		default: return false;
	}
	return false;
}

IsWeaponPrimary(WEAPON:weaponid) {
	switch(weaponid) {
		case WEAPON_SHOTGUN..WEAPON_SNIPER: return true;
		default: return false;
	}
	return false;
}

forward SetPlayerWeapons(playerid);
public SetPlayerWeapons(playerid)
{
	if(HungerPlayerInfo[playerid][hgInEvent] == 1) { return 1;}
    if(GetPVarType(playerid, "IsInArena")) return 1;
	ResetPlayerWeapons(playerid);
	for(new WEAPON_SLOT:s; s < WEAPON_SLOT_DETONATOR; s++)
	{
		if(PlayerInfo[playerid][pGuns][s] > WEAPON_FIST && PlayerInfo[playerid][pAGuns][s] == WEAPON_FIST)
		{
			if(zombieevent) GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
			else GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
		}
	}
	return 1;
}

SetPlayerWeaponsEx(playerid)
{
	if(GetPVarType(playerid, "IsInArena")) return 1;
	ResetPlayerWeapons(playerid);
	for(new WEAPON_SLOT:s; s < WEAPON_SLOT_DETONATOR; s++)
	{
		if(PlayerInfo[playerid][pGuns][s] > WEAPON_FIST)
		{
			if(zombieevent) GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
			else GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
		}
	}
	SetPlayerArmedWeapon(playerid, WEAPON:GetPVarInt(playerid, "LastWeapon"));
	return 1;
}

ResetPlayerWeaponsEx( playerid )
{
	DeletePVar(playerid, "HidingKnife");
	ResetPlayerWeapons(playerid);
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_UNARMED ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_SHOTGUN ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ARTILLERY ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_EXPLOSIVES ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_EQUIPMENT ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] = WEAPON_FIST;
	PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GADGET ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_UNARMED ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_MELEE ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_PISTOL ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_SHOTGUN ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_MACHINE_GUN ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_LONG_RIFLE ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_ARTILLERY ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_EXPLOSIVES ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_EQUIPMENT ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_GIFT ] = WEAPON_FIST;
	PlayerInfo[playerid][pAGuns][ WEAPON_SLOT_GADGET ] = WEAPON_FIST;
	return 1;
}


forward UnholsterWeapon(playerid, WEAPON_SLOT:iWeaponSlot);
public UnholsterWeapon(playerid, WEAPON_SLOT:iWeaponSlot)
{
	new string[128];
	
	if(iWeaponSlot == WEAPON_SLOT_UNARMED)
	{
		SetPVarInt(playerid, "WeaponsHolstered", 1);
		format(string, sizeof(string), "* %s holsters their weapon.", GetPlayerNameEx(playerid), ReturnWeaponName(PlayerInfo[playerid][pGuns][iWeaponSlot]));
		
	}
	else
	{
		SetPVarInt(playerid, "WeaponsHolstered", 0);
		format(string, sizeof(string), "* %s unholsters their %s.", GetPlayerNameEx(playerid), ReturnWeaponName(PlayerInfo[playerid][pGuns][iWeaponSlot]));
	}
	
	SetPlayerArmedWeapon(playerid, PlayerInfo[playerid][pGuns][iWeaponSlot]);
	PlayerInfo[playerid][pHolsteredWeapon] = iWeaponSlot;
	
	ProxDetector(4.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	
	
	
	return 1;
}

ReturnWeaponName(WEAPON:iWeaponID) {

	new
		szName[32];

	switch(iWeaponID) {
		case WEAPON_FIST: szName = "fist";
		case WEAPON_BRASSKNUCKLE: szName = "brass knuckles";
		case WEAPON_GOLFCLUB: szName = "golf club";
		case WEAPON_NITESTICK: szName = "nitestick";
		case WEAPON_KNIFE: szName = "knife";
		case WEAPON_BAT: szName = "baseball bat";
		case WEAPON_SHOVEL: szName = "shovel";
		case WEAPON_POOLSTICK: szName = "pool cue";
		case WEAPON_KATANA: szName = "katana";
		case WEAPON_CHAINSAW: szName = "chainsaw";
		case WEAPON_DILDO: szName = "purple dildo";
		case WEAPON_DILDO2: szName = "white vibrator";
		case WEAPON_VIBRATOR: szName = "white vibrator";
		case WEAPON_VIBRATOR2: szName = "silver vibrator";
		case WEAPON_FLOWER: szName = "flowers";
		case WEAPON_CANE: szName = "cane";
		case WEAPON_GRENADE: szName = "grenade";
		case WEAPON_TEARGAS: szName = "tear gas";
		case WEAPON_MOLTOV: szName = "molotov cocktail";
		case (WEAPON:19): szName = "jetpack";
		case (WEAPON:20): szName = "";
		case (WEAPON:21): szName = "";
		case WEAPON_COLT45: szName = "Colt .45";
		case WEAPON_SILENCED: szName = "silenced Colt .45";
		case WEAPON_DEAGLE: szName = "Desert Eagle";
		case WEAPON_SHOTGUN: szName = "shotgun";
		case WEAPON_SAWEDOFF: szName = "sawn-off shotgun";
		case WEAPON_SHOTGSPA: szName = "SPAS-12";
		case WEAPON_UZI: szName = "Micro Uzi";
		case WEAPON_MP5: szName = "MP5";
		case WEAPON_AK47: szName = "AK-47";
		case WEAPON_M4: szName = "M4A1";
		case WEAPON_TEC9: szName = "TEC-9";
		case WEAPON_RIFLE: szName = "rifle";
		case WEAPON_SNIPER: szName = "sniper rifle";
		case WEAPON_ROCKETLAUNCHER: szName = "RPG";
		case WEAPON_HEATSEEKER: szName = "heatseeker";
		case WEAPON_FLAMETHROWER: szName = "flamethrower";
		case WEAPON_MINIGUN: szName = "minigun";
		case WEAPON_SATCHEL: szName = "satchel charge";
		case WEAPON_BOMB: szName = "detonator";
		case WEAPON_SPRAYCAN: szName = "spray can";
		case WEAPON_FIREEXTINGUISHER: szName = "fire extinguisher";
		case WEAPON_CAMERA: szName = "camera";
		case WEAPON_NIGHT_VISION_GOGGLES: szName = "nightvision goggles";
		case WEAPON_THERMAL_GOGGLES: szName = "thermal goggles";
		case WEAPON_PARACHUTE: szName = "parachute";
	}
	return szName;
}

OnPlayerChangeWeapon(playerid, WEAPON:newweapon)
{
	if(pTazer{playerid} == 1) SetPlayerArmedWeapon(playerid,WEAPON_SILENCED);
	if(GetPVarInt(playerid, "WeaponsHolstered") == 1)
	{
	    SetPlayerArmedWeapon(playerid, WEAPON_FIST);
	}
	
	/*if(Weapon_ReturnSlot(newweapon) != PlayerInfo[playerid][pHolsteredWeapon])
	{
		SetPlayerArmedWeapon(playerid, PlayerInfo[playerid][pGuns][PlayerInfo[playerid][pHolsteredWeapon]]);
	}*/

 	if(GetPVarType(playerid, "IsInArena"))
	{
	    new a = GetPVarInt(playerid, "IsInArena");
	    if(PaintBallArena[a][pbGameType] == 3)
	    {
	        if(PaintBallArena[a][pbFlagNoWeapons] == 1)
	        {
	        	if(GetPVarInt(playerid, "AOSlotPaintballFlag") != -1)
	        	{
					SetPlayerArmedWeapon(playerid, WEAPON_FIST);
	        	}
			}
	    }
	}

	if(PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pASM] < 1)
	{
		if(HungerPlayerInfo[playerid][hgInEvent] != 0) return 1;
		if(GetPVarInt(playerid, "EventToken") != 0) return 1;
		if(GetPVarType(playerid, "IsInArena")) return 1;

		if(GetPlayerState(playerid) == PLAYER_STATE_NONE || GetPlayerState(playerid) == PLAYER_STATE_DRIVER || GetPlayerState(playerid) == PLAYER_STATE_WASTED || GetPlayerState(playerid) == PLAYER_STATE_SPAWNED || GetPlayerState(playerid) == PLAYER_STATE_SPECTATING) return 1;

		if(newweapon == WEAPON_PARACHUTE) PlayerInfo[playerid][pGuns][WEAPON_SLOT_GADGET] = WEAPON_PARACHUTE;

		if(PlayerInfo[playerid][pGuns][GetWeaponSlot(newweapon)] != newweapon) {
			SendClientMessageEx(playerid, COLOR_LIGHTRED, "[SYSTEM]: Client weapon detected. Admins were notified: refrain from doing it again.");
			ExecuteHackerAction(playerid, newweapon);
			SetPlayerWeaponsEx(playerid);
			new iWarnings = GetPVarInt(playerid, "WpnHack_Warnings");
			if(iWarnings > 3) {
				DeletePVar(playerid, "WpnHack_Warnings");
				KickEx(playerid);
			}
			else SetPVarInt(playerid, "WpnHack_Warnings", iWarnings+1);
		}

		/*
		if( PlayerInfo[playerid][pGuns][GetWeaponSlot(newweapon)] != newweapon) {
			new iWarnings = GetPVarInt(playerid, "WpnHack_Warnings");
			if(iWarnings > 3) {
				KickEx(playerid);
				DeletePVar(playerid, "WpnHack_Warnings");
			}
			else SetPVarInt(playerid, "WpnHack_Warnings", iWarnings+1);
		}*/
	}

	if(GetPlayerState(playerid) == PLAYER_STATE_PASSENGER)
	{
	   	if(!IsADriveByWeapon(GetPlayerWeapon(playerid)) && !IsADriveByWeapon(WEAPON:GetPVarInt(playerid, "LastWeapon"))) SetPlayerArmedWeapon(playerid,WEAPON_FIST);
	}
	return 1;
}

Weapon_ReturnName(WEAPON:iModelID) {

	new
		szWepName[32] = "(none)";

	switch(iModelID) {
		case WEAPON_FIST: szWepName = "punch";
		case WEAPON_BRASSKNUCKLE: szWepName = "Brass Knuckles";
		case WEAPON_GOLFCLUB: szWepName = "Golf Club";
		case WEAPON_NITESTICK: szWepName = "Nitestick";
		case WEAPON_KNIFE: szWepName = "Knife";
		case WEAPON_BAT: szWepName = "Baseball Bat";
		case WEAPON_SHOVEL: szWepName = "Shovel";
		case WEAPON_POOLSTICK: szWepName = "Pool Cue";
		case WEAPON_KATANA: szWepName = "Katana";
		case WEAPON_CHAINSAW: szWepName = "Chainsaw";
		case WEAPON_DILDO: szWepName = "Purple Dildo";
		case WEAPON_DILDO2: szWepName = "Small White Vibrator";
		case WEAPON_VIBRATOR: szWepName = "Large White Vibrator";
		case WEAPON_VIBRATOR2: szWepName = "Silver Vibrator";
		case WEAPON_FLOWER: szWepName = "Bouquet of Flowers";
		case WEAPON_CANE: szWepName = "Cane";
		case WEAPON_GRENADE: szWepName = "Grenade";
		case WEAPON_TEARGAS: szWepName = "Tear Gas";
		case WEAPON_MOLTOV: szWepName = "Molotov Cocktail";
		case (WEAPON:19): szWepName = "Jetpack";
		case (WEAPON:20): szWepName = "";
		case (WEAPON:21): szWepName = "";
		case WEAPON_COLT45: szWepName = "Colt .45";
		case WEAPON_SILENCED: szWepName = "Silenced Colt .45";
		case WEAPON_DEAGLE: szWepName = "Desert Eagle";
		case WEAPON_SHOTGUN: szWepName = "Shotgun";
		case WEAPON_SAWEDOFF: szWepName = "Sawn-off Shotgun";
		case WEAPON_SHOTGSPA: szWepName = "SPAS-12";
		case WEAPON_UZI: szWepName = "Micro Uzi";
		case WEAPON_MP5: szWepName = "MP5";
		case WEAPON_AK47: szWepName = "AK-47";
		case WEAPON_M4: szWepName = "M4A1";
		case WEAPON_TEC9: szWepName = "TEC-9";
		case WEAPON_RIFLE: szWepName = "Rifle";
		case WEAPON_SNIPER: szWepName = "Sniper Rifle";
		case WEAPON_ROCKETLAUNCHER: szWepName = "RPG";
		case WEAPON_HEATSEEKER: szWepName = "Heat Seeker";
		case WEAPON_FLAMETHROWER: szWepName = "Flamethrower";
		case WEAPON_MINIGUN: szWepName = "Minigun";
		case WEAPON_SATCHEL: szWepName = "Satchel Charge";
		case WEAPON_BOMB: szWepName = "Detonator";
		case WEAPON_SPRAYCAN: szWepName = "Spray Can";
		case WEAPON_FIREEXTINGUISHER: szWepName = "Fire Extinguisher";
		case WEAPON_CAMERA: szWepName = "Camera";
		case WEAPON_NIGHT_VISION_GOGGLES: szWepName = "Nightvision Goggles";
		case WEAPON_THERMAL_GOGGLES: szWepName = "Thermal Goggles";
		case WEAPON_PARACHUTE: szWepName = "Parachute";
		case (WEAPON:47): szWepName = "";
		case (WEAPON:48): szWepName = "";
		case REASON_VEHICLE: szWepName = "Vehicle";
		case REASON_HELICOPTER_BLADES: szWepName = "Helicopter Blades";
		case REASON_EXPLOSION: szWepName = "Explosion";
		case (WEAPON:52): szWepName = "";
		case REASON_DROWN: szWepName = "Drowning";
		case REASON_COLLISION: szWepName = "Falling";
	}
	return szWepName;
}

IsNotAGun(WEAPON:weaponid)
{
	switch(weaponid)
	{
		case WEAPON_FIST: return true;
		case WEAPON_BAT: return true;
		case WEAPON_BRASSKNUCKLE: return true;
		case WEAPON_CAMERA: return true;
		case WEAPON_CANE: return true;
		case WEAPON_COLLISION: return true;
		case WEAPON_DILDO: return true;
		case WEAPON_DILDO2: return true;
		case WEAPON_DROWN: return true;
		case WEAPON_FIREEXTINGUISHER: return true;
		case WEAPON_FLOWER: return true;
		case WEAPON_GOLFCLUB: return true;
		case WEAPON_KATANA: return true;
		case WEAPON_KNIFE: return true;
		case WEAPON_NITESTICK: return true;
		case WEAPON_PARACHUTE: return true;
		case WEAPON_POOLSTICK: return true;
		case WEAPON_SHOVEL: return true;
		case WEAPON_SPRAYCAN: return true;
		case WEAPON_TEARGAS: return true;
		case WEAPON_VEHICLE: return true;
		case WEAPON_VIBRATOR: return true;
		case WEAPON_VIBRATOR2: return true;
		case WEAPON_GRENADE: return true;
		case WEAPON_CHAINSAW: return true;
		case WEAPON_MOLTOV: return true;
		case WEAPON_SATCHEL: return true;
		case WEAPON_NIGHT_VISION_GOGGLES, WEAPON_THERMAL_GOGGLES: return true;
		default: return false;
	}
	return 0;
}

CMD:myguns(playerid, params[])
{
	new string[128], myweapons[13][2], weaponname[50], encryption[256], name[MAX_PLAYER_NAME];

	GetPlayerName(playerid, name, sizeof(name));
	SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
	format(string, sizeof(string), "Weapons on %s:", name);
	SendClientMessageEx(playerid, COLOR_WHITE, string);
	for (new WEAPON_SLOT:i; i < MAX_WEAPON_SLOTS; i++)
	{
		GetPlayerWeaponData(playerid, i, WEAPON:myweapons[i][0], myweapons[i][1]);
		if(myweapons[i][0] > 0)
		{
			if(_:PlayerInfo[playerid][pGuns][i] == myweapons[i][0])
			{
				GetWeaponName(WEAPON:myweapons[i][0], weaponname, sizeof(weaponname));
				format(string, sizeof(string), "%s (%d)", weaponname, myweapons[i][0]);
				SendClientMessageEx(playerid, COLOR_GRAD1, string);
				format(encryption, sizeof(encryption), "%s%d", encryption, myweapons[i][0]);
			}
		}
	}
	new year, month, day;
	getdate(year, month, day);
	format(encryption, sizeof(encryption), "%s%s%d%d%d%d%d6524", encryption, name, month, day, year, hour_, minuite);
	new encrypt = crc32(encryption);
	format(string, sizeof(string), "[%d/%d/%d %d:%d:%d] - [%d]", month, day, year, hour_, minuite,second_, encrypt);
	SendClientMessageEx(playerid, COLOR_GREEN, string);
	SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
	return 1;
}

CMD:switchgun(playerid, params[])
{
	new weapon[16], WEAPON:id, weapons[13][2];
	if(sscanf(params, "s[16]", weapon))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "SYNTAX: /switchgun [weapon]");
		return SendClientMessageEx(playerid, COLOR_GREY, "Weapons: Fist, 9mm, Shotgun, Sawnoff, Spas12, UZI, MP5, M4, AK47, Tec9");
	}
	else
	{
		if(GetPVarInt(playerid, "Injured") || PlayerCuffed[playerid] > 0 || PlayerTied[playerid] > 0 || GetPVarInt(playerid, "IsInArena") || GetPVarInt(playerid, "EventToken") != 0 || PlayerInfo[playerid][pHospital] > 0) return SendClientMessageEx(playerid, -1, "You cannot do this right now!");

		if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_PASSENGER)
		{
			if(strcmp(weapon, "Fist", true) == 0) id = WEAPON_FIST;
			else if(strcmp(weapon, "9mm", true) == 0) id = WEAPON_COLT45;
			else if(strcmp(weapon, "Shotgun", true) == 0) id = WEAPON_SHOTGUN;
			else if(strcmp(weapon, "Sawnoff", true) == 0) id = WEAPON_SAWEDOFF;
			else if(strcmp(weapon, "Spas12", true) == 0) id = WEAPON_SHOTGSPA;
			else if(strcmp(weapon, "Uzi", true) == 0) id = WEAPON_UZI;
			else if(strcmp(weapon, "Mp5", true) == 0) id = WEAPON_MP5;
			else if(strcmp(weapon, "AK47", true) == 0) id = WEAPON_AK47;
			else if(strcmp(weapon, "M4", true) == 0) id = WEAPON_M4;
			else if(strcmp(weapon, "Tec9", true) == 0) id = WEAPON_TEC9;
			else return SendClientMessageEx(playerid, COLOR_GREY, "Weapons: Fist, 9mm, Shotgun, Sawnoff, Spas12, UZI, MP5, M4, AK47, Tec9");

			for (new WEAPON_SLOT:i; i <= WEAPON_SLOT_DETONATOR; i++) 
			{
				GetPlayerWeaponData(playerid, i, WEAPON:weapons[i][0], weapons[i][1]);
				if(PlayerInfo[playerid][pGuns][i] == id && weapons[i][0] == _:id)
				{
					SetPlayerArmedWeapon(playerid, id);
					SetPVarInt(playerid, "LastWeapon", id);
					return 1;
				}
			}
			return SendClientMessageEx(playerid, -1, "You do not have that weapon.");
		}
		else SendClientMessageEx(playerid, -1, "You can only do this as a passenger.");
	}
	return 1;
}

CMD:giveweapon(playerid, params[])
{
	if(HungerPlayerInfo[playerid][hgInEvent] != 0) return SendClientMessageEx(playerid, COLOR_GREY, "   You cannot do this while being in the Hunger Games Event!");
	if(GetPVarType(playerid, "IsInArena"))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "You can't do this right now, you are in an arena!");
		return 1;
	}
	if(GetPVarInt( playerid, "EventToken") != 0)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "You can't use this while you're in an event.");
		return 1;
	}
	new Float:health;
	GetHealth(playerid, health);
	if (health < 80)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give weapons if your health is below 80!");
		return 1;
	}

	if(GetPVarInt(playerid, "Injured") != 0||PlayerCuffed[playerid]!=0||PlayerInfo[playerid][pHospital]!=0||GetPlayerState(playerid) == PLAYER_STATE_WASTED)
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "You cannot do this at this time.");
		return 1;
	}
	if(IsPlayerInAnyVehicle(playerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "You can not give weapons in a vehicle!");
		return 1;
	}

	if (GetPVarInt(playerid, "GiveWeaponTimer") > 0)
	{
		new string[58];
		format(string, sizeof(string), "You must wait %d seconds before giving another weapon.", GetPVarInt(playerid, "GiveWeaponTimer"));
		SendClientMessageEx(playerid,COLOR_GREY,string);
		return 1;
	}

	new string[128], giveplayerid, weapon[64];
	if(sscanf(params, "us[64]", giveplayerid, weapon))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /giveweapon [player] [weapon name]");
		SendClientMessageEx(playerid, COLOR_GRAD2, "Available Names: sdpistol, shotgun, 9mm, mp5, uzi, tec9, rifle, deagle, ak47, m4, spas12, sniper");
		SendClientMessageEx(playerid, COLOR_GRAD2, "Available Names: flowers, knuckles, baseballbat, cane, shovel, poolcue, golfclub, katana, dildo, parachute");
		return 1;
	}
	if (!IsPlayerConnected(giveplayerid)) {
		return SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
	}
	if(IsPlayerInAnyVehicle(giveplayerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "You can not give weapons to players in vehicles!");
		return 1;
	}
	if(giveplayerid == playerid)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give a weapon to yourself!");
		return 1;
	}
	if(!ProxDetectorS(3.0, playerid, giveplayerid))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "That person isn't near you.");
		return 1;
	}
	if(PlayerInfo[playerid][pMember] != INVALID_GROUP_ID && arrGroupData[PlayerInfo[playerid][pMember]][g_iGroupType] != GROUP_TYPE_CRIMINAL && PlayerInfo[playerid][pMember] != PlayerInfo[giveplayerid][pMember])
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give weapons to players outside your faction!");
		return 1;
	}
	if(PlayerInfo[giveplayerid][pConnectHours] < 2 || PlayerInfo[giveplayerid][pWRestricted] > 0) return SendClientMessageEx(playerid, COLOR_GRAD2, "That person is currently restricted from possessing weapons");
	if(IsPlayerInAnyVehicle(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Please exit the vehicle, before using this command.");
	if(strcmp(weapon, "sdpistol", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] == 23)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_PISTOL ] != 23 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_PISTOL ] != 24)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your silenced pistol.");
				format(string, sizeof(string), "* %s has given %s their silenced pistol.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_SILENCED);
				GivePlayerValidWeapon(giveplayerid, WEAPON_SILENCED);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s(IP:%s) has given %s (IP:%s) their silenced pistol.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a silenced pistol or Desert Eeagle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	if(strcmp(weapon, "9mm", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] == 23)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_PISTOL ] != 23 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_PISTOL ] != 24)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your 9mm pistol.");
				format(string, sizeof(string), "* %s has given %s their 9mm pistol.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_COLT45);
				GivePlayerValidWeapon(giveplayerid, WEAPON_COLT45);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their 9mm pistol.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a silenced pistol or Desert Eeagle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "shotgun", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_SHOTGUN ] == 25)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_SHOTGUN ] != 25 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_SHOTGUN ] != 27)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your shotgun.");
				format(string, sizeof(string), "* %s has given %s their shotgun.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_SHOTGUN);
				GivePlayerValidWeapon(giveplayerid, WEAPON_SHOTGUN);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s(IP:%s) has given %s (IP:%s) their shotgun.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5, Micro SMG or Tec-9!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "mp5", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] == 29)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 28 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 29 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 32)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your MP5.");
				format(string, sizeof(string), "* %s has given %s their MP5.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_MP5);
				GivePlayerValidWeapon(giveplayerid, WEAPON_MP5);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their MP5.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "uzi", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] == 28)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 28 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 29 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 32)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your Micro SMG.");
				format(string, sizeof(string), "* %s has given %s their Micro SMG.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_UZI);
				GivePlayerValidWeapon(giveplayerid, WEAPON_UZI);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their Micro SMG.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5, Micro SMG or Tec-9!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "tec9", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] == 32)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 28 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 29 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] != 32)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your Tec-9.");
				format(string, sizeof(string), "* %s has given %s their Tec-9.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_TEC9);
				GivePlayerValidWeapon(giveplayerid, WEAPON_TEC9);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their Tec-9.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5, Micro SMG or Tec-9!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "deagle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] == 24)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_PISTOL ] != 24)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your Desert Eagle.");
				format(string, sizeof(string), "* %s has given %s their Desert Eagle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_DEAGLE);
				GivePlayerValidWeapon(giveplayerid, WEAPON_DEAGLE);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their Desert Eagle.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a Desert Eeagle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "rifle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] == 33)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] != 33 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] != 34)
			{
				//if(PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away this weapon as you're Famed+!");
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your rifle.");
				format(string, sizeof(string), "* %s has given %s their rifle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_RIFLE);
				GivePlayerValidWeapon(giveplayerid, WEAPON_RIFLE);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their rifle.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a rifle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "ak47", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] == 30)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] != 30 && PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] != 31)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your AK-47.");
				format(string, sizeof(string), "* %s has given %s their AK-47.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_AK47);
				GivePlayerValidWeapon(giveplayerid, WEAPON_AK47);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their AK-47.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a AK-47 or M4!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "m4", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] == 31)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] != 31)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your M4.");
				format(string, sizeof(string), "* %s has given %s their M4.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_M4);
				GivePlayerValidWeapon(giveplayerid, WEAPON_M4);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their M4.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a M4!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "spas12", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_SHOTGUN ] == 27)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_SHOTGUN ] != 27)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your SPAS-12.");
				format(string, sizeof(string), "* %s has given %s their SPAS-12.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_SHOTGSPA);
				GivePlayerValidWeapon(giveplayerid, WEAPON_SHOTGSPA);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their SPAS-12.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a SPAS-12!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "sniper", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] == 34)
		{
			if(PlayerInfo[giveplayerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] != 34)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your sniper rifle.");
				format(string, sizeof(string), "* %s has given %s their sniper rifle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, WEAPON_SNIPER);
				GivePlayerValidWeapon(giveplayerid, WEAPON_SNIPER);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their sniper rifle.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a sniper rifle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "flowers", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] == 14)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your flowers.");
			format(string, sizeof(string), "* %s has given %s their flowers.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_FLOWER);
			GivePlayerValidWeapon(giveplayerid, WEAPON_FLOWER);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their flowers.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "knuckles", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_UNARMED ] == 1)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your brass knuckles.");
			format(string, sizeof(string), "* %s has given %s their brass knuckles.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_BRASSKNUCKLE);
			GivePlayerValidWeapon(giveplayerid, WEAPON_BRASSKNUCKLE);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their brass knuckles.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "baseballbat", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 5)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your baseball bat.");
			format(string, sizeof(string), "* %s has given %s their baseball bat.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_BAT);
			GivePlayerValidWeapon(giveplayerid, WEAPON_BAT);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their baseball bat.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "cane", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] == 15)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your cane.");
			format(string, sizeof(string), "* %s has given %s their cane.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_CANE);
			GivePlayerValidWeapon(giveplayerid, WEAPON_CANE);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their cane.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "shovel", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 6)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your shovel.");
			format(string, sizeof(string), "* %s has given %s their shovel.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_SHOVEL);
			GivePlayerValidWeapon(giveplayerid, WEAPON_SHOVEL);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their shovel.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "golfclub", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 2)
		{
			if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your golf club.");
			format(string, sizeof(string), "* %s has given %s golf club.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_GOLFCLUB);
			GivePlayerValidWeapon(giveplayerid, WEAPON_GOLFCLUB);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their golf club.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "katana") == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 8)
		{
			if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your katana.");
			format(string, sizeof(string), "* %s has given %s their katana.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_KATANA);
			GivePlayerValidWeapon(giveplayerid, WEAPON_KATANA);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their katana.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "dildo", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] == 10)
		{
			if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your dildo.");
			format(string, sizeof(string), "* %s has given %s their dildo.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_DILDO);
			GivePlayerValidWeapon(giveplayerid, WEAPON_DILDO);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their dildo.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(weapon, "parachute", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GADGET ] == 46)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your parachute.");
			format(string, sizeof(string), "* %s has given %s their parachute.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_PARACHUTE);
			GivePlayerValidWeapon(giveplayerid, WEAPON_PARACHUTE);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));
			format(string, sizeof(string), "%s (IP:%s) has given %s (IP:%s) their parachute.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You have entered an invalid weapon name.");
	}
	return 1;
}

CMD:dropgun(playerid, params[])
{
	if(isnull(params))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /dropgun [weapon name]");
		SendClientMessageEx(playerid, COLOR_GRAD2, "Available Names: sdpistol, shotgun, 9mm, mp5, uzi, tec9, rifle, deagle, ak47, m4, spas12, sniper, camera");
		SendClientMessageEx(playerid, COLOR_GRAD2, "Available Names: flowers, knuckles, baseballbat, cane, shovel, poolcue, golfclub, katana, dildo, parachute, goggles");
		if (IsAHitman(playerid))
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "Available Names: knife");
		}
		if(IsACop(playerid))
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "Available Names: nitestick, mace, smoke, chainsaw, fire");
		}

		return 1;
		}

	if(IsPlayerInAnyVehicle(playerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "You can not drop weapons in a vehicle!");
		return 1;
	}
	if(GetPVarType(playerid, "IsInArena"))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "You can't do this right now, you are in an arena!");
		return 1;
	}
	if(GetPVarInt( playerid, "EventToken") != 0)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "You can't use this while you're in an event.");
		return 1;
	}
	new string[128];
	if(strcmp(params, "sdpistol", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] == 23)
		{
			if(pTazer{playerid} == 1) return SendClientMessageEx(playerid, COLOR_RED, "You cannot drop your tazer.");
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your silenced pistol.");
			format(string, sizeof(string), "* %s has dropped their silenced pistol.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_SILENCED);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "camera", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_EQUIPMENT ] == 43)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your camera.");
			format(string, sizeof(string), "* %s has dropped their camera.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_CAMERA);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "nitestick", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][WEAPON_SLOT_MELEE] == 3)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your nitestick.");
			format(string, sizeof(string), "* %s has dropped their nitestick.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_NITESTICK);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "mace", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][WEAPON_SLOT_EQUIPMENT] == 41)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your mace.");
			format(string, sizeof(string), "* %s has dropped their mace.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_SPRAYCAN);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "knife", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 4)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your knife.");
			format(string, sizeof(string), "* %s has dropped their knife.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_KNIFE);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "9mm", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] == 22)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your 9mm pistol.");
			format(string, sizeof(string), "* %s has dropped their 9mm pistol.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_COLT45);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "shotgun", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_SHOTGUN ] == 25)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your shotgun.");
			format(string, sizeof(string), "* %s has dropped their shotgun.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_SHOTGUN);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "mp5", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] == 29)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your MP5.");
			format(string, sizeof(string), "* %s has dropped their MP5.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_MP5);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "uzi", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] == 28)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your Micro SMG.");
			format(string, sizeof(string), "* %s has dropped their Micro SMG.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_UZI);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "tec9", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MACHINE_GUN ] == 32)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your Tec-9.");
			format(string, sizeof(string), "* %s has dropped their Tec-9.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_TEC9);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "deagle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_PISTOL ] == 24)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your Desert Eagle.");
			format(string, sizeof(string), "* %s has dropped their Desert Eagle.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_DEAGLE);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "rifle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] == 33)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your rifle.");
			format(string, sizeof(string), "* %s has dropped their rifle.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_RIFLE);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "ak47", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] == 30)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your AK-47.");
			format(string, sizeof(string), "* %s has dropped their AK-47.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_AK47);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "m4", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ASSAULT_RIFLE ] == 31)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your M4.");
			format(string, sizeof(string), "* %s has dropped their M4.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_M4);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "spas12", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_SHOTGUN ] == 27)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your SPAS-12.");
			format(string, sizeof(string), "* %s has dropped their SPAS-12.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_SHOTGSPA);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "sniper", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_LONG_RIFLE ] == 34)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your sniper rifle.");
			format(string, sizeof(string), "* %s has dropped their sniper rifle.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_SNIPER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "flowers", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] == 14)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your flowers.");
			format(string, sizeof(string), "* %s has dropped their flowers.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_FLOWER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "knuckles", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_UNARMED ] == 1)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your brass knuckles.");
			format(string, sizeof(string), "* %s has dropped their brass knuckles.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_BRASSKNUCKLE);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "baseballbat", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 5)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your baseball bat.");
			format(string, sizeof(string), "* %s has dropped their baseball bat.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_BAT);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "cane", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] == 15)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your cane.");
			format(string, sizeof(string), "* %s has dropped their cane.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] = WEAPON_FIST;
			RemovePlayerWeapon(playerid, WEAPON_CANE);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "shovel", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 6)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your shovel.");
			format(string, sizeof(string), "* %s has dropped their shovel.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_SHOVEL);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "golfclub", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 2)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your golf club.");
			format(string, sizeof(string), "* %s has dropped their golf club.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_GOLFCLUB);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "katana") == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 8)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your katana.");
			format(string, sizeof(string), "* %s has dropped their katana.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_KATANA);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "dildo", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GIFT ] == 10)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your dildo.");
			format(string, sizeof(string), "* %s has dropped their dildo.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_DILDO);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "parachute", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_GADGET ] == 46)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your parachute.");
			format(string, sizeof(string), "* %s has dropped their parachute.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_PARACHUTE);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "smoke", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_EXPLOSIVES ] == 17)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your smoke grenade.");
			format(string, sizeof(string), "* %s has dropped their smoke grenade.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_TEARGAS);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "chainsaw", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 9)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your chainsaw.");
			format(string, sizeof(string), "* %s has dropped their chainsaw.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_CHAINSAW);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "fire", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_EQUIPMENT ] == 42)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your fire extinguisher.");
			format(string, sizeof(string), "* %s has dropped their fire extinguisher.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_FIREEXTINGUISHER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "minigun", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_ARTILLERY ] == 38)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your minigun.");
			format(string, sizeof(string), "* %s has dropped their minigun.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_MINIGUN);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "poolcue", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ WEAPON_SLOT_MELEE ] == 7)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your pool cue.");
			format(string, sizeof(string), "* %s has dropped their pool cue.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_POOLSTICK);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else if(strcmp(params, "goggles", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][WEAPON_SLOT_GADGET] == 44 || PlayerInfo[playerid][pGuns][WEAPON_SLOT_GADGET] == 45)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have dropped your goggles.");
			format(string, sizeof(string), "* %s has dropped their goggles.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, WEAPON_NIGHT_VISION_GOGGLES);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You do not have that weapon!");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You have entered an invalid weapon name.");
	}
	return 1;
}

CMD:holster(playerid, params[])
{
	new string[128];
    if(!GetPVarType(playerid, "WeaponsHolstered"))
    {
        SetPlayerArmedWeapon(playerid, WEAPON_FIST);
        SetPVarInt(playerid, "WeaponsHolstered", 1);
    	format(string, sizeof(string), "* %s holsters their weapon.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		return 1;
    }
	else
	{
	    if(GetPVarInt(playerid, "TackleMode") == 0)
		{
			DeletePVar(playerid, "WeaponsHolstered");
			format(string, sizeof(string), "* %s unholsters their weapon.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			return 1;
		}
		else
		{
			return SendClientMessageEx(playerid, COLOR_GRAD2, "You must disable tackling before unholstering");
		}
	}
}

ReturnBoneName(iBoneID)
{
	new szBone[10];
	switch(iBoneID)
	{
		case BODY_PART_TORSO: szBone = "torso";
		case BODY_PART_GROIN: szBone = "groin";
		case BODY_PART_HEAD: szBone = "head";
		case BODY_PART_LEFT_ARM: szBone = "left arm";
		case BODY_PART_RIGHT_ARM: szBone = "right arm";
		case BODY_PART_LEFT_LEG: szBone = "left leg";
		case BODY_PART_RIGHT_LEG: szBone = "right leg";
		default: szBone = "";
	}
	return szBone;
}

IsADriveByWeapon(WEAPON:iWeaponID) {
	switch(iWeaponID) {
		case WEAPON_SHOTGSPA: return 1;
		case WEAPON_SHOTGUN: return 1;
		case WEAPON_SAWEDOFF: return 1;
		case WEAPON_UZI: return 1;
		case WEAPON_MP5: return 1;
		case WEAPON_TEC9: return 1;
		case WEAPON_AK47: return 1;
		case WEAPON_M4: return 1;
		case WEAPON_COLT45: return 1;
		default: return 0;
	}
	return 0;
}