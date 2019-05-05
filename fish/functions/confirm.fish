# Simple yes/no confirmation
function confirm
  while true
    read --local confirm --prompt-str "$argv [Y/n] "
    switch $confirm
      case N n
        return 1
      case '' Y y
        return 0
    end
  end
end
