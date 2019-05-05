# Copy machine-readable system specs to clipboard
function specs --wraps neofetch
  neofetch --stdout | cb copy
end
