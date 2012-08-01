
PLUGIN_NAME=timesheet
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	app				\
	assets				\
	config				\
	COPYRIGHT.txt			\
	CREDITS.txt			\
	GPL.txt				\
	init.rb				\
	lang				\
	lib				\
	rails				\
	Rakefile			\
	README.rdoc			\
	test				\
	timesheet_plugin.gemspec	\
	VERSION

all:

install:
	rm -Rf $(PLUGIN_DIR)
	mkdir -p $(PLUGIN_DIR)
	for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
