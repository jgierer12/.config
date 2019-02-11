function add
  abbr --add --global $argv
end

# git
add f "git fast"
add ff "git fast fastcommit"
add gc "git commit"
add gca "git commit --amend --no-edit"
add ga "git add"
add gaa "git add --all"
add gap "git add --patch"
add gm "git merge"
add grb "git rebase"
add gr "git reset"
add grh "git reset HEAD"
add grr "git reset HEAD --hard"
add gs "git status"
add gsl "git status --long"
add gg "git checkout"
add ggb "git checkout -b"
add ggm "git checkout master"
add gd "git diff"
add gdt "git difftool"
add gdc "git conflicts"
add gl "git changelog"
add gll "git changelog \"@{upstream}\".."
add glu "git changelog ..\"@{upstream}\""
add glb "git changelog master.."
add glg "git graph"
add gcl "git clone"
add gp "git push"
add gpu "git push --set-upstream"
add gpl "git pull"
add gfe "git fetch"

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

# VSCode
add c "code"
add ch "code ."

# Misc
add rr "rm -rf"

functions -e add
