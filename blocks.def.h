//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /*Icon*/	    /*Command*/		                             /*Update Interval*/  /*Update Signal*/
    {"", "/usr/local/share/dwmblocks-scripts/cmus-status",                   5,               5},
    {"", "/usr/local/share/dwmblocks-scripts/wifi-id",                       5,              11},
    {"", "/usr/local/share/dwmblocks-scripts/volume-levels",	             5,              10},
    {"", "echo $(date '+%A, %d %B %Y - %I:%M%p')", 	                     5,               0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
