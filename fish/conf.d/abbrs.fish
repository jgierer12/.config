function add
  abbr --add --global $argv
end

# git
add g "git"

## Fast commit
add f "git fast"
add ff "git fast fastcommit"

## Commit
add gc "git commit"
add gca "git commit --all"
add gcm "git commit --amend --no-edit"

## Add
add ga "git add"
add gaa "git add --all"
add gap "git add --patch"

## Reset
add gr "git reset"
add grh "git reset HEAD"
add grr "git reset --hard HEAD"

## Status
add gs "git status"
add gsl "git status --long"

## Branch
add gb "git branch --verbose"
add gbr "git branch --verbose --remote"
add gbd "git branch --delete"

## go (checkout)
add gg "git go"
add ggb "git go" # Muscle memory
add ggm "git go master"
add gg- "git go -"

## Diff
add gd "git diff"
add gdt "git difftool"
add gdc "git conflicts"

## Log
add gl "git changelog"
add gll "git changelog \"@{upstream}\".."
add glu "git changelog ..\"@{upstream}\""
add glb "git changelog master.."
add glg "git graph"

## Push/Pull
add gp "git push"
add gpu "git push --set-upstream"
add gpo "git push --set-upstream origin"
add gpj "git push --set-upstream jgierer12"
add gpl "git pull"

## Merge
add gm "git merge"
add gmm "git merge master"

## hub
add ghc "git create"
add ghf "git fork"
add ghb "git browse"

## Misc
add gcl "git clone"
add gfe "git fetch"
add grb "git rebase"
add gsh "git show"

# npm
add nr "npm run"
add nrs "npm run start"
add nrb "npm run build"
add nrd "npm run develop"
add nrt "npm run test"
add nrf "npm run format"
add nrr "npm run release"
add ni "npm install"
add na "npm install --save"
add nad "npm install --save-dev"
add nu "npm uninstall"

# yarn
add yi "yarn install"
add ya "yarn add"
add yad "yarn add --dev"
add yr "yarn remove"
add yu "yarn upgrade"
add yui "yarn upgrade-interactive"
add yga "yarn global add"
add ygr "yarn global remove"

# VSCode
add c "code"
add cc "code ."

# open
add o "open"
add oo "open ."

# cd
add - "cd -"

# Misc
add rr "rm -rf"
add pg "ping google.com"
add syu "sysupdate"

functions -e add
