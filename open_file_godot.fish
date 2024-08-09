#!/usr/bin/fish

if not kitty @ focus-window --match 'title:Godot'
    kitty --title=Godot helix
end

kitty @ send-text --match 'title:Godot' \x1b\x1b:open $argv[1]$argv[2] \xd$argv[3]gg$argv[4]l

# {project}{file} \xd {line}gg {col}l
