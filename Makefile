NAME := iOS-fonts
DATE := $(shell date "+%Y%m%d-%H%M")

CODE := Beta
ZIP := $(NAME)-$(CODE)-$(DATE).zip
INCLUDE := common/ install.sh META-INF/ module.prop system/
EXCLUDE := Makefile README.md *placeholder

fresh:clean $(ZIP)


$(ZIP):
	@echo "Creating ZIP: $(ZIP)"
	@zip -r9 "$@" $(INCLUDE) -x $(EXCLUDE)
	@echo "Fonts done."


clean:
	@-rm -vf *.zip*
	@echo "Clean done."
