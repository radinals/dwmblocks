//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"", "/usr/local/bin/dwmblocks-modules/cmus-playing",       5,       5},
	{"", "/usr/local/bin/dwmblocks-modules/pulse-volume",	    	5,  		10},
	{"", "/usr/local/bin/dwmblocks-modules/cputemp",           	5,  		12},
	{"", "/usr/local/bin/dwmblocks-modules/memory",      	    	5,  		13},
	{"", "/usr/local/bin/dwmblocks-modules/wifi",	             	5,  		11},
	{"", "/usr/local/bin/dwmblocks-modules/date",				        5,       0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
