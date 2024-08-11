/*
    	 		 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
				| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
				| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
				| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
				| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
				| $$\  $$$| $$  \ $$        | $$  \ $$| $$
				| $$ \  $$|  $$$$$$/        | $$  | $$| $$
				|__/  \__/ \______/         |__/  |__/|__/

//--------------------------------[TEXTDRAWS.PWN]--------------------------------


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

 
// Poker Table Textdraw - Credits to GhoulSlayer
CreatePokerGUI(playerid)
{
    PlayerPokerUI[playerid][0] = CreatePlayerTextDraw(playerid, 390.000000, 263.000000, " "); // Seat 2 (SEAT 1)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][0], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][0], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][0], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][0], 0);

	PlayerPokerUI[playerid][1] = CreatePlayerTextDraw(playerid, 389.000000, 273.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][1], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][1], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][1], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][1], 16711935);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][1], 0);

	PlayerPokerUI[playerid][2] = CreatePlayerTextDraw(playerid, 369.000000, 286.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][2], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][2], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][2], 20.000000, 33.000000);

	PlayerPokerUI[playerid][3] = CreatePlayerTextDraw(playerid, 392.000000, 286.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][3], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][3], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][3], 20.000000, 33.000000);

	PlayerPokerUI[playerid][4] = CreatePlayerTextDraw(playerid, 391.000000, 319.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][4], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][4], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][4], 0.180000, 1.000000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][4], 0);

	PlayerPokerUI[playerid][5] = CreatePlayerTextDraw(playerid, 250.000000, 263.000000, " "); // Seat 1 (SEAT 2)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][5], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][5], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][5], 0.159999, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][5], 0);

	PlayerPokerUI[playerid][6] = CreatePlayerTextDraw(playerid, 250.000000, 273.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][6], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][6], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][6], 0.159999, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][6], 16711935);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][6], 0);

	PlayerPokerUI[playerid][7] = CreatePlayerTextDraw(playerid, 229.000000, 286.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][7], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][7], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][7], 20.000000, 33.000000);

	PlayerPokerUI[playerid][8] = CreatePlayerTextDraw(playerid, 252.000000, 286.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][8], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][8], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][8], 20.000000, 33.000000);

	PlayerPokerUI[playerid][9] = CreatePlayerTextDraw(playerid, 250.000000, 319.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][9], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][9], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][9], 0.180000, 1.000000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][9], 0);

	PlayerPokerUI[playerid][10] = CreatePlayerTextDraw(playerid, 199.000000, 190.000000, " "); // Seat 6 (SEAT 3)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][10], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][10], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][10], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][10], 0);

	PlayerPokerUI[playerid][11] = CreatePlayerTextDraw(playerid, 199.000000, 199.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][11], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][11], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][11], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][11], 16711935);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][11], 0);

	PlayerPokerUI[playerid][12] = CreatePlayerTextDraw(playerid, 179.000000, 212.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][12], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][12], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][12], 20.000000, 33.000000);

	PlayerPokerUI[playerid][13] = CreatePlayerTextDraw(playerid, 202.000000, 212.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][13], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][13], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][13], 20.000000, 33.000000);

	PlayerPokerUI[playerid][14] = CreatePlayerTextDraw(playerid, 200.000000, 245.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][14], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][14], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][14], 0.180000, 1.000000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][14], 0);

	PlayerPokerUI[playerid][15] = CreatePlayerTextDraw(playerid, 250.000000, 116.000000, " ");  // Seat 5 (SEAT 4)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][15], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][15], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][15], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][15], 0);

	PlayerPokerUI[playerid][16] = CreatePlayerTextDraw(playerid, 250.000000, 126.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][16], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][16], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][16], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][16], 16711935);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][16], 0);

	PlayerPokerUI[playerid][17] = CreatePlayerTextDraw(playerid, 229.000000, 139.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][17], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][17], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][17], 20.000000, 33.000000);

	PlayerPokerUI[playerid][18] = CreatePlayerTextDraw(playerid, 252.000000, 139.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][18], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][18], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][18], 20.000000, 33.000000);

	PlayerPokerUI[playerid][19] = CreatePlayerTextDraw(playerid, 250.000000, 172.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][19], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][19], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][19], 0.180000, 1.000000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][19], 0);

	PlayerPokerUI[playerid][20] = CreatePlayerTextDraw(playerid, 390.000000, 116.000000, " "); // Seat 4 (SEAT 5)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][20], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][20], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][20], 0.159997, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][20], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][20], 0);

	PlayerPokerUI[playerid][21] = CreatePlayerTextDraw(playerid, 389.000000, 126.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][21], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][21], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][21], 0.159997, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][21], 16711935);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][21], 0);

	PlayerPokerUI[playerid][22] = CreatePlayerTextDraw(playerid, 369.000000, 139.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][22], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][22], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][22], 20.000000, 33.000000);

	PlayerPokerUI[playerid][23] = CreatePlayerTextDraw(playerid, 392.000000, 139.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][23], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][23], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][23], 20.000000, 33.000000);

	PlayerPokerUI[playerid][24] = CreatePlayerTextDraw(playerid, 391.000000, 172.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][24], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][24], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][24], 0.180000, 1.000000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][24], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][24], 0);

	PlayerPokerUI[playerid][25] = CreatePlayerTextDraw(playerid, 443.000000, 190.000000, " "); // Seat 3 (SEAT 6)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][25], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][25], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][25], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][25], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][25], 0);

	PlayerPokerUI[playerid][26] = CreatePlayerTextDraw(playerid, 442.000000, 199.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][26], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][26], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][26], 0.159998, 1.200001);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][26], 16711935);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][26], 0);

	PlayerPokerUI[playerid][27] = CreatePlayerTextDraw(playerid, 422.000000, 212.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][27], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][27], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][27], 20.000000, 33.000000);

	PlayerPokerUI[playerid][28] = CreatePlayerTextDraw(playerid, 445.000000, 212.000000, " ");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][28], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][28], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][28], 20.000000, 33.000000);

	PlayerPokerUI[playerid][29] = CreatePlayerTextDraw(playerid, 444.000000, 245.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][29], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][29], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][29], 0.180000, 1.000000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][29], 0);

	PlayerPokerUI[playerid][30] = CreatePlayerTextDraw(playerid, 265.000000, 205.000000, "New Textdraw"); // Community Card Box
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][30], 0.539999, 2.099998);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][30], 0);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][30], true);
	PlayerTextDrawBoxColour(playerid, PlayerPokerUI[playerid][30], 100);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][30], 375.000000, 71.000000);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][30], 0);

	PlayerPokerUI[playerid][31] = CreatePlayerTextDraw(playerid, 266.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][31], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][31], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][31], 20.000000, 33.000000);

	PlayerPokerUI[playerid][32] = CreatePlayerTextDraw(playerid, 288.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][32], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][32], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][32], 20.000000, 33.000000);

	PlayerPokerUI[playerid][33] = CreatePlayerTextDraw(playerid, 310.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][33], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][33], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][33], 20.000000, 33.000000);

	PlayerPokerUI[playerid][34] = CreatePlayerTextDraw(playerid, 332.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][34], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][34], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][34], 20.000000, 33.000000);

	PlayerPokerUI[playerid][35] = CreatePlayerTextDraw(playerid, 354.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][35], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][35], -1);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][35], 20.000000, 33.000000);

	PlayerPokerUI[playerid][36] = CreatePlayerTextDraw(playerid, 320.000000, 193.000000, "New Textdraw");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][36], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][36], 0.500000, 0.399999);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][36], 0);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][36], 0);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][36], true);
	PlayerTextDrawBoxColour(playerid, PlayerPokerUI[playerid][36], 50);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][36], 390.000000, 110.000000);

	PlayerPokerUI[playerid][37] = CreatePlayerTextDraw(playerid, 318.000000, 191.000000, "Texas Holdem Poker");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][37], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][37], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][37], 0.199999, 1.200000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][37], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][37], 0);

	PlayerPokerUI[playerid][38] = CreatePlayerTextDraw(playerid, 321.000000, 268.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][38], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][38], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][38], 0.189999, 1.200000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][38], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][38], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][38], true);
	PlayerTextDrawBoxColour(playerid, PlayerPokerUI[playerid][38], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][38], 10.000000, 26.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][38], true);

	PlayerPokerUI[playerid][39] = CreatePlayerTextDraw(playerid, 321.000000, 284.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][39], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][39], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][39], 0.189999, 1.200000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][39], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][39], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][39], true);
	PlayerTextDrawBoxColour(playerid, PlayerPokerUI[playerid][39], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][39], 10.000000, 26.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][39], true);

	PlayerPokerUI[playerid][40] = CreatePlayerTextDraw(playerid, 321.000000, 300.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][40], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][40], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][40], 0.189999, 1.200000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][40], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][40], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][40], true);
	PlayerTextDrawBoxColour(playerid, PlayerPokerUI[playerid][40], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][40], 10.000000, 26.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][40], true);

	PlayerPokerUI[playerid][41] = CreatePlayerTextDraw(playerid, 318.000000, 120.000000, "LEAVE");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][41], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][41], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][41], 0.189999, 1.200000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][41], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][41], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][41], true);
	PlayerTextDrawBoxColour(playerid, PlayerPokerUI[playerid][41], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][41], 10.000000, 36.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][41], true);

	PlayerPokerUI[playerid][42] = CreatePlayerTextDraw(playerid, 590.000000, 400.000000, "Casino~n~Games");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][42], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][42], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][42], 0.500000, 2.000000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][42], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][42], 1);

	PlayerPokerUI[playerid][43] = CreatePlayerTextDraw(playerid, 589.000000, 396.000000, "GhoulSlayeR's");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][43], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][43], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][43], 0.180000, 0.800000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][43], 200);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][43], 0);

	PlayerPokerUI[playerid][44] = CreatePlayerTextDraw(playerid, 588.000000, 437.000000, "v1.0 Beta Version");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][44], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][44], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][44], 0.180000, 0.800000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][44], 200);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][44], 0);

/*	PlayerPokerUI[playerid][45] = CreatePlayerTextDraw(playerid, 5.000000, 100.000000, "Debug:");
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][45], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][45], 0.159999, 1.099999);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][45], 200);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][45], 0); */

	PlayerPokerUI[playerid][46] = CreatePlayerTextDraw(playerid, 318.000000, 245.000000, "Texas Holdem Poker");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][46], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][46], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][46], 0.199999, 1.200000);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][46], -1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][46], 0);

	PlayerPokerUI[playerid][47] = CreatePlayerTextDraw(playerid, 320.000000, 248.000000, "New Textdraw");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][47], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][47], 0.500000, 0.399998);
	PlayerTextDrawColour(playerid, PlayerPokerUI[playerid][47], 0);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][47], 0);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][47], true);
	PlayerTextDrawBoxColour(playerid, PlayerPokerUI[playerid][47], 50);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][47], 390.000000, 110.000000);
}
 
forward LoadTextDraws();
public LoadTextDraws() {

	//HouseLights
	g_tHouseLights = TextDrawCreate(-1.000000, 0.000000, "`");
	TextDrawLetterSize(g_tHouseLights, 0.500000, 52.000000);
	TextDrawColour(g_tHouseLights, -1);
	TextDrawSetShadow(g_tHouseLights, 1);
	TextDrawUseBox(g_tHouseLights, true);
	TextDrawBoxColour(g_tHouseLights, 150);
	TextDrawTextSize(g_tHouseLights, 649.000000, 78.000000);

    // Blindfold
	BFText = TextDrawCreate(-20.000000,2.000000,"|");
    TextDrawUseBox(BFText,true);
    TextDrawBoxColour(BFText,0x000000ff);
    TextDrawTextSize(BFText,660.000000,22.000000);
    TextDrawFont(BFText,TEXT_DRAW_FONT_3);
    TextDrawLetterSize(BFText,1.000000,52.200000);
    TextDrawColour(BFText,0x000000ff);
    TextDrawSetOutline(BFText,1);

	// WristWatch
	WristWatch = TextDrawCreate(577.000000, 50.000000, " ");
	TextDrawAlignment(WristWatch, TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(WristWatch, TEXT_DRAW_FONT_3);
	TextDrawLetterSize(WristWatch, 0.309998, 1.100001);
	TextDrawColour(WristWatch, -1);
	TextDrawSetOutline(WristWatch, 1);
	TextDrawSetProportional(WristWatch, false);
	textdrawscount++;

	// Bottom Box 1
	MainMenuTxtdraw[0] = TextDrawCreate(-1.000000, 342.000000, "BottomBox1");
	TextDrawBackgroundColour(MainMenuTxtdraw[0], 0);
	TextDrawLetterSize(MainMenuTxtdraw[0], 0.839999, 11.600002);
	TextDrawColour(MainMenuTxtdraw[0], 0);
	TextDrawSetShadow(MainMenuTxtdraw[0], 1);
	TextDrawUseBox(MainMenuTxtdraw[0], true);
	TextDrawBoxColour(MainMenuTxtdraw[0], 102);
	TextDrawTextSize(MainMenuTxtdraw[0], 677.000000, 134.000000);
	textdrawscount++;

	// Top Box 1
	MainMenuTxtdraw[1] = TextDrawCreate(-10.000000, -18.000000, "TopBox1");
	TextDrawBackgroundColour(MainMenuTxtdraw[1], 0);
	TextDrawLetterSize(MainMenuTxtdraw[1], 0.500000, 13.000000);
	TextDrawColour(MainMenuTxtdraw[1], 0);
	TextDrawSetShadow(MainMenuTxtdraw[1], 1);
	TextDrawUseBox(MainMenuTxtdraw[1], true);
	TextDrawBoxColour(MainMenuTxtdraw[1], 102);
	TextDrawTextSize(MainMenuTxtdraw[1], 770.000000, 0.000000);
	textdrawscount++;

	// Bottom Box 2
	MainMenuTxtdraw[2] = TextDrawCreate(-1.000000, 342.000000, "BottomBox2");
	TextDrawBackgroundColour(MainMenuTxtdraw[2], 0);
	TextDrawLetterSize(MainMenuTxtdraw[2], 0.839999, -0.799999);
	TextDrawColour(MainMenuTxtdraw[2], 0);
	TextDrawSetShadow(MainMenuTxtdraw[2], 1);
	TextDrawUseBox(MainMenuTxtdraw[2], true);
	TextDrawBoxColour(MainMenuTxtdraw[2], 6730751);
	TextDrawTextSize(MainMenuTxtdraw[2], 677.000000, 131.000000);
	textdrawscount++;

	// Top Box 1
	MainMenuTxtdraw[3] = TextDrawCreate(-10.000000, 102.000000, "TopBox1");
	TextDrawBackgroundColour(MainMenuTxtdraw[3], 6730751);
	TextDrawLetterSize(MainMenuTxtdraw[3], 0.500000, 0.199999);
	TextDrawColour(MainMenuTxtdraw[3], 0);
	TextDrawSetShadow(MainMenuTxtdraw[3], 1);
	TextDrawUseBox(MainMenuTxtdraw[3], true);
	TextDrawBoxColour(MainMenuTxtdraw[3], 6730751);
	TextDrawTextSize(MainMenuTxtdraw[3], 770.000000, 138.000000);
	textdrawscount++;

	// NG-RP Title
	MainMenuTxtdraw[4] = TextDrawCreate(263.000000, 10.000000, "NG-RP");
	TextDrawFont(MainMenuTxtdraw[4], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(MainMenuTxtdraw[4], 0.910000, 4.400001);
	TextDrawColour(MainMenuTxtdraw[4], -1);
	TextDrawSetShadow(MainMenuTxtdraw[4], 1);
	textdrawscount++;

	// NG-RP Subtitle
	MainMenuTxtdraw[5] = TextDrawCreate(256.000000, 45.000000, "Next Generation Role Play");
	TextDrawFont(MainMenuTxtdraw[5], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(MainMenuTxtdraw[5], 0.200000, 1.200001);
	TextDrawColour(MainMenuTxtdraw[5], -1);
	TextDrawSetShadow(MainMenuTxtdraw[5], 1);
	textdrawscount++;

	// NG-RP Version
	MainMenuTxtdraw[6] = TextDrawCreate(283.000000, 58.000000, SERVER_GM_TEXT);
	TextDrawFont(MainMenuTxtdraw[6], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(MainMenuTxtdraw[6], 0.200000, 1.200001);
	TextDrawColour(MainMenuTxtdraw[6], -65281);
	TextDrawSetShadow(MainMenuTxtdraw[6], 1);
	textdrawscount++;

	// NG-RP Tooltips
	MainMenuTxtdraw[7] = TextDrawCreate(319.000000, 391.000000, Tooltips[random(sizeof(Tooltips))]);
	TextDrawAlignment(MainMenuTxtdraw[7], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(MainMenuTxtdraw[7], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(MainMenuTxtdraw[7], 0.250000, 1.600000);
	TextDrawColour(MainMenuTxtdraw[7], -1);
	TextDrawSetShadow(MainMenuTxtdraw[7], 1);
	textdrawscount++;

	// Server Stats Bar
	MainMenuTxtdraw[8] = TextDrawCreate(319.000000, 421.000000, " ");
	TextDrawAlignment(MainMenuTxtdraw[8], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawLetterSize(MainMenuTxtdraw[8], 0.189998, 1.100000);
	TextDrawColour(MainMenuTxtdraw[8], -1);
	TextDrawSetShadow(MainMenuTxtdraw[8], 1);
	textdrawscount++;

	// MOTD
	MainMenuTxtdraw[9] = TextDrawCreate(319.000000, 364.000000, " ");
	TextDrawAlignment(MainMenuTxtdraw[9], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawBackgroundColour(MainMenuTxtdraw[9], 65535);
	TextDrawLetterSize(MainMenuTxtdraw[9], 0.229999, 1.400000);
	TextDrawColour(MainMenuTxtdraw[9], -1);
	TextDrawSetShadow(MainMenuTxtdraw[9], 0);
	textdrawscount++;

	MainMenuTxtdraw[10] = TextDrawCreate(319.000000, 81.000000, "This server may contain explicit content and may be considered only for adults.");
	TextDrawAlignment(MainMenuTxtdraw[10], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(MainMenuTxtdraw[10], TEXT_DRAW_FONT_0);
	TextDrawLetterSize(MainMenuTxtdraw[10], 0.230000, 1.200000);
	TextDrawColour(MainMenuTxtdraw[10], -1);
	TextDrawSetShadow(MainMenuTxtdraw[10], 1);
	textdrawscount++;

	MainMenuTxtdraw[11] = TextDrawCreate(0.000000, 119.000000, "ShadowBox");
	TextDrawBackgroundColour(MainMenuTxtdraw[11], 0);
	TextDrawLetterSize(MainMenuTxtdraw[11], 0.889999, 22.500005);
	TextDrawColour(MainMenuTxtdraw[11], 0);
	TextDrawSetShadow(MainMenuTxtdraw[11], 1);
	TextDrawUseBox(MainMenuTxtdraw[11], true);
	TextDrawBoxColour(MainMenuTxtdraw[11], 75);
	TextDrawTextSize(MainMenuTxtdraw[11], 658.000000, 56.000000);
	textdrawscount++;

	// Note: It's a mess, I know, I could have less textdraw variables and just used a bigger string with ~n~, I'll optimize it later, but now, it does the trick.
	// Tutorial (Title Box)
	TutTxtdraw[0] = TextDrawCreate(167.000000, 121.000000, "Title Box");
	TextDrawBackgroundColour(TutTxtdraw[0], 0);
	TextDrawFont(TutTxtdraw[0], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[0], 0.139999, 0.899999);
	TextDrawColour(TutTxtdraw[0], 0);
	TextDrawSetShadow(TutTxtdraw[0], 1);
	TextDrawUseBox(TutTxtdraw[0], true);
	TextDrawBoxColour(TutTxtdraw[0], 6730751);
	TextDrawTextSize(TutTxtdraw[0], 468.000000, 30.000000);
	textdrawscount++;

	// Notice Box
	NoticeTxtdraw[0] = TextDrawCreate(174.000000, 181.000000, "Box");
	TextDrawLetterSize(NoticeTxtdraw[0], 1.590000, 7.700005);
	TextDrawColour(NoticeTxtdraw[0], 0);
	TextDrawSetShadow(NoticeTxtdraw[0], 0);
	TextDrawUseBox(NoticeTxtdraw[0], true);
	TextDrawBoxColour(NoticeTxtdraw[0], 100);
	TextDrawTextSize(NoticeTxtdraw[0], 454.000000, 18.000000);

	NoticeTxtdraw[1] = TextDrawCreate(313.000000, 193.000000, "Loading...");
	TextDrawAlignment(NoticeTxtdraw[1], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(NoticeTxtdraw[1], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(NoticeTxtdraw[1], 0.629999, 3.000000);
	TextDrawColour(NoticeTxtdraw[1], -1);
	TextDrawSetOutline(NoticeTxtdraw[1], 1);

	NoticeTxtdraw[2] = TextDrawCreate(309.000000, 222.000000, "Looking up your account, Please Wait!");
	TextDrawAlignment(NoticeTxtdraw[2], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(NoticeTxtdraw[2], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(NoticeTxtdraw[2], 0.189999, 1.200000);
	TextDrawColour(NoticeTxtdraw[2], -1);
	TextDrawSetOutline(NoticeTxtdraw[2], 1);

	NoticeTxtdraw[3] = TextDrawCreate(309.000000, 222.000000, "Comparing passwords with database, Please Wait!");
	TextDrawAlignment(NoticeTxtdraw[3], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(NoticeTxtdraw[3], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(NoticeTxtdraw[3], 0.189999, 1.200000);
	TextDrawColour(NoticeTxtdraw[3], -1);
	TextDrawSetOutline(NoticeTxtdraw[3], 1);

	NoticeTxtdraw[4] = TextDrawCreate(309.000000, 222.000000, "Fetching & Loading your account, Please Wait!");
	TextDrawAlignment(NoticeTxtdraw[4], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(NoticeTxtdraw[4], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(NoticeTxtdraw[4], 0.189999, 1.200000);
	TextDrawColour(NoticeTxtdraw[4], -1);
	TextDrawSetOutline(NoticeTxtdraw[4], 1);

	NoticeTxtdraw[5] = TextDrawCreate(309.000000, 222.000000, "Streaming Objects within area, Please Wait!");
	TextDrawAlignment(NoticeTxtdraw[5], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(NoticeTxtdraw[5], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(NoticeTxtdraw[5], 0.189999, 1.200000);
	TextDrawColour(NoticeTxtdraw[5], -1);
	TextDrawSetOutline(NoticeTxtdraw[5], 1);

	NoticeTxtdraw[6] = TextDrawCreate(309.000000, 222.000000, "MySQL server is currently busy, Please Wait!");
	TextDrawAlignment(NoticeTxtdraw[6], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(NoticeTxtdraw[6], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(NoticeTxtdraw[6], 0.189999, 1.200000);
	TextDrawColour(NoticeTxtdraw[6], -1);
	TextDrawSetOutline(NoticeTxtdraw[6], 1);

	NoticeTxtdraw[7] = TextDrawCreate(309.000000, 222.000000, "Loading, Please Wait!");
	TextDrawAlignment(NoticeTxtdraw[7], TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(NoticeTxtdraw[7], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(NoticeTxtdraw[7], 0.189999, 1.200000);
	TextDrawColour(NoticeTxtdraw[7], -1);
	TextDrawSetOutline(NoticeTxtdraw[7], 1);

	// Tutorial (Next Page)
	TutTxtdraw[114] = TextDrawCreate(427.000000, 120.000000, "Press ~r~~k~~CONVERSATION_YES~");
	TextDrawFont(TutTxtdraw[114], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[114], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[114], -1);
	TextDrawSetOutline(TutTxtdraw[114], 1);
	textdrawscount++;

	// Tutorial (Box)
	TutTxtdraw[1] = TextDrawCreate(167.000000, 134.000000, "Box");
	TextDrawBackgroundColour(TutTxtdraw[1], 0);
	TextDrawLetterSize(TutTxtdraw[1], 0.500000, 19.999996);
	TextDrawColour(TutTxtdraw[1], 0);
	TextDrawSetShadow(TutTxtdraw[1], 1);
	TextDrawUseBox(TutTxtdraw[1], true);
	TextDrawBoxColour(TutTxtdraw[1], 75);
	TextDrawTextSize(TutTxtdraw[1], 468.000000, -10.000000);
	textdrawscount++;

	// Tutorial (Logo 1)
	TutTxtdraw[2] = TextDrawCreate(270.000000, 241.000000, "NGG");
	TextDrawBackgroundColour(TutTxtdraw[2], 75);
	TextDrawLetterSize(TutTxtdraw[2], 1.119999, 5.599997);
	TextDrawColour(TutTxtdraw[2], 0);
	TextDrawSetShadow(TutTxtdraw[2], 5);
	textdrawscount++;

	// Tutorial (Logo 2)
	TutTxtdraw[3] = TextDrawCreate(259.000000, 286.000000, "Next Generation Gaming");
	TextDrawBackgroundColour(TutTxtdraw[3], 75);
	TextDrawLetterSize(TutTxtdraw[3], 0.259999, 1.599997);
	TextDrawColour(TutTxtdraw[3], 0);
	TextDrawSetShadow(TutTxtdraw[3], 5);
	textdrawscount++;

	// Tutorial (Frame 1) (Title)
	TutTxtdraw[4] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Welcome to Next Generation Role Play!");
	TextDrawFont(TutTxtdraw[4], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[4], 0.209999, 1.000000);
	TextDrawColour(TutTxtdraw[4], -1);
	TextDrawSetShadow(TutTxtdraw[4], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 1)
	TutTxtdraw[5] = TextDrawCreate(175.000000, 141.000000, "Introductions! Welcome to Next Generation Role Play, SA-MP's most popular");
	TextDrawFont(TutTxtdraw[5], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[5], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[5], -1);
	TextDrawSetOutline(TutTxtdraw[5], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 2)
	TutTxtdraw[6] = TextDrawCreate(175.000000, 151.000000, "English speaking server! Our community has been around for quite");
	TextDrawFont(TutTxtdraw[6], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[6], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[6], -1);
	TextDrawSetOutline(TutTxtdraw[6], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 3)
	TutTxtdraw[7] = TextDrawCreate(175.000000, 161.000000, "some time now, and we are glad to have you with us!");
	TextDrawFont(TutTxtdraw[7], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[7], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[7], -1);
	TextDrawSetOutline(TutTxtdraw[7], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 4)
	TutTxtdraw[8] = TextDrawCreate(175.000000, 193.000000, "You know, we are more than just a SA-MP community, so if you are interested");
	TextDrawFont(TutTxtdraw[8], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[8], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[8], -1);
	TextDrawSetOutline(TutTxtdraw[8], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 5)
	TutTxtdraw[9] = TextDrawCreate(175.000000, 203.000000, "be sure to visit us and sign up on our forums at ~y~www.ng-gaming.net~w~ - we");
	TextDrawFont(TutTxtdraw[9], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[9], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[9], -1);
	TextDrawSetOutline(TutTxtdraw[9], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 6)
	TutTxtdraw[10] = TextDrawCreate(175.000000, 214.000000, "will be waiting, be sure to invite your friends!");
	TextDrawFont(TutTxtdraw[10], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[10], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[10], -1);
	TextDrawSetOutline(TutTxtdraw[10], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 7)
	TutTxtdraw[11] = TextDrawCreate(175.000000, 245.000000, "We also have a e-store with a bunch of useful items to purchase, be sure to");
	TextDrawFont(TutTxtdraw[11], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[11], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[11], -1);
	TextDrawSetOutline(TutTxtdraw[11], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 8)
	TutTxtdraw[12] = TextDrawCreate(175.000000, 255.000000, "check it all out at ~y~shop.ng-gaming.net~w~, it helps keep this server up and");
	TextDrawFont(TutTxtdraw[12], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[12], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[12], -1);
	TextDrawSetOutline(TutTxtdraw[12], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 9)
	TutTxtdraw[13] = TextDrawCreate(175.000000, 265.000000, "running with all the prices of space, bandwidth and labor these days.");
	TextDrawFont(TutTxtdraw[13], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[13], 0.159999, 0.899999);
	TextDrawColour(TutTxtdraw[13], -1);
	TextDrawSetOutline(TutTxtdraw[13], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Title)
	TutTxtdraw[14] = TextDrawCreate(168.000000, 120.000000, "Tutorial - How to make money!");
	TextDrawFont(TutTxtdraw[14], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[14], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[14], -1);
	TextDrawSetShadow(TutTxtdraw[14], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 1)
	TutTxtdraw[15] = TextDrawCreate(175.000000, 141.000000, "There are many jobs located around San Andreas, these are represented");
	TextDrawFont(TutTxtdraw[15], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[15], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[15], -1);
	TextDrawSetOutline(TutTxtdraw[15], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 2)
	TutTxtdraw[16] = TextDrawCreate(175.000000, 151.000000, "by ~y~yellow~w~ information icons.");
	TextDrawFont(TutTxtdraw[16], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[16], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[16], -1);
	TextDrawSetOutline(TutTxtdraw[16], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 3)
	TutTxtdraw[17] = TextDrawCreate(181.000000, 172.000000, "| You can ~g~/withdraw~w~ and ~g~/deposit~w~ money at the bank.");
	TextDrawFont(TutTxtdraw[17], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[17], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[17], -1);
	TextDrawSetOutline(TutTxtdraw[17], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 4)
	TutTxtdraw[18] = TextDrawCreate(181.000000, 183.000000, "| You can ~g~/awithdraw~w~ and ~g~/adeposit~w~ cash at a ATM for a small fee.");
	TextDrawFont(TutTxtdraw[18], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[18], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[18], -1);
	TextDrawSetOutline(TutTxtdraw[18], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 5)
	TutTxtdraw[19] = TextDrawCreate(181.000000, 195.000000, "| You can ~g~/fish~w~ in boats or at the pier for money.");
	TextDrawFont(TutTxtdraw[19], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[19], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[19], -1);
	TextDrawSetOutline(TutTxtdraw[19], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 6)
	TutTxtdraw[20] = TextDrawCreate(181.000000, 207.000000, "| You can ~g~/guard~w~ people for money.");
	TextDrawFont(TutTxtdraw[20], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[20], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[20], -1);
	TextDrawSetOutline(TutTxtdraw[20], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 7)
	TutTxtdraw[21] = TextDrawCreate(181.000000, 219.000000, "| You can ~g~/sellgun~w~ to people for money.");
	TextDrawFont(TutTxtdraw[21], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[21], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[21], -1);
	TextDrawSetOutline(TutTxtdraw[21], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 8)
	TutTxtdraw[22] = TextDrawCreate(181.000000, 232.000000, "| You can ~g~/sellpot~w~ or ~g~/sellcrack~w~ to people for money.");
	TextDrawFont(TutTxtdraw[22], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[22], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[22], -1);
	TextDrawSetOutline(TutTxtdraw[22], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 9)
	TutTxtdraw[23] = TextDrawCreate(181.000000, 244.000000, "| You can smuggle drugs with ~g~/getcrate~w~ to specific dens.");
	TextDrawFont(TutTxtdraw[23], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[23], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[23], -1);
	TextDrawSetOutline(TutTxtdraw[23], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 10)
	TutTxtdraw[24] = TextDrawCreate(181.000000, 256.000000, "| You can ~g~/jobhelp~w~ for more!");
	TextDrawFont(TutTxtdraw[24], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[24], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[24], -1);
	TextDrawSetOutline(TutTxtdraw[24], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Title)
	TutTxtdraw[25] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Law Enforcement");
	TextDrawFont(TutTxtdraw[25], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[25], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[25], -1);
	TextDrawSetShadow(TutTxtdraw[25], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 1)
	TutTxtdraw[26] = TextDrawCreate(175.000000, 141.000000, "There are currently 4+ ~b~Law Enforcement~w~ Factions. LSPD, SFPD, SASD and FBI.");
	TextDrawFont(TutTxtdraw[26], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[26], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[26], -1);
	TextDrawSetOutline(TutTxtdraw[26], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 2)
	TutTxtdraw[27] = TextDrawCreate(175.000000, 151.000000, "If you cause trouble and break local laws, you may be arrested by one of");
	TextDrawFont(TutTxtdraw[27], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[27], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[27], -1);
	TextDrawSetOutline(TutTxtdraw[27], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 3)
	TutTxtdraw[28] = TextDrawCreate(175.000000, 161.000000, "them. If you're wanting to become a part of these factions, apply on our");
	TextDrawFont(TutTxtdraw[28], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[28], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[28], -1);
	TextDrawSetOutline(TutTxtdraw[28], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 4)
	TutTxtdraw[29] = TextDrawCreate(175.000000, 171.000000, "forums at ~y~www.ng-gaming.net~w~.");
	TextDrawFont(TutTxtdraw[29], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[29], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[29], -1);
	TextDrawSetOutline(TutTxtdraw[29], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 5)
	TutTxtdraw[30] = TextDrawCreate(181.000000, 196.000000, "| ~b~LSPD~w~ (Los Santos Police Department)");
	TextDrawFont(TutTxtdraw[30], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[30], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[30], -1);
	TextDrawSetOutline(TutTxtdraw[30], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 6)
	TutTxtdraw[31] = TextDrawCreate(181.000000, 212.000000, "| ~h~~b~SFPD~w~ (San Fierro Police Department)");
	TextDrawFont(TutTxtdraw[31], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[31], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[31], -1);
	TextDrawSetOutline(TutTxtdraw[31], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 7)
	TutTxtdraw[32] = TextDrawCreate(181.000000, 229.000000, "| ~y~SASD~w~ (San Andreas Sheriff's Department)");
	TextDrawFont(TutTxtdraw[32], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[32], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[32], -1);
	TextDrawSetOutline(TutTxtdraw[32], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 8)
	TutTxtdraw[33] = TextDrawCreate(181.000000, 246.000000, "| ~b~FBI~w~ (Federal Bureau of Investigation)");
	TextDrawFont(TutTxtdraw[33], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[33], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[33], -1);
	TextDrawSetOutline(TutTxtdraw[33], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Title)
	TutTxtdraw[34] = TextDrawCreate(168.000000, 120.000000, "Tutorial - San Andreas Fire/Medical Department");
	TextDrawFont(TutTxtdraw[34], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[34], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[34], -1);
	TextDrawSetShadow(TutTxtdraw[34], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 1)
	TutTxtdraw[35] = TextDrawCreate(175.000000, 141.000000, "If you so happen to get injured, You may use ~g~/service ems~w~ to call for");
	TextDrawFont(TutTxtdraw[35], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[35], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[35], -1);
	TextDrawSetOutline(TutTxtdraw[35], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 2)
	TutTxtdraw[36] = TextDrawCreate(175.000000, 151.000000, "help. If the EMS saves you in time, you may keep your personal belongings,");
	TextDrawFont(TutTxtdraw[36], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[36], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[36], -1);
	TextDrawSetOutline(TutTxtdraw[36], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 3)
	TutTxtdraw[37] = TextDrawCreate(175.000000, 161.000000, "without losing them. If you're wanting to become a part of this faction,");
	TextDrawFont(TutTxtdraw[37], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[37], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[37], -1);
	TextDrawSetOutline(TutTxtdraw[37], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 4)
	TutTxtdraw[38] = TextDrawCreate(175.000000, 171.000000, "apply on our forums at ~y~www.ng-gaming.net~w~.");
	TextDrawFont(TutTxtdraw[38], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[38], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[38], -1);
	TextDrawSetOutline(TutTxtdraw[38], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 5)
	TutTxtdraw[39] = TextDrawCreate(175.000000, 204.000000, "If you want to report an emergency, purchase a cellphone and ~g~/call 911~w~");
	TextDrawFont(TutTxtdraw[39], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[39], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[39], -1);
	TextDrawSetOutline(TutTxtdraw[39], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Title)
	TutTxtdraw[40] = TextDrawCreate(168.000000, 120.000000, "Tutorial - SANews");
	TextDrawFont(TutTxtdraw[40], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[40], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[40], -1);
	TextDrawSetShadow(TutTxtdraw[40], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 1)
	TutTxtdraw[41] = TextDrawCreate(175.000000, 141.000000, "There is a ~b~SANews~w~ faction, they handle all the news within San");
	TextDrawFont(TutTxtdraw[41], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[41], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[41], -1);
	TextDrawSetOutline(TutTxtdraw[41], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 2)
	TutTxtdraw[42] = TextDrawCreate(175.000000, 151.000000, "Andreas. They report about anything from gang riots and government");
	TextDrawFont(TutTxtdraw[42], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[42], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[42], -1);
	TextDrawSetOutline(TutTxtdraw[42], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 3)
	TutTxtdraw[43] = TextDrawCreate(175.000000, 161.000000, "corruption, right down to bank robberies. If you wish to become a part of");
	TextDrawFont(TutTxtdraw[43], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[43], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[43], -1);
	TextDrawSetOutline(TutTxtdraw[43], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 4)
	TutTxtdraw[44] = TextDrawCreate(175.000000, 171.000000, "this faction, apply on our forums at ~y~www.ng-gaming.net~w~.");
	TextDrawFont(TutTxtdraw[44], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[44], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[44], -1);
	TextDrawSetOutline(TutTxtdraw[44], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 5)
	TutTxtdraw[45] = TextDrawCreate(175.000000, 204.000000, "If you want to sell items or advertise about a party, use ~g~/ads~w~.");
	TextDrawFont(TutTxtdraw[45], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[45], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[45], -1);
	TextDrawSetOutline(TutTxtdraw[45], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Title)
	TutTxtdraw[46] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Government");
	TextDrawFont(TutTxtdraw[46], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[46], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[46], -1);
	TextDrawSetShadow(TutTxtdraw[46], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 1)
	TutTxtdraw[47] = TextDrawCreate(175.000000, 141.000000, "There is also a ~b~Government~w~ faction, they make all important decisions");
	TextDrawFont(TutTxtdraw[47], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[47], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[47], -1);
	TextDrawSetOutline(TutTxtdraw[47], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 2)
	TutTxtdraw[48] = TextDrawCreate(175.000000, 151.000000, "within San Andreas. They make sure law is enforced in the judicial branch.");
	TextDrawFont(TutTxtdraw[48], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[48], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[48], -1);
	TextDrawSetOutline(TutTxtdraw[48], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 3)
	TutTxtdraw[49] = TextDrawCreate(175.000000, 161.000000, "They also set taxes and pay wages. If you're wanting to become a part of");
	TextDrawFont(TutTxtdraw[49], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[49], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[49], -1);
	TextDrawSetOutline(TutTxtdraw[49], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 4)
	TutTxtdraw[50] = TextDrawCreate(175.000000, 171.000000, "this faction, apply on our forums at ~y~www.ng-gaming.net~w~.");
	TextDrawFont(TutTxtdraw[50], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[50], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[50], -1);
	TextDrawSetOutline(TutTxtdraw[50], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 5)
	TutTxtdraw[51] = TextDrawCreate(175.000000, 204.000000, "If you'd like to donate your money, you may use ~g~/charity~w~.");
	TextDrawFont(TutTxtdraw[51], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[51], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[51], -1);
	TextDrawSetOutline(TutTxtdraw[51], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Title)
	TutTxtdraw[52] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Nation of Tierra Robada");
	TextDrawFont(TutTxtdraw[52], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[52], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[52], -1);
	TextDrawSetShadow(TutTxtdraw[52], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 1)
	TutTxtdraw[53] = TextDrawCreate(175.000000, 141.000000, "~g~Tierra Robada~w~ is an alternate nation seperate from San Andreas.  They");
	TextDrawFont(TutTxtdraw[53], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[53], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[53], -1);
	TextDrawSetOutline(TutTxtdraw[53], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 2)
	TutTxtdraw[54] = TextDrawCreate(175.000000, 151.000000, "have their own laws, law enforcement, government and medical divisions.");
	TextDrawFont(TutTxtdraw[54], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[54], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[54], -1);
	TextDrawSetOutline(TutTxtdraw[54], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 3)
	TutTxtdraw[55] = TextDrawCreate(175.000000, 161.000000, "If you wish to become a part of this faction, apply on our forums");
	TextDrawFont(TutTxtdraw[55], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[55], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[55], -1);
	TextDrawSetOutline(TutTxtdraw[55], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 4)
	TutTxtdraw[56] = TextDrawCreate(175.000000, 171.000000, "at ~y~www.ng-gaming.net~w~.");
	TextDrawFont(TutTxtdraw[56], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[56], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[56], -1);
	TextDrawSetOutline(TutTxtdraw[56], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 5)
	TutTxtdraw[57] = TextDrawCreate(175.000000, 204.000000, "Be sure to pay the toll when you visit from San Fierro!");
	TextDrawFont(TutTxtdraw[57], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[57], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[57], -1);
	TextDrawSetOutline(TutTxtdraw[57], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Title)
	TutTxtdraw[58] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Gangs/Families");
	TextDrawFont(TutTxtdraw[58], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[58], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[58], -1);
	TextDrawSetShadow(TutTxtdraw[58], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 1)
	TutTxtdraw[59] = TextDrawCreate(175.000000, 141.000000, "San Andreas has several different crime related gangs/families to join.");
	TextDrawFont(TutTxtdraw[59], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[59], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[59], -1);
	TextDrawSetOutline(TutTxtdraw[59], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 2)
	TutTxtdraw[60] = TextDrawCreate(175.000000, 151.000000, "Type ~g~/families~w~ to display a list of gangs. Type ~g~/families number~w~ to show");
	TextDrawFont(TutTxtdraw[60], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[60], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[60], -1);
	TextDrawSetOutline(TutTxtdraw[60], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 3)
	TutTxtdraw[61] = TextDrawCreate(175.000000, 161.000000, "thier members. Gang members can take control of the weapons/fuel/drug");
	TextDrawFont(TutTxtdraw[61], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[61], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[61], -1);
	TextDrawSetOutline(TutTxtdraw[61], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 4)
	TutTxtdraw[62] = TextDrawCreate(175.000000, 171.000000, "trade to earn quick cash. If you want to join a gang, be sure to roleplay");
	TextDrawFont(TutTxtdraw[62], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[62], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[62], -1);
	TextDrawSetOutline(TutTxtdraw[62], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 5)
	TutTxtdraw[63] = TextDrawCreate(175.000000, 204.000000, "Type ~g~/turfs~w~ to disply the turf maps.");
	TextDrawFont(TutTxtdraw[63], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[63], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[63], -1);
	TextDrawSetOutline(TutTxtdraw[63], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 6)
	TutTxtdraw[64] = TextDrawCreate(175.000000, 182.000000, "with their leaders, you might get your chance!");
	TextDrawFont(TutTxtdraw[64], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[64], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[64], -1);
	TextDrawSetOutline(TutTxtdraw[64], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Title)
	TutTxtdraw[65] = TextDrawCreate(168.000000, 120.000000, "Tutorial - 24/7 General Store");
	TextDrawFont(TutTxtdraw[65], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[65], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[65], -1);
	TextDrawSetShadow(TutTxtdraw[65], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 1)
	TutTxtdraw[66] = TextDrawCreate(175.000000, 141.000000, "You can purchase different items with the ~g~/buy~w~ command from any 24/7.");
	TextDrawFont(TutTxtdraw[66], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[66], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[66], -1);
	TextDrawSetOutline(TutTxtdraw[66], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 2)
	TutTxtdraw[67] = TextDrawCreate(175.000000, 151.000000, "Buying a cellphone will give you the ability to ~g~/call~w~ or ~g~/sms~w~ other online");
	TextDrawFont(TutTxtdraw[67], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[67], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[67], -1);
	TextDrawSetOutline(TutTxtdraw[67], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 3)
	TutTxtdraw[68] = TextDrawCreate(175.000000, 161.000000, "players. Along with banks, 24/7 stores appear as a green dollar sign on");
	TextDrawFont(TutTxtdraw[68], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[68], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[68], -1);
	TextDrawSetOutline(TutTxtdraw[68], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 4)
	TutTxtdraw[69] = TextDrawCreate(175.000000, 171.000000, "the mini-map.");
	TextDrawFont(TutTxtdraw[69], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[69], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[69], -1);
	TextDrawSetOutline(TutTxtdraw[69], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 5)
	TutTxtdraw[70] = TextDrawCreate(175.000000, 195.000000, "VIPs get special discounts from these stores.");
	TextDrawFont(TutTxtdraw[70], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[70], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[70], -1);
	TextDrawSetOutline(TutTxtdraw[70], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Title)
	TutTxtdraw[71] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Clothing Stores");
	TextDrawFont(TutTxtdraw[71], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[71], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[71], -1);
	TextDrawSetShadow(TutTxtdraw[71], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 1)
	TutTxtdraw[72] = TextDrawCreate(175.000000, 141.000000, "You can purchase different skins with ~g~/buyclothes~w~ from any clothing store.");
	TextDrawFont(TutTxtdraw[72], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[72], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[72], -1);
	TextDrawSetOutline(TutTxtdraw[72], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 2)
	TutTxtdraw[73] = TextDrawCreate(175.000000, 151.000000, "You can also purchase different clothing items with ~g~/buytoys~w~ from any");
	TextDrawFont(TutTxtdraw[73], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[73], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[73], -1);
	TextDrawSetOutline(TutTxtdraw[73], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 3)
	TutTxtdraw[74] = TextDrawCreate(175.000000, 161.000000, "clothing store. Clothing stores appear as a white tee shirt on the");
	TextDrawFont(TutTxtdraw[74], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[74], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[74], -1);
	TextDrawSetOutline(TutTxtdraw[74], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 4)
	TutTxtdraw[75] = TextDrawCreate(175.000000, 171.000000, "mini-map.");
	TextDrawFont(TutTxtdraw[75], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[75], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[75], -1);
	TextDrawSetOutline(TutTxtdraw[75], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 5)
	TutTxtdraw[76] = TextDrawCreate(175.000000, 195.000000, "VIPs get an unrestricted selection of skins from these stores.");
	TextDrawFont(TutTxtdraw[76], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[76], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[76], -1);
	TextDrawSetOutline(TutTxtdraw[76], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Title)
	TutTxtdraw[77] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Car Dealerships");
	TextDrawFont(TutTxtdraw[77], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[77], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[77], -1);
	TextDrawSetShadow(TutTxtdraw[77], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 1)
	TutTxtdraw[78] = TextDrawCreate(175.000000, 141.000000, "You can purchase different vehicles from several different car");
	TextDrawFont(TutTxtdraw[78], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[78], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[78], -1);
	TextDrawSetOutline(TutTxtdraw[78], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 2)
	TutTxtdraw[79] = TextDrawCreate(175.000000, 151.000000, "dealerships. Once purchased, you can control said vehicle with the ~g~/car");
	TextDrawFont(TutTxtdraw[79], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[79], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[79], -1);
	TextDrawSetOutline(TutTxtdraw[79], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 3)
	TutTxtdraw[80] = TextDrawCreate(175.000000, 161.000000, "command. Car dealerships appear as a car on the mini-map.");
	TextDrawFont(TutTxtdraw[80], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[80], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[80], -1);
	TextDrawSetOutline(TutTxtdraw[80], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 4)
	TutTxtdraw[81] = TextDrawCreate(175.000000, 195.000000, "There are several different car dealerships, also in the VIP garage.");
	TextDrawFont(TutTxtdraw[81], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[81], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[81], -1);
	TextDrawSetOutline(TutTxtdraw[81], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Title)
	TutTxtdraw[82] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Houses");
	TextDrawFont(TutTxtdraw[82], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[82], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[82], -1);
	TextDrawSetShadow(TutTxtdraw[82], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 1)
	TutTxtdraw[83] = TextDrawCreate(175.000000, 141.000000, "Houses are player ownable living units that you can purchase from other");
	TextDrawFont(TutTxtdraw[83], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[83], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[83], -1);
	TextDrawSetOutline(TutTxtdraw[83], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 2)
	TutTxtdraw[84] = TextDrawCreate(175.000000, 151.000000, "players or from our e-store. You can store materials, drugs and money");
	TextDrawFont(TutTxtdraw[84], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[84], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[84], -1);
	TextDrawSetOutline(TutTxtdraw[84], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 3)
	TutTxtdraw[85] = TextDrawCreate(175.000000, 161.000000, "into the house safe for keep sakes as long as you own the house.");
	TextDrawFont(TutTxtdraw[85], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[85], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[85], -1);
	TextDrawSetOutline(TutTxtdraw[85], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 4)
	TutTxtdraw[86] = TextDrawCreate(175.000000, 195.000000, "Houses appear as a ~g~green~w~ floating house throughout San Andreas.");
	TextDrawFont(TutTxtdraw[86], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[86], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[86], -1);
	TextDrawSetOutline(TutTxtdraw[86], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Title)
	TutTxtdraw[87] = TextDrawCreate(168.000000, 120.000000, "Tutorial - VIP & E-Store");
	TextDrawFont(TutTxtdraw[87], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[87], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[87], -1);
	TextDrawSetShadow(TutTxtdraw[87], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 1)
	TutTxtdraw[88] = TextDrawCreate(175.000000, 141.000000, "We operate a 24/7 E-Store at ~y~shop.ng-gaming.net~w~, you can purchase Vehicles,");
	TextDrawFont(TutTxtdraw[88], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[88], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[88], -1);
	TextDrawSetOutline(TutTxtdraw[88], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 2)
	TutTxtdraw[89] = TextDrawCreate(175.000000, 151.000000, "Houses, VIP and much much more! We have 4 different VIP levels that users");
	TextDrawFont(TutTxtdraw[89], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[89], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[89], -1);
	TextDrawSetOutline(TutTxtdraw[89], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 3)
	TutTxtdraw[90] = TextDrawCreate(175.000000, 161.000000, "can purchase or obtain - learn more on our shop's website. VIPs have access");
	TextDrawFont(TutTxtdraw[90], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[90], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[90], -1);
	TextDrawSetOutline(TutTxtdraw[90], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 4)
	TutTxtdraw[91] = TextDrawCreate(175.000000, 195.000000, "Want a trial run as a VIP? Ask a VIP for a ~b~buddy invite.");
	TextDrawFont(TutTxtdraw[91], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[91], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[91], -1);
	TextDrawSetOutline(TutTxtdraw[91], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 5)
	TutTxtdraw[92] = TextDrawCreate(175.000000, 172.000000, "to several features, such as VIP chat, special vehicles, and much more!");
	TextDrawFont(TutTxtdraw[92], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[92], 0.159997, 0.899999);
	TextDrawColour(TutTxtdraw[92], -1);
	TextDrawSetOutline(TutTxtdraw[92], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Title)
	TutTxtdraw[93] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Rules");
	TextDrawFont(TutTxtdraw[93], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[93], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[93], -1);
	TextDrawSetShadow(TutTxtdraw[93], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 1)
	TutTxtdraw[94] = TextDrawCreate(175.000000, 141.000000, "Breaking these rules may result in jail/prision time, or leading up to a ban.");
	TextDrawFont(TutTxtdraw[94], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[94], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[94], -1);
	TextDrawSetOutline(TutTxtdraw[94], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 2)
	TutTxtdraw[95] = TextDrawCreate(181.000000, 160.000000, "| No deathmatching - do not kill without a reason.");
	TextDrawFont(TutTxtdraw[95], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[95], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[95], -1);
	TextDrawSetOutline(TutTxtdraw[95], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 3)
	TutTxtdraw[96] = TextDrawCreate(181.000000, 170.000000, "| No revengekilling - you loose 30 minutes of memory when you die.");
	TextDrawFont(TutTxtdraw[96], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[96], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[96], -1);
	TextDrawSetOutline(TutTxtdraw[96], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 4)
	TutTxtdraw[97] = TextDrawCreate(181.000000, 181.000000, "| No carparking - do not park cars on people.");
	TextDrawFont(TutTxtdraw[97], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[97], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[97], -1);
	TextDrawSetOutline(TutTxtdraw[97], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 5)
	TutTxtdraw[98] = TextDrawCreate(181.000000, 192.000000, "| No disconnecting/logging to avoid any roleplay situation.");
	TextDrawFont(TutTxtdraw[98], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[98], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[98], -1);
	TextDrawSetOutline(TutTxtdraw[98], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 6)
	TutTxtdraw[99] = TextDrawCreate(181.000000, 203.000000, "| No account farming/server advertising/cheating/hacking.");
	TextDrawFont(TutTxtdraw[99], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[99], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[99], -1);
	TextDrawSetOutline(TutTxtdraw[99], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Title)
	TutTxtdraw[100] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Credits");
	TextDrawFont(TutTxtdraw[100], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[100], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[100], -1);
	TextDrawSetShadow(TutTxtdraw[100], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 1)
	TutTxtdraw[101] = TextDrawCreate(175.000000, 141.000000, "Be sure to thank who makes all of this possible.");
	TextDrawFont(TutTxtdraw[101], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[101], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[101], -1);
	TextDrawSetOutline(TutTxtdraw[101], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 2)
	TutTxtdraw[102] = TextDrawCreate(181.000000, 160.000000, "Director of Development");
	TextDrawFont(TutTxtdraw[102], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[102], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[102], -1);
	TextDrawSetOutline(TutTxtdraw[102], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 3)
	TutTxtdraw[103] = TextDrawCreate(189.000000, 170.000000, "| Miguel");
	TextDrawFont(TutTxtdraw[103], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[103], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[103], -1);
	TextDrawSetOutline(TutTxtdraw[103], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 4)
	TutTxtdraw[104] = TextDrawCreate(354.000000, 160.000000, "Scripting");
	TextDrawFont(TutTxtdraw[104], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[104], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[104], -1);
	TextDrawSetOutline(TutTxtdraw[104], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 5)
	TutTxtdraw[105] = TextDrawCreate(181.000000, 192.000000, "Special Thanks");
	TextDrawFont(TutTxtdraw[105], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[105], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[105], -1);
	TextDrawSetOutline(TutTxtdraw[105], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 6)
	TutTxtdraw[106] = TextDrawCreate(189.000000, 203.000000, "| JernejL~n~| kyeman~n~");
	TextDrawFont(TutTxtdraw[106], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[106], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[106], -1);
	TextDrawSetOutline(TutTxtdraw[106], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 7)
	TutTxtdraw[107] = TextDrawCreate(362.000000, 169.000000, "| Scott~n~| Donuts~n~| Brendan~n~| GhoulSlayeR~n~| Zhao~n~| Calgon~n~| Beren~n~| Razbit~n~| Sew Sumi~n~| John Milete~n~| Brian~n~| (S)Mo Cena~n~| Kareem~n~|Jac Cakey~n~| Farva~n~| AlexR~n~| Akatony~n~| Neo");
	TextDrawFont(TutTxtdraw[107], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[107], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[107], -1);
	TextDrawSetOutline(TutTxtdraw[107], 1);
	textdrawscount++;
	textdrawscount++;

	// Tutorial (Frame 23) (Title)
	TutTxtdraw[108] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Welcome to San Andreas");
	TextDrawFont(TutTxtdraw[108], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[108], 0.209998, 1.000000);
	TextDrawColour(TutTxtdraw[108], -1);
	TextDrawSetShadow(TutTxtdraw[108], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 1)
	TutTxtdraw[109] = TextDrawCreate(175.000000, 141.000000, "Enough chat, it's time to for us to shut up and for you to play, so if you");
	TextDrawFont(TutTxtdraw[109], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[109], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[109], -1);
	TextDrawSetOutline(TutTxtdraw[109], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 2)
	TutTxtdraw[110] = TextDrawCreate(175.000000, 152.000000, "have any questions, use ~g~/newb~w~. If you need personal help, use");
	TextDrawFont(TutTxtdraw[110], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[110], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[110], -1);
	TextDrawSetOutline(TutTxtdraw[110], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 3)
	TutTxtdraw[111] = TextDrawCreate(175.000000, 163.000000, "~g~/requesthelp~w~. For a list of commands type ~g~/help. ~w~For more information,");
	TextDrawFont(TutTxtdraw[111], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[111], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[111], -1);
	TextDrawSetOutline(TutTxtdraw[111], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 4)
	TutTxtdraw[112] = TextDrawCreate(175.000000, 174.000000, "check out ~y~www.ng-gaming.net~w~.");
	TextDrawFont(TutTxtdraw[112], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[112], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[112], -1);
	TextDrawSetOutline(TutTxtdraw[112], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 5)
	TutTxtdraw[113] = TextDrawCreate(175.000000, 204.000000, "Your weapons will be restricted for the first 2 hours of play.");
	TextDrawFont(TutTxtdraw[113], TEXT_DRAW_FONT_2);
	TextDrawLetterSize(TutTxtdraw[113], 0.159998, 0.899999);
	TextDrawColour(TutTxtdraw[113], -1);
	TextDrawSetOutline(TutTxtdraw[113], 1);
	textdrawscount++;

	TD_LoginScreen = TextDrawCreate(0.000000, 0.000000, "NGRP:loginscreen");
	TextDrawAlignment(TD_LoginScreen, TEXT_DRAW_ALIGN_CENTRE);
	TextDrawFont(TD_LoginScreen, TEXT_DRAW_FONT_SPRITE_DRAW);
	TextDrawLetterSize(TD_LoginScreen, 0.500000, 1.000000);
	TextDrawColour(TD_LoginScreen, -1);
	TextDrawSetShadow(TD_LoginScreen, 1);
	TextDrawUseBox(TD_LoginScreen, true);
	TextDrawBoxColour(TD_LoginScreen, 255);
	TextDrawTextSize(TD_LoginScreen, 640.000000, 452.000000);
	
	print("[Textdraws] Loaded textdraws.");
	
	return 1;
}

PrepTradeToysGUI(playerid, sellerid, price, object)
{
	new string[128];
	InsideTradeToys[playerid] = 1;
	
	// Background
	ttBackground[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 120.000000, "Background"); // Leave the string there, it will fuck up the size of the background if not
	PlayerTextDrawFont(playerid, ttBackground[playerid], TEXT_DRAW_FONT_0);
	PlayerTextDrawLetterSize(playerid, ttBackground[playerid], -0.019998, 34.600002);
	PlayerTextDrawColour(playerid, ttBackground[playerid], -256);
	PlayerTextDrawSetProportional(playerid, ttBackground[playerid], false);
	PlayerTextDrawSetShadow(playerid, ttBackground[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttBackground[playerid], true);
	PlayerTextDrawBoxColour(playerid, ttBackground[playerid], 136);
	PlayerTextDrawTextSize(playerid, ttBackground[playerid], 618.000000, 164.000000);
	
	// Model
	ttModel[playerid] = CreatePlayerTextDraw(playerid, 382.000000, 201.000000, "Model");
	PlayerTextDrawFont(playerid, ttModel[playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawColour(playerid, ttModel[playerid], -1);
	PlayerTextDrawSetShadow(playerid, ttModel[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttModel[playerid], true);
	PlayerTextDrawBoxColour(playerid, ttModel[playerid], 136);
	PlayerTextDrawTextSize(playerid, ttModel[playerid], 171.000000, 145.000000);
	PlayerTextDrawSetPreviewModel(playerid, ttModel[playerid], object);
	PlayerTextDrawSetPreviewRot(playerid, ttModel[playerid], 0.000000, 0.000000, -180.000000, 1.000000);
	
	// Object Info
	format(string, sizeof(string), "(Object ID %d)", object);
	ttObjectInfo[playerid] = CreatePlayerTextDraw(playerid, 400.000000, 182.000000, string);
	PlayerTextDrawLetterSize(playerid, ttObjectInfo[playerid], 0.310000, 1.000000);
	PlayerTextDrawColour(playerid, ttObjectInfo[playerid], -1);
	PlayerTextDrawSetShadow(playerid, ttObjectInfo[playerid], 1);
	
	// Logo
	ttLogo[playerid] = CreatePlayerTextDraw(playerid, 264.000000, 121.000000, "Trade a Toy");
	PlayerTextDrawFont(playerid, ttLogo[playerid], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, ttLogo[playerid], 0.379999, 1.500000);
	PlayerTextDrawColour(playerid, ttLogo[playerid], 542758143);
	PlayerTextDrawSetShadow(playerid, ttLogo[playerid], 1);
	
	// Purchase
	ttPurchase[playerid] = CreatePlayerTextDraw(playerid, 91.000000, 295.000000, "Purchase");
	PlayerTextDrawLetterSize(playerid, ttPurchase[playerid], 0.500000, 1.700000);
	PlayerTextDrawColour(playerid, ttPurchase[playerid], 16711935);
	PlayerTextDrawSetOutline(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttPurchase[playerid], true);
	PlayerTextDrawBoxColour(playerid, ttPurchase[playerid], 1625166370);
	PlayerTextDrawTextSize(playerid, ttPurchase[playerid], 164.000000, 4.000000);
	PlayerTextDrawSetSelectable(playerid, ttPurchase[playerid], true);
	
	// Decline
	ttDecline[playerid] = CreatePlayerTextDraw(playerid, 254.000000, 295.000000, "Decline");
	PlayerTextDrawLetterSize(playerid, ttDecline[playerid], 0.500000, 1.799999);
	PlayerTextDrawColour(playerid, ttDecline[playerid], -16776961);
	PlayerTextDrawSetShadow(playerid, ttDecline[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttDecline[playerid], true);
	PlayerTextDrawBoxColour(playerid, ttDecline[playerid], -234414302);
	PlayerTextDrawTextSize(playerid, ttDecline[playerid], 310.000000, 0.000000);
	
	// Offer
	format(string, sizeof(string), "%s has offered to sell you this toy for $%s", GetPlayerNameEx(sellerid), number_format(price));
	ttOffer[playerid] = CreatePlayerTextDraw(playerid, 71.000000, 174.000000, string);
	PlayerTextDrawLetterSize(playerid, ttOffer[playerid], 0.310000, 1.000000);
	PlayerTextDrawColour(playerid, ttOffer[playerid], -1);
	PlayerTextDrawSetShadow(playerid, ttOffer[playerid], 1);
	
	// Note
	ttNote[playerid] = CreatePlayerTextDraw(playerid, 74.000000, 221.000000, "If you would like to purchase this toy, press 'Y' on your keyboard, otherwise, press 'N' on your keyboard.");
	PlayerTextDrawLetterSize(playerid, ttNote[playerid], 0.150000, 1.000000);
	PlayerTextDrawColour(playerid, ttNote[playerid], -1);
	PlayerTextDrawSetShadow(playerid, ttNote[playerid], 1);
	
	// Yes 
	ttYes[playerid] = CreatePlayerTextDraw(playerid, 117.000000, 275.000000, "'Y'");
	PlayerTextDrawLetterSize(playerid, ttYes[playerid], 0.500000, 1.000000);
	PlayerTextDrawColour(playerid, ttYes[playerid], 16711935);
	PlayerTextDrawSetShadow(playerid, ttYes[playerid], 1);

	// No 
	ttNo[playerid] = CreatePlayerTextDraw(playerid, 270.000000, 271.000000, "'N'");
	PlayerTextDrawLetterSize(playerid, ttNo[playerid], 0.500000, 1.000000);
	PlayerTextDrawColour(playerid, ttNo[playerid], -16776961);
	PlayerTextDrawSetShadow(playerid, ttNo[playerid], 1);
	
	PlayerTextDrawShow(playerid, ttBackground[playerid]);
	PlayerTextDrawShow(playerid, ttModel[playerid]);
	PlayerTextDrawShow(playerid, ttObjectInfo[playerid]);
	PlayerTextDrawShow(playerid, ttLogo[playerid]);
	PlayerTextDrawShow(playerid, ttPurchase[playerid]);
	PlayerTextDrawShow(playerid, ttDecline[playerid]);
	PlayerTextDrawShow(playerid, ttOffer[playerid]);
	PlayerTextDrawShow(playerid, ttNote[playerid]);
	PlayerTextDrawShow(playerid, ttYes[playerid]);
	PlayerTextDrawShow(playerid, ttNo[playerid]);
	return 1;
}

HideTradeToysGUI(playerid)
{
	InsideTradeToys[playerid] = 0;
	PlayerTextDrawHide(playerid, ttBackground[playerid]);
	PlayerTextDrawHide(playerid, ttModel[playerid]);
	PlayerTextDrawHide(playerid, ttObjectInfo[playerid]);
	PlayerTextDrawHide(playerid, ttLogo[playerid]);
	PlayerTextDrawHide(playerid, ttPurchase[playerid]);
	PlayerTextDrawHide(playerid, ttDecline[playerid]);
	PlayerTextDrawHide(playerid, ttOffer[playerid]);
	PlayerTextDrawHide(playerid, ttNote[playerid]);
	PlayerTextDrawHide(playerid, ttYes[playerid]);
	PlayerTextDrawHide(playerid, ttNo[playerid]);
	return 1;
}

CreateHungerGamesTextdraw(playerid)
{
	new string[128];
	
	// Create the Player Count Textdraw
	format(string, sizeof(string), "Players in event: %d", hgPlayerCount);
	HungerPlayerInfo[playerid][hgPlayerText] = CreatePlayerTextDraw(playerid, 41.000000, 433.000000, string);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgPlayerText], 0.250000, 0.899999);
	PlayerTextDrawColour(playerid, HungerPlayerInfo[playerid][hgPlayerText], -1);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgPlayerText], 1);
	
	// Create the loading textdraw
	HungerPlayerInfo[playerid][hgLoadingText] = CreatePlayerTextDraw(playerid, 549.000000, 423.000000, "The Hunger Games is loading...");
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgLoadingText], 0.160000, 0.699999);
	PlayerTextDrawColour(playerid, HungerPlayerInfo[playerid][hgLoadingText], -16776961);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgLoadingText], 1);

	// Create the time left textdraw
	format(string, sizeof(string), "Time left until start: %d", hgCountdown);
	HungerPlayerInfo[playerid][hgTimeLeftText] = CreatePlayerTextDraw(playerid, 549.000000, 432.000000, string);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 0.210000, 1.000000);
	PlayerTextDrawColour(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], -1);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 1);

	// Create the credits textdraw
	HungerPlayerInfo[playerid][hgCreditsText] = CreatePlayerTextDraw(playerid, 532.000000, 2.000000, "The Hunger Games, by Akatony");
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgCreditsText], 0.190000, 0.699999);
	PlayerTextDrawColour(playerid, HungerPlayerInfo[playerid][hgCreditsText], -16776961);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgCreditsText], 1);
	
	// Show the textdraws
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgPlayerText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgLoadingText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgTimeLeftText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgCreditsText]);
	return true;
}

HideHungerGamesTextdraw(playerid)
{
	// Hide the textdraws
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgPlayerText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgLoadingText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgTimeLeftText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgCreditsText]);
	return true;
}

ShowFPSCounter(playerid)
{
	format(szMiscArray, sizeof(szMiscArray), "%d", pFPS[playerid]);
	pFPSCounter[playerid] = CreatePlayerTextDraw(playerid,617.000000, 2.000000, szMiscArray);
	PlayerTextDrawFont(playerid,pFPSCounter[playerid], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid,pFPSCounter[playerid], 0.370000, 1.200000);
	PlayerTextDrawColour(playerid,pFPSCounter[playerid], -65281);
	PlayerTextDrawSetOutline(playerid,pFPSCounter[playerid], 1);
	
	PlayerTextDrawShow(playerid, pFPSCounter[playerid]);
	return true;
}

HideFPSCounter(playerid)
{
	PlayerTextDrawHide(playerid, pFPSCounter[playerid]);
	return true;
}

CreatePlayerTextDraws(playerid)
{
	//GPS text draw
	GPS[playerid] = CreatePlayerTextDraw(playerid,95.000000, 319.000000, "Loading...");
	PlayerTextDrawAlignment(playerid, GPS[playerid], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawFont(playerid, GPS[playerid], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid, GPS[playerid], 0.250000, 1.800000);
	PlayerTextDrawColour(playerid, GPS[playerid], -1);
	PlayerTextDrawSetOutline(playerid, GPS[playerid], 1);
	
	//Shop Notice Textdraw
	ShopNotice[playerid] = CreatePlayerTextDraw(playerid,16.000000, 193.000000, "_");
	PlayerTextDrawLetterSize(playerid, ShopNotice[playerid], 0.289999, 1.299999);
	PlayerTextDrawColour(playerid, ShopNotice[playerid], -1);
	PlayerTextDrawSetShadow(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawUseBox(playerid, ShopNotice[playerid], true);
	PlayerTextDrawBoxColour(playerid, ShopNotice[playerid], 75);
	PlayerTextDrawTextSize(playerid, ShopNotice[playerid], 186.000000, 63.000000);
	
	MicroNotice[playerid] = CreatePlayerTextDraw(playerid,16.000000, 160.000000, "_");
	PlayerTextDrawLetterSize(playerid,MicroNotice[playerid], 0.159999, 1.000000);
	PlayerTextDrawColour(playerid,MicroNotice[playerid], -1);
	PlayerTextDrawSetOutline(playerid,MicroNotice[playerid], 1);
	PlayerTextDrawUseBox(playerid,MicroNotice[playerid], true);
	PlayerTextDrawBoxColour(playerid,MicroNotice[playerid], 85);
	PlayerTextDrawTextSize(playerid,MicroNotice[playerid], 183.000000, 0.000000);

	//LEO Textdraws
	BackupText[playerid] = CreatePlayerTextDraw(playerid, 505 ,179 , "~r~Backup call active");
	PlayerTextDrawLetterSize(playerid,BackupText[playerid] , 0.270000, 2.000000);
	PlayerTextDrawColour(playerid,BackupText[playerid] , -1);
	PlayerTextDrawSetOutline(playerid,BackupText[playerid] , 1);
	PlayerTextDrawSetShadow(playerid, BackupText[playerid] , 1);
	
	//Vehicle Textdraws
	_vhudFlash[playerid] = CreatePlayerTextDraw(playerid, -20.000000, 2.000000,"|");
	PlayerTextDrawUseBox(playerid,_vhudFlash[playerid],true);
 	PlayerTextDrawBoxColour(playerid,_vhudFlash[playerid],0xffffff55);
  	PlayerTextDrawTextSize(playerid,_vhudFlash[playerid],660.000000,22.000000);
    PlayerTextDrawFont(playerid,_vhudFlash[playerid],TEXT_DRAW_FONT_3);
    PlayerTextDrawLetterSize(playerid,_vhudFlash[playerid],1.000000,52.200000);
    PlayerTextDrawColour(playerid,_vhudFlash[playerid],0xffffffff);
    PlayerTextDrawSetOutline(playerid,_vhudFlash[playerid], 1);

	_vhudTextFuel[playerid] = CreatePlayerTextDraw(playerid, 495.000000, 133.000000, "~b~Fuel: N/A");
	PlayerTextDrawLetterSize(playerid, _vhudTextFuel[playerid], 0.270000, 2.000000);
	PlayerTextDrawColour(playerid, _vhudTextFuel[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudTextFuel[playerid], 1);

	_vhudTextSpeed[playerid] = CreatePlayerTextDraw(playerid, 555.000000, 133.000000, "~b~MPH: N/A");
	PlayerTextDrawLetterSize(playerid, _vhudTextSpeed[playerid], 0.270000, 2.000000);
	PlayerTextDrawColour(playerid, _vhudTextSpeed[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudTextSpeed[playerid], 1);

	_vhudSeatBelt[playerid] = CreatePlayerTextDraw(playerid, 555.000000, 150.000000, "~b~SB: ~r~OFF");
	PlayerTextDrawLetterSize(playerid, _vhudSeatBelt[playerid], 0.270000, 2.000000);
	PlayerTextDrawColour(playerid, _vhudSeatBelt[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudSeatBelt[playerid], 1);

	_vhudLights[playerid] = CreatePlayerTextDraw(playerid, 495.000000, 150.000000, "~b~Lights: ~r~OFF");
	PlayerTextDrawLetterSize(playerid, _vhudLights[playerid], 0.270000, 2.000000);
	PlayerTextDrawColour(playerid, _vhudLights[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudLights[playerid], 1);
	
	_crTextTarget[playerid] = CreatePlayerTextDraw(playerid, 320.000000, 388.000000, "Target Vehicle: ~r~N/A");
	PlayerTextDrawAlignment(playerid, _crTextTarget[playerid], TEXT_DRAW_ALIGN_CENTRE);
	PlayerTextDrawLetterSize(playerid, _crTextTarget[playerid], 0.500000, 1.600000);
	PlayerTextDrawColour(playerid, _crTextTarget[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTextTarget[playerid], 1);

	_crTextSpeed[playerid] = CreatePlayerTextDraw(playerid, 190.000000, 410.000000, "Speed: ~r~N/A");
	PlayerTextDrawLetterSize(playerid, _crTextSpeed[playerid], 0.500000, 1.600000);
	PlayerTextDrawColour(playerid, _crTextSpeed[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTextSpeed[playerid], 1);
	
	_crTickets[playerid] = CreatePlayerTextDraw(playerid, 340.000000, 410.000000, "Tickets: ~r~N/A");
	PlayerTextDrawLetterSize(playerid, _crTickets[playerid], 0.500000, 1.600000);
	PlayerTextDrawColour(playerid, _crTickets[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTickets[playerid], 1);
	
	_vhudVisible[playerid] = 0;

	HospTime[playerid] = CreatePlayerTextDraw(playerid,250.000000, 430.000000, "Time Left: ~r~60 ~w~seconds");
	PlayerTextDrawLetterSize(playerid, HospTime[playerid], 0.380000, 1.000000);
	PlayerTextDrawColour(playerid, HospTime[playerid], -1);
	PlayerTextDrawSetShadow(playerid, HospTime[playerid], 1);
	return 1;
}

CreateAccountRestTextdraw(playerid)
{
	AccountRestriction[playerid] = CreatePlayerTextDraw(playerid,650.000000, 456.000000, ".");
	PlayerTextDrawAlignment(playerid,AccountRestriction[playerid], TEXT_DRAW_ALIGN_RIGHT);
	PlayerTextDrawLetterSize(playerid,AccountRestriction[playerid], 0.500000, -3.300000);
	PlayerTextDrawColour(playerid,AccountRestriction[playerid], -1);
	PlayerTextDrawSetShadow(playerid,AccountRestriction[playerid], 1);
	PlayerTextDrawUseBox(playerid,AccountRestriction[playerid], true);
	PlayerTextDrawBoxColour(playerid,AccountRestriction[playerid], 255);
	PlayerTextDrawTextSize(playerid,AccountRestriction[playerid], 0.000000, 0.000000);

	AccountRestrictionEx[playerid] = CreatePlayerTextDraw(playerid,39.000000, 428.000000, "Your account is restricted, please contact a member of the RP Improvement Team.");
	PlayerTextDrawFont(playerid,AccountRestrictionEx[playerid], TEXT_DRAW_FONT_2);
	PlayerTextDrawLetterSize(playerid,AccountRestrictionEx[playerid], 0.300000, 2.000000);
	PlayerTextDrawColour(playerid,AccountRestrictionEx[playerid], -16776961);
	PlayerTextDrawSetShadow(playerid,AccountRestrictionEx[playerid], 1);
	return true;
}