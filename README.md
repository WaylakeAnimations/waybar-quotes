![banner](https://github.com/PigmanBruh/waybar-quotes/assets/87263998/1e875c4f-39d3-4f8f-9be3-55958e0e2c6c)
# waybar-quotes
Highly configurable random splash text system that can be used to replace hyprland's text splash system.

### Features
- Ability to add, edit, or delete quotes yourself,
- Can be customized just like any other waybar modules (font, color, etc.),
- Quote can be re-rolled by left-clicking the text,
- Modular (you could literally hook this up with anything that can read and display a text file)
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
- Give executable permission to the script
```
chmod +x ./waybar-quotes/quote_picker.sh
```
- Add this to your auto-start entry
```
waybar -c ~/.config/waybar-quotes/config.jsonc -s ~/.config/waybar-quotes/style.css
```
on hyprland for example, `exec-once` is used for auto-starting<br><br>
The font i use here is [Outfit](https://fonts.google.com/specimen/Outfit)

### How This Works
- Waybar starts with the wm and execute the script
- `quote_picker.sh` randomly select a line from `quotes.txt` and save it to `picked_quote.txt`
- The waybar module read `picked_quote.txt`
- The quote is displayed
- The script executes again when you click the text and the quote gets re-rolled
