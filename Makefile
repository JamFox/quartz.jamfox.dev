all: serve

install:
	npm i

create:
	npx quartz create

serve:
	npx quartz build --serve

clean:
	rm -rf public