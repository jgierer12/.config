function new-random-emoji
  set emojis 😅 👽 🔥 🚀 👻 🍔 😄 🍰 😎 😇 😼 💪 🦄 🌮 💯 🐳 🤩 🤯 🐶 🐻 🦊 ✨ ⚡️ 💫 🔮 🎊

  if test "$fish_emoji_width" = 1
    set spaces "  "
  else
    set spaces " "
  end

  set pure_symbol_prompt (random choice $emojis)$spaces$symbol_prompt
end
