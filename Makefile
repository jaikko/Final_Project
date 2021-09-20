NAME   := final_app/foo
TAG    := $$(git log -1 --pretty=%!H(MISSING))
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

build:
@docker build -t ${IMG} .
   
push:
@docker push ${NAME}
