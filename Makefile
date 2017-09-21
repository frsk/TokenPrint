all:
		gpg2 -d keys.txt.asc | ./tokprint
