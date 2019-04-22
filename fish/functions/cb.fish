# Clipboard copy/paste
function cb --argument-names action value
  switch "$action"
    case copy cp c
      if command test -p /dev/stdin
        while read --local next_value
          test -n "$value"
          and set sep \n
          set value "$value$sep$next_value"
        end
      end

      if test -z "$value"
        echo (set_color red)Nothing to copy(set_color normal)
        return 1
      end

      echo "$value" | xclip -in -selection clipboard

      echo "$value"
      echo (set_color green)Copied to clipboard(set_color normal)
      return 0
    case paste ps p
      xclip -out -selection clipboard
      return $status
    case ''
      echo (set_color red)No action(set_color normal)
      return 1
    case '*'
      echo (set_color red)Invalid action: (set_color normal)$action
      return 1
  end
end
