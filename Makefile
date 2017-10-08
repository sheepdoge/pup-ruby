build:
	docker build -t sheepdoge/pup-ruby .

test: build
	docker run sheepdoge/pup-ruby /bin/bash -c "./test.sh"

interactive: build
	docker run -it sheepdoge/pup-ruby /bin/bash
