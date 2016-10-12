conky.config = {
-- Conky configuration file
-- Output is printed to the console -> i3bar

--# No output to X <yes/no>
	out_to_x = false,

--# Create own window to draw <yes/no>
	own_window = false,

--# Print everything to console?
	out_to_console = true,

--# Use double buffering (reduces flicker, not needed for console output)
	double_buffer = false,

--# Set to yes if you want Conky to be forked in the background
	background = false,

--# Update interval in seconds
	update_interval = 2,

--# This is the number of times Conky will update before quitting.
--# Set to zero to run forever.
	total_run_times = 0,

--# Shortens units to a single character (kiB->k, GiB->G, etc.). Default is off.
	short_units = true,

--# How strict should if_up be when testing an interface for being up?
--# The value is one of up, link or address, to check for the inace
--# being solely up, being up and having link or being up, having link
--# and an assigned IP address.
	if_up_strictness = 'address',

--# Add spaces to keep things from moving about?  This only affects certain objects.
--# use_spacer should have an argument of left, right, or none
	use_spacer = 'none',

--# Force UTF8? note that UTF8 support required XFT
	override_utf8_locale = false,


--# number of cpu samples to average
--# set to 1 to disable averaging

	template0 = [["border_bottom": 2, "border_top": 0, "border_left": 0, "border_right": 2]],

--# Stuff after 'TEXT' will be formatted on screen
};

--# COLOR CONFIGURATION START
  foreground  = "#bec2d4"
  background  = "#282A36"
  black       = "#000000"
  darkgray    = "#4D4D4D"
  darkred     = "#FF5555"
  red         = "#FF6E67"
  darkgreen   = "#50FA7B"
  green       = "#5AF78E"
  darkyellow  = "#F1FA8C"
  yellow      = "#F4F99D"
  darkblue    = "#CAA9FA"
  blue        = "#CAA9FA"
  darkmagenta = "#FF79C6"
  magenta     = "#FF92D0"
  darkcyan    = "#8BE9FD"
  cyan        = "#9AEDFE"
  lightgrey   = "#BFBFBF"
  white       = "#E6E6E6"
--# COLOR CONFIGURATION END

conky.text = [[
[
  #{"full_text": "${execpi 60 ruby /run/media/doctorly/2cac840c-acc1-4ae4-9abd-8175eb7200cc/work/ruby/rubygmail/rgmail.rb testmailtestertesting#foobarbaz a}", "color":"\#a6a6a6"},\

  #${if_match ${execpi 600 python3 ~/.bin/gmail.py}>0}{"full_text": "", "color" : "\#799F26"},\
  #$else{"full_text": "", "color" : "\#839496"},$endif\

  {"full_text": "", "color" : "\]]..white..[["},
  ${if_up wlp1s0}{"full_text": "${wireless_essid wlp1s0} [${wireless_link_qual_perc wlp1s0}%] ","color":"\]]..white..[["},
  $else${if_up ppp0}{"full_text": "orange","color":"\]]..white..[["},
  $else${if_up enp4s0}{"full_text": "enp4s0","color":"\]]..white..[["},
  $else{"full_text": "no connection","color":"\]]..red..[["},$endif$endif$endif

  {"full_text": "", "color" : "\]]..white..[["},\
  { "full_text" : "${battery_percent BAT0}% " , "color" :
  ${if_match ${battery_percent BAT0}<30}"\]]..darkyellow..[["${else}"\]]..darkgreen..[["${endif} },\
#  {"full_text": "[$battery_percent%] ","color":"\]]..white..[["},\


  {"full_text": "", "color" : "\]]..white..[["},\
  {"full_text": "${execpi 60 amixer sget Speaker | grep "Front Left:" | cut -d " " -f6}", "color":"\]]..white..[["},\

  {"full_text": " ", "color" : "\]]..white..[["},\
  {"full_text": "${time %I:%M}","color":"\]]..white..[["}
],
]];
