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
  foreground  = "#a1b5a1"
  background  = "#2a2d2a"
  black       = "#2a2d2a"
  darkgray    = "#535f53"
  darkred     = "#5c705c"
  red         = "#cbe25a"
  darkgreen   = "#bfd454"
  green       = "#353b35"
  darkyellow  = "#e5fb79"
  yellow      = "#485148"
  darkblue    = "#687d68"
  blue        = "#5e6e5e"
  darkmagenta = "#bfd454"
  magenta     = "#c8e4c8"
  darkcyan    = "#8fae8f"
  cyan        = "#b1c44f"
  lightgrey   = "#a1b5a1"
  white       = "#f0fff0"
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
