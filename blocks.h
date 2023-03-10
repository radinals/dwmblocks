//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/       /*Command*/                                /*Interval*/ /*Signal*/
	{"", "$HOME/.local/share/dwmblocks/cmus-status", 		5,        5},
	{"", "$HOME/.local/share/dwmblocks/wifi-id",			5,       11},
	{"", "$HOME/.local/share/dwmblocks/volume-levels",		5,       10},
	{"UP: ", "uptime -p | cut -d ' ' -f2- | sed 's/minute./Min/g; s/hour./Hr/g; s/day./D/g'",15,       12},
	// {"", "/usr/local/share/dwmblocks-scripts/mic-volume", 		5,       12},
	{"", "date '+%a, %d %b %y - %I:%M%p'", 				5,        0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
