.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "## The Unix Workbench course assignment" >> README.md
	echo "- **Date**: \`$$(date)\`" >> README.md
	echo "- **Number of lines in guessinggame.sh**: $$(wc -l < guessinggame.sh | egrep -o '[0-9]+')" >> README.md

clean:
	rm README.md

