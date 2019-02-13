function add_to
  set pathname $argv[1]
  set paths $argv[2..-1]

  for path in $paths
    if not contains $path $$pathname; and test -d $path
      set --global --export $pathname $$pathname $path
    end
  end
end

# Add custom bins and npm bins to PATH
# Use yarn offline flag to avoid warning when offline
# Prefer local npm bins (in node_modules) to global ones
add_to PATH ~/.bin (yarn bin --offline) (yarn global bin --offline)

# Add frequent dirs to CDPATH for fast navition
# cd into their subdirs from anywhere
add_to CDPATH . ~ ~/dev ~/Desktop

functions -e add_to
