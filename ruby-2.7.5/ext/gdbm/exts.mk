V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@:)
ECHO = $(ECHO1:0=@echo)

ruby = $(topdir)/miniruby -I'$(topdir)' -I'$(top_srcdir)/lib' \
       -I'$(extout)/$(arch)' -I'$(extout)/common'
RUBY = $(ruby)
extensions = ext/gdbm/.
EXTOBJS = dmyext.o
EXTLIBS =
EXTSO =
EXTLDFLAGS =
EXTINITS =
SUBMAKEOPTS = EXTOBJS="$(EXTOBJS) $(EXTENCS)" EXTLIBS="$(EXTLIBS)" \
	      EXTLDFLAGS="$(EXTLDFLAGS)" EXTINITS="$(EXTINITS)" \
	      UPDATE_LIBRARIES="$(UPDATE_LIBRARIES)" SHOWFLAGS=
NOTE_MESG = $(RUBY) $(top_srcdir)/tool/lib/colorize.rb skip
NOTE_NAME = $(RUBY) $(top_srcdir)/tool/lib/colorize.rb fail

all: $(extensions:/.=/all)
all: note
install: $(extensions:/.=/install)
install: note
static: $(extensions:/.=/static)
static: note
install-so: $(extensions:/.=/install-so)
install-so: note
install-rb: $(extensions:/.=/install-rb)
install-rb: note
clean: $(extensions:/.=/clean)
distclean: $(extensions:/.=/distclean)
realclean: $(extensions:/.=/realclean)

clean:
	-$(Q)$(RM) ext/extinit.o
distclean:
	-$(Q)$(RM) ext/extinit.c

ruby: $(extensions:/.=/all)
all static: ruby
ruby: $(EXTOBJS)
ruby:
	$(Q)$(MAKE) $(MFLAGS) $(SUBMAKEOPTS) $@
libencs:
	$(Q)$(MAKE) -f enc.mk V=$(V) $@

ext/gdbm/all:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)
ext/gdbm/install:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)
ext/gdbm/static:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)
ext/gdbm/install-so:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)
ext/gdbm/install-rb:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)
ext/gdbm/clean:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)
ext/gdbm/distclean:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)
ext/gdbm/realclean:
	$(Q)$(MAKE) -C $(@D) $(MFLAGS) V=$(V) $(@F)

extso:
	@echo EXTSO=$(EXTSO)

note:
note: note-body
note-body:: note-header
note-header:
	@$(NOTE_MESG) "*** Following extensions are not compiled:"
note-body:: note-header
	@$(NOTE_NAME) "gdbm:"
	@echo "	Could not be configured. It will not be installed."
	@echo "	Check ext/gdbm/mkmf.log for more details."
note:
	@$(NOTE_MESG) "*** Fix the problems, then remove these directories and try again if you want."
