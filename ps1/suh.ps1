scoop update
scoop unhold $args
scoop update $args
scoop hold $args
scoop cache rm *
scoop cleanup *
scoop cleanup * -k
# Prevent window from closing
Read-Host "Press Enter to exit"
