all:
		gpg -d keys.txt.asc | ./tokprint
