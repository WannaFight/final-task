all: readme

readme:
	echo "# Final Task for Unix Workbench" > README.md
	echo "### Make was run:" >> README.md
	date >> README.md
	echo "### Number of lines in game file:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
