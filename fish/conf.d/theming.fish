# Set emoji width (prevents glitches in GNOME terminal)
if test "$TERM_PROGRAM" = "vscode"
  set fish_emoji_width 1
else
  set fish_emoji_width 2
end

# Prompt symbol
set pure_color_prompt_on_success (set_color green)
set symbol_prompt '➜'
new_random_emoji

# Misc
set pure_color_current_directory (set_color cyan)
set pure_symbol_title_bar_separator '-' # Window title separator
