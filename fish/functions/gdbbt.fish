# Run GDB and print stack trace on crash
function gdbbt --wraps gdb
  gdb --batch --ex run --ex bt --ex q --args $argv
end
