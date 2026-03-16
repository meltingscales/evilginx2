# screen cheatsheet:
#   detach:       Ctrl+A, D
#   reattach:     screen -r evilginx2
#   list sessions: screen -ls
#   kill session: screen -X -S evilginx2 quit

screen -S evilginx2 sudo ./evilginx2 -p ./phishlets
