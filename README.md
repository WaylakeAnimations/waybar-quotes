# waybar-quotes
Highly configurable random text splash module that can be used to replace hyprland's text splash system.

### Main features :
- Ability to add custom quotes yourself,
- Can be styled just like any other waybar modules (font, color, etc.),
- Quote can be rerolled (by left-clicking the text),
- It's Pretty lightweight.

### Installation :
- Create a new directory
```
mkdir ~/.config/waybar-quotes
```
- Go to the directory you've made
```
cd ~/.config/waybar-quotes
```
- Clone this repo
```
git clone https://github.com/PigmanBruh/waybar-quotes.git
```
- Add this to your auto-start entry
```
waybar -c ~/.config/waybar-quotes/config.jsonc -s ~/.config/waybar-quotes/style.css
```
on hyprland for example, `exec-once` is used for auto-starting
