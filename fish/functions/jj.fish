# Jump, but echo target dir to stdout instead of cd-ing
function jj
  set hint (jump hint $argv)
  set hint_pretty (string replace ~ "~" "$hint")
  set info_line (set_color yellow)"$argv"(set_color normal)" ~> "(set_color cyan)"$hint_pretty"(set_color normal)
  set prompt "$info_line"\n"Continue?"

  if confirm $prompt
    echo $hint
    return 0
  else
    return 1
  end
end
