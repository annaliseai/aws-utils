NAME='aws-utils'

build:
	docker build . -t ${NAME}

run:
	@docker run -it --rm \
	-v ~/.aws:/root/.aws \
	-v ~/.ssh:/root/.ssh \
	-v ${CURDIR}:/app \
	${NAME}

login:
	docker login -u ${user}

tag:
	docker tag ${NAME}:latest annaliseai/${NAME}:latest

push: tag
	docker push annaliseai/${NAME}:latest
