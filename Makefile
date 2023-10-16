all: serve

install:
	npm i

create:
	npx quartz create

serve:
	npx quartz build --serve

sync: 
	npx quartz sync

updat:
	npx quartz update

clean:
	rm -rf public
