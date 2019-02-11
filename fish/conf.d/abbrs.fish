function add
  abbr --add --global $argv
end

# git
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
add grr "git reset HEAD --hard"

## Status
add gs "git status"
add gsl "git status --long"

## Branch
add gb "git branch --verbose"
add gbr "git branch --verbose --remote"
add gbd "git branch --delete"

## Checkout (go)
add gg "git checkout"
add ggm "git checkout master"
add ggb "git checkout -b"

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
add gpl "git pull"

## Misc
add gcl "git clone"
add gfe "git fetch"
add gm "git merge"
add grb "git rebase"

# npm
add nr "npm run"
add nrs "npm run start"
add nrb "npm run build"
add nrd "npm run develop"
add nrt "npm run test"
add ni "npm install"
add na "npm install --save"
add nad "npm install --save-dev"

# yarn
add yi "yarn install"
add ya "yarn add"
add yad "yarn add --dev"
add yu "yarn upgrade"
add yui "yarn upgrade-interactive"
add yga "yarn global add"

# VSCode
add c "code"
add cc "code ."

# Misc
add rr "rm -rf"

functions -e add
