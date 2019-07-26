function add_to
  set pathname $argv[1]
  set paths $argv[2..-1]

  for path in $paths
    if not contains $path $$pathname
      set --global --export $pathname $$pathname $path
    end
  end
end

# Add custom bins and yarn bins to PATH
add_to PATH ~/.bin ~/.yarn/bin ~/.gem/ruby/2.6.0/bin

# Add frequent dirs to CDPATH for fast navition
# cd into their subdirs from anywhere
add_to CDPATH . ~ ~/dev ~/desktop

functions -e add_to
