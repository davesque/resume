current_dir = $(shell pwd)

compile: build
	docker run --rm --volume "$(current_dir):/tmp" texlive *.tex

build:
	docker build -t texlive .

clean:
	rm *.aux *.out *.log
