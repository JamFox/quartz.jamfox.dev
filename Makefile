all: serve

install:
	npm i

create:
	npx quartz create

serve:
	npx quartz build --serve

sync: 
	npx quartz sync

clean:
	rm -rf public