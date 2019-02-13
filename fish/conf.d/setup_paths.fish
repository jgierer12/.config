function add_to
  set pathname $argv[1]
  set paths $argv[2..-1]

  for path in $paths
    if not contains $path $$pathname
      set --global --export $pathname $$pathname $path
    end
  end
end

# Add custom bins and npm bins to PATH
# Prefer local npm bins (in node_modules) to global ones
add_to PATH ~/.bin ./node_modules/.bin ~/.yarn/bin

# Add frequent dirs to CDPATH for fast navition
# cd into their subdirs from anywhere
add_to CDPATH . ~ ~/dev ~/Desktop

functions -e add_to
