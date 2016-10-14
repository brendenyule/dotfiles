base = "/home/doctorly/Base2Tone-iterm2/ColorPresets/"

colors = [
  "base2tone-cave-light.itermcolors",
  "base2tone-desert-dark.itermcolors",
  "base2tone-desert-light.itermcolors",
  "base2tone-drawbridge-dark.itermcolors",
  "base2tone-drawbridge-light.itermcolors",
  "base2tone-earth-dark.itermcolors",
  "base2tone-earth-light.itermcolors",
  "base2tone-evening-dark.itermcolors",
  "base2tone-evening-light.itermcolors",
  "base2tone-forest-dark.itermcolors",
  "base2tone-forest-light.itermcolors",
  "base2tone-heath-dark.itermcolors",
  "base2tone-heath-light.itermcolors",
  "base2tone-lake-dark.itermcolors",
  "base2tone-lake-light.itermcolors",
  "base2tone-meadow-dark.itermcolors",
  "base2tone-meadow-light.itermcolors",
  "base2tone-morning-dark.itermcolors",
  "base2tone-morning-light.itermcolors",
  "base2tone-pool-dark.itermcolors",
  "base2tone-pool-light.itermcolors",
  "base2tone-sea-dark.itermcolors",
  "base2tone-sea-light.itermcolors",
  "base2tone-space-dark.itermcolors",
  "base2tone-space-light.itermcolors",
]

colors.each do |color|
 `ruby /home/doctorly/itermcolors2xdefaults/itermcolors2Xdefaults.rb #{base}#{color} | cat >> /home/doctorly/duotone_x/#{color.chomp(".itermcolors")}`
end
