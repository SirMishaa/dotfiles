if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    set -Ux GPG_TTY (tty)
end
