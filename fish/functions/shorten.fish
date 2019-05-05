# Shorten a URL (deployed to https://gierer.xyz via https://github.com/kentcdodds/netlify-shortener)
function shorten
  node ~/dev/shortener/node_modules/.bin/netlify-shortener $argv
end
