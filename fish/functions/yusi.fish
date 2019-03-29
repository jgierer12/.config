# Yarn Upgrade Semi-Interactive
# Upgrades all packages following package.json semver range, then interactively
# select additional, out-of-range packages to upgrade
function yusi
  yarn upgrade
  yarn upgrade-interactive --latest
end
