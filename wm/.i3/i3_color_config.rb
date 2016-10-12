#Repalce function was pulled from http://stackoverflow.com/questions/4841089/replace-content-in-a-file-between-two-markers
theme = ARGV[0]
theme_path = "/home/doctorly/.colors/#{theme}"

def replace(file_path, contents, search_string)
    file = File.open(file_path, "r+")
    source = ""

    while(!file.eof?)
        source += file.readline
    end

    file.close()

    target = source.gsub(/#{search_string}/im, contents)

    file = File.open(file_path, "w")
    file.puts target
    file.close
end

file = File.open(theme_path, "r+")

@colors = {}
file.each_line do |line|
  if line.to_s.match(/color/)
    name = line.match(/color\d*/)[0]
    val  = line.match(/#.*/)[0]
    @colors[name] = val
  end

  if line.to_s.match(/[a-z]*ground/)
    name = line.match(/[a-z]*ground/)[0]
    val  = line.match(/#.*/)[0]
    @colors[name] = val
  end
end

config_start_point = "# COLOR CONFIGURATION START\n"
config_end_point   = "\n# COLOR CONFIGURATION END"

colors = "\
  # Colors
  set $foreground  #{@colors["foreground"]}
  set $background  #{@colors["background"]}
  set $black       #{@colors["color0"]}
  set $darkgray    #{@colors["color8"]}
  set $darkred     #{@colors["color1"]}
  set $red         #{@colors["color9"]}
  set $darkgreen   #{@colors["color2"]}
  set $green       #{@colors["color10"]}
  set $darkyellow  #{@colors["color3"]}
  set $yellow      #{@colors["color11"]}
  set $darkblue    #{@colors["color4"]}
  set $blue        #{@colors["color12"]}
  set $darkmagenta #{@colors["color5"]}
  set $magenta     #{@colors["color13"]}
  set $darkcyan    #{@colors["color6"]}
  set $cyan        #{@colors["color14"]}
  set $lightgrey   #{@colors["color7"]}
  set $lightgrey   #{@colors["color7"]}
  set $white       #{@colors["color15"]}"

window_config = "
  # Window colors          border    backgr.      text    indicator
  client.focused           darkgray  $black       $white  $darkgray
  client.unfocused         darkgray  $black       $white  $darkgray
  client.focused_inactive  darkgray  $black       $white  $darkgray
  client.urgent            yellow    $darkyellow  $dark   $darkgray

  bar {
    position bottom
    #font pango:Ubuntu Mono, FontAwesome 12
    font pango:Ubuntu Mono, FontAwesome 18
    status_command ~/.i3/conky.sh
    tray_output none

    colors {
      statusline      $foreground
      background      $background

      # Colors                border          backgr.             text
      focused_workspace       $foreground     $foreground         $background
      active_workspace        $foreground     $background         $foreground
      inactive_workspace      $foreground     $background         $foreground
      urgent_workspace        $yellow         $darkyellow         $dark
    }
  }
"

bar_colors = "\
--# COLOR CONFIGURATION START
  foreground  = \"#{@colors["foreground"]}\"
  background  = \"#{@colors["background"]}\"
  black       = \"#{@colors["color0"]}\"
  darkgray    = \"#{@colors["color8"]}\"
  darkred     = \"#{@colors["color1"]}\"
  red         = \"#{@colors["color9"]}\"
  darkgreen   = \"#{@colors["color2"]}\"
  green       = \"#{@colors["color10"]}\"
  darkyellow  = \"#{@colors["color3"]}\"
  yellow      = \"#{@colors["color11"]}\"
  darkblue    = \"#{@colors["color4"]}\"
  blue        = \"#{@colors["color12"]}\"
  darkmagenta = \"#{@colors["color5"]}\"
  magenta     = \"#{@colors["color13"]}\"
  darkcyan    = \"#{@colors["color6"]}\"
  cyan        = \"#{@colors["color14"]}\"
  lightgrey   = \"#{@colors["color7"]}\"
  white       = \"#{@colors["color15"]}\"
--# COLOR CONFIGURATION END"

color_path = "\
! COLOR CONFIGURATION START
#include \"#{theme_path}\"
! COLOR CONFIGURATION END"

puts @colors

replace("/home/doctorly/dotfiles/wm/.i3/config", config_start_point + colors + window_config + config_end_point, "# COLOR CONFIGURATION START(.*)# COLOR CONFIGURATION END")
replace("/home/doctorly/dotfiles/wm/.i3/conky.lua", bar_colors, "--# COLOR CONFIGURATION START(.*)--# COLOR CONFIGURATION END")
replace("/home/doctorly/dotfiles/system/.Xdefaults", color_path, "! COLOR CONFIGURATION START(.*)! COLOR CONFIGURATION END")

#`xrdb /home/doctorly/.Xdefaults`
`i3 restart`

