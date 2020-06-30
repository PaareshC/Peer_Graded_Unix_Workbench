readme : guessinggame.sh
	touch README.md
	echo "Title of the project: The Unix Workbech Peer Graded Assignment\n" > README.md
	echo "Date make ran at:" >> README.md
	date >> README.md
	echo "\nNumber of lines file guessinggame.sh contains:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
