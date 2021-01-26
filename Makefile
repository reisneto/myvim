name=myvim:latest

copy-mac-vim:
	rm -rf vim
	cp -r ~/.vim vim
	cp ~/.vimrc vimrc

copy-vim-mac:
	rm -rf ~/.vim
	cp -r vim ~/.vim
	cp vimrc ~/.vimrc 

build:
ifneq ($(name),)
	@echo 'creating image...'
	docker build -t $(name) .
else
	@echo 'using default name -> myvim:latest'
endif

cli:
	docker run --rm --name vim -it myvim sh
