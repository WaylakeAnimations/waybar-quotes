# waybar-quotes
Highly configurable random splash text system that can be used to replace hyprland's text splash system.

### Main features
- Ability to add custom quotes yourself,
- Can be customized just like any other waybar modules (font, color, etc.),
- Quote can be re-rolled by left-clicking the text,
- It's pretty lightweight.

### Installation
- Go to the `.config` directory
```
cd ~/.config/
```
- Clone this repo
```
git clone https://github.com/PigmanBruh/waybar-quotes.git
```
- Add this to your auto-start entry
```
waybar -c ~/.config/waybar-quotes/config.jsonc -s ~/.config/waybar-quotes/style.css
```
on hyprland for example, `exec-once` is used for auto-starting<br><br>
The font i use here is [Outfit](https://fonts.google.com/specimen/Outfit)

### How This Works
- Waybar starts with the wm
- `quote_picker.sh` randomly select a line from `quotes.txt` and save it to `picked_quote.txt`
- The waybar module read `picked_quote.txt`
- The quote is displayed
- The script executes again when you click the text and the quote gets re-rolled
