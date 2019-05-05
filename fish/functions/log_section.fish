# Simple reusable section header
function log_section
  set color $argv[1]
  set message $argv[2..-1]

  echo \n(set_color --bold $color)==== $message ====(set_color normal)
end
