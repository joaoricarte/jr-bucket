scoop uninstall $args
scoop cache rm *
scoop cleanup *
scoop cleanup * -k
# Prevent window from closing
Read-Host "Press Enter to exit"
