
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@ :)
ECHO = $(ECHO1:0=@ echo)
NULLCMD = :

#### Start of system configuration section. ####
top_srcdir = $(topdir)/.
srcdir = $(top_srcdir)/ext/-test-/string
topdir = ../../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
RUBYLIB =
RUBYOPT = -
prefix = $(DESTDIR)/usr/local
rubysitearchprefix = $(rubylibprefix)/$(sitearch)
rubyarchprefix = $(rubylibprefix)/$(arch)
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
exec_prefix = $(prefix)
vendorarchhdrdir = $(vendorhdrdir)/$(sitearch)
sitearchhdrdir = $(sitehdrdir)/$(sitearch)
rubyarchhdrdir = $(rubyhdrdir)/$(arch)
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
rubyhdrdir = $(includedir)/$(RUBY_VERSION_NAME)
vendorarchdir = $(vendorlibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
sitearchdir = $(sitelibdir)/$(sitearch)
sitelibdir = $(sitedir)/$(ruby_version)
sitedir = $(rubylibprefix)/site_ruby
rubyarchdir = $(rubylibdir)/$(arch)
rubylibdir = $(rubylibprefix)/$(ruby_version)
sitearchincludedir = $(includedir)/$(sitearch)
archincludedir = $(includedir)/$(arch)
sitearchlibdir = $(libdir)/$(sitearch)
archlibdir = $(libdir)/$(arch)
ridir = $(datarootdir)/$(RI_BASE_NAME)
mandir = $(datarootdir)/man
localedir = $(datarootdir)/locale
libdir = $(exec_prefix)/lib
psdir = $(docdir)
pdfdir = $(docdir)
dvidir = $(docdir)
htmldir = $(docdir)
infodir = $(datarootdir)/info
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
includedir = $(prefix)/include
runstatedir = $(localstatedir)/run
localstatedir = $(prefix)/var
sharedstatedir = $(prefix)/com
sysconfdir = $(prefix)/etc
datadir = $(datarootdir)
datarootdir = $(prefix)/share
libexecdir = $(exec_prefix)/libexec
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
archdir = $(rubyarchdir)


CC_WRAPPER = 
CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_A)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-rpath,$(libdir) -L$(libdir) 
LIBRUBYARG_STATIC = -Wl,-rpath,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)-static $(MAINLIBS)
empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)
CSRCFLAG = $(empty)

RUBY_EXTCONF_H = extconf.h
cflags   = $(optflags) $(debugflags) $(warnflags)
cxxflags = 
optflags = -O3
debugflags = -ggdb3
warnflags = -Wall -Wextra -Wdeprecated-declarations -Wduplicated-cond -Wimplicit-function-declaration -Wimplicit-int -Wmisleading-indentation -Wpointer-arith -Wwrite-strings -Wimplicit-fallthrough=0 -Wmissing-noreturn -Wno-cast-function-type -Wno-constant-logical-operand -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-packed-bitfield-compat -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter -Wno-unused-value -Wsuggest-attribute=format -Wsuggest-attribute=noreturn -Wunused-variable
cppflags = 
CCDLFLAGS = -fPIC
CFLAGS   = $(CCDLFLAGS) -g -O2 $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir) -I$(topdir) -I$(top_srcdir)
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  $(DEFS) $(cppflags)
CXXFLAGS = $(CCDLFLAGS) -g -O2 $(ARCH_FLAG)
ldflags  = -L. -fstack-protector-strong -rdynamic -Wl,-export-dynamic
dldflags = -Wl,--compress-debug-sections=zlib 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -shared
LDSHAREDXX = $(CXX) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = $(RUBY_BASE_NAME)
RUBY_SO_NAME = ruby
RUBYW_INSTALL_NAME = 
RUBY_VERSION_NAME = $(RUBY_BASE_NAME)-$(ruby_version)
RUBYW_BASE_NAME = rubyw
RUBY_BASE_NAME = ruby

arch = x86_64-linux
sitearch = $(arch)
ruby_version = 2.7.0
ruby = $(topdir)/miniruby -I'$(topdir)' -I'$(top_srcdir)/lib' -I'$(extout)/$(arch)' -I'$(extout)/common'
RUBY = $(ruby)
ruby_headers = $(hdrdir)/ruby.h $(hdrdir)/ruby/backward.h $(hdrdir)/ruby/ruby.h $(hdrdir)/ruby/defines.h $(hdrdir)/ruby/missing.h $(hdrdir)/ruby/intern.h $(hdrdir)/ruby/st.h $(hdrdir)/ruby/subst.h $(arch_hdrdir)/ruby/config.h $(RUBY_EXTCONF_H)

RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir --ignore-fail-on-non-empty -p
MAKEDIRS = /usr/bin/mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp
TOUCH = exit >

#### End of system configuration section. ####

preload = 
EXTSO = 
libpath = . $(topdir)
LIBPATH =  -L. -L$(topdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = /-test-
LOCAL_LIBS = 
LIBS =   -lm   -lc
ORIG_SRCS = capacity.c coderange.c cstr.c ellipsize.c enc_associate.c enc_str_buf_cat.c fstring.c init.c modify.c new.c nofree.c normalize.c qsort.c rb_str_dup.c set_len.c
SRCS = $(ORIG_SRCS) 
OBJS = capacity.o ellipsize.o normalize.o new.o nofree.o qsort.o cstr.o modify.o rb_str_dup.o enc_associate.o fstring.o coderange.o init.o set_len.o enc_str_buf_cat.o
HDRS = 
LOCAL_HDRS = 
TARGET = string
TARGET_NAME = string
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

TIMESTAMP_DIR = $(extout)/.timestamp
BINDIR        = $(extout)/bin
RUBYCOMMONDIR = $(extout)/common
RUBYLIBDIR    = $(RUBYCOMMONDIR)$(target_prefix)
RUBYARCHDIR   = $(extout)/$(arch)$(target_prefix)
HDRDIR        = $(extout)/include/ruby$(target_prefix)
ARCHHDRDIR    = $(extout)/include/$(arch)/ruby$(target_prefix)
TARGET_SO_DIR = $(RUBYARCHDIR)/
TARGET_SO     = $(TARGET_SO_DIR)$(DLLIB)
CLEANLIBS     = $(TARGET_SO) 
CLEANOBJS     = *.o  *.bak

all:    install
static: all
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-static clean-rb

clean-static::
clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean-static::
distclean: clean distclean-so distclean-static distclean-rb-default distclean-rb
		-$(Q)$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		-$(Q)$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		-$(Q)$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(TARGET_SO)
clean-so::
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.-test-.time
	-$(Q)$(RMDIRS) $(TARGET_SO_DIR) 2> /dev/null || true
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default:
	@$(NULLCMD)
$(TIMESTAMP_DIR)/$(arch)/.-test-.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .o .S

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cc.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.mm.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cxx.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cpp.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.c.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.m.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.-test-.time
	$(ECHO) linking shared-object -test-/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

# AUTOGENERATED DEPENDENCIES START
capacity.o: $(RUBY_EXTCONF_H)
capacity.o: $(arch_hdrdir)/ruby/config.h
capacity.o: $(hdrdir)/ruby.h
capacity.o: $(hdrdir)/ruby/assert.h
capacity.o: $(hdrdir)/ruby/backward.h
capacity.o: $(hdrdir)/ruby/defines.h
capacity.o: $(hdrdir)/ruby/intern.h
capacity.o: $(hdrdir)/ruby/missing.h
capacity.o: $(hdrdir)/ruby/ruby.h
capacity.o: $(hdrdir)/ruby/st.h
capacity.o: $(hdrdir)/ruby/subst.h
capacity.o: $(top_srcdir)/internal.h
capacity.o: capacity.c
coderange.o: $(RUBY_EXTCONF_H)
coderange.o: $(arch_hdrdir)/ruby/config.h
coderange.o: $(hdrdir)/ruby/assert.h
coderange.o: $(hdrdir)/ruby/backward.h
coderange.o: $(hdrdir)/ruby/defines.h
coderange.o: $(hdrdir)/ruby/encoding.h
coderange.o: $(hdrdir)/ruby/intern.h
coderange.o: $(hdrdir)/ruby/missing.h
coderange.o: $(hdrdir)/ruby/onigmo.h
coderange.o: $(hdrdir)/ruby/oniguruma.h
coderange.o: $(hdrdir)/ruby/ruby.h
coderange.o: $(hdrdir)/ruby/st.h
coderange.o: $(hdrdir)/ruby/subst.h
coderange.o: coderange.c
cstr.o: $(RUBY_EXTCONF_H)
cstr.o: $(arch_hdrdir)/ruby/config.h
cstr.o: $(hdrdir)/ruby.h
cstr.o: $(hdrdir)/ruby/assert.h
cstr.o: $(hdrdir)/ruby/backward.h
cstr.o: $(hdrdir)/ruby/defines.h
cstr.o: $(hdrdir)/ruby/encoding.h
cstr.o: $(hdrdir)/ruby/intern.h
cstr.o: $(hdrdir)/ruby/missing.h
cstr.o: $(hdrdir)/ruby/onigmo.h
cstr.o: $(hdrdir)/ruby/oniguruma.h
cstr.o: $(hdrdir)/ruby/ruby.h
cstr.o: $(hdrdir)/ruby/st.h
cstr.o: $(hdrdir)/ruby/subst.h
cstr.o: $(top_srcdir)/internal.h
cstr.o: cstr.c
ellipsize.o: $(RUBY_EXTCONF_H)
ellipsize.o: $(arch_hdrdir)/ruby/config.h
ellipsize.o: $(hdrdir)/ruby.h
ellipsize.o: $(hdrdir)/ruby/assert.h
ellipsize.o: $(hdrdir)/ruby/backward.h
ellipsize.o: $(hdrdir)/ruby/defines.h
ellipsize.o: $(hdrdir)/ruby/intern.h
ellipsize.o: $(hdrdir)/ruby/missing.h
ellipsize.o: $(hdrdir)/ruby/ruby.h
ellipsize.o: $(hdrdir)/ruby/st.h
ellipsize.o: $(hdrdir)/ruby/subst.h
ellipsize.o: ellipsize.c
enc_associate.o: $(RUBY_EXTCONF_H)
enc_associate.o: $(arch_hdrdir)/ruby/config.h
enc_associate.o: $(hdrdir)/ruby.h
enc_associate.o: $(hdrdir)/ruby/assert.h
enc_associate.o: $(hdrdir)/ruby/backward.h
enc_associate.o: $(hdrdir)/ruby/defines.h
enc_associate.o: $(hdrdir)/ruby/encoding.h
enc_associate.o: $(hdrdir)/ruby/intern.h
enc_associate.o: $(hdrdir)/ruby/missing.h
enc_associate.o: $(hdrdir)/ruby/onigmo.h
enc_associate.o: $(hdrdir)/ruby/oniguruma.h
enc_associate.o: $(hdrdir)/ruby/ruby.h
enc_associate.o: $(hdrdir)/ruby/st.h
enc_associate.o: $(hdrdir)/ruby/subst.h
enc_associate.o: enc_associate.c
enc_str_buf_cat.o: $(RUBY_EXTCONF_H)
enc_str_buf_cat.o: $(arch_hdrdir)/ruby/config.h
enc_str_buf_cat.o: $(hdrdir)/ruby/assert.h
enc_str_buf_cat.o: $(hdrdir)/ruby/backward.h
enc_str_buf_cat.o: $(hdrdir)/ruby/defines.h
enc_str_buf_cat.o: $(hdrdir)/ruby/encoding.h
enc_str_buf_cat.o: $(hdrdir)/ruby/intern.h
enc_str_buf_cat.o: $(hdrdir)/ruby/missing.h
enc_str_buf_cat.o: $(hdrdir)/ruby/onigmo.h
enc_str_buf_cat.o: $(hdrdir)/ruby/oniguruma.h
enc_str_buf_cat.o: $(hdrdir)/ruby/ruby.h
enc_str_buf_cat.o: $(hdrdir)/ruby/st.h
enc_str_buf_cat.o: $(hdrdir)/ruby/subst.h
enc_str_buf_cat.o: enc_str_buf_cat.c
fstring.o: $(RUBY_EXTCONF_H)
fstring.o: $(arch_hdrdir)/ruby/config.h
fstring.o: $(hdrdir)/ruby.h
fstring.o: $(hdrdir)/ruby/assert.h
fstring.o: $(hdrdir)/ruby/backward.h
fstring.o: $(hdrdir)/ruby/defines.h
fstring.o: $(hdrdir)/ruby/intern.h
fstring.o: $(hdrdir)/ruby/missing.h
fstring.o: $(hdrdir)/ruby/ruby.h
fstring.o: $(hdrdir)/ruby/st.h
fstring.o: $(hdrdir)/ruby/subst.h
fstring.o: fstring.c
init.o: $(RUBY_EXTCONF_H)
init.o: $(arch_hdrdir)/ruby/config.h
init.o: $(hdrdir)/ruby.h
init.o: $(hdrdir)/ruby/assert.h
init.o: $(hdrdir)/ruby/backward.h
init.o: $(hdrdir)/ruby/defines.h
init.o: $(hdrdir)/ruby/intern.h
init.o: $(hdrdir)/ruby/missing.h
init.o: $(hdrdir)/ruby/ruby.h
init.o: $(hdrdir)/ruby/st.h
init.o: $(hdrdir)/ruby/subst.h
init.o: init.c
modify.o: $(RUBY_EXTCONF_H)
modify.o: $(arch_hdrdir)/ruby/config.h
modify.o: $(hdrdir)/ruby.h
modify.o: $(hdrdir)/ruby/assert.h
modify.o: $(hdrdir)/ruby/backward.h
modify.o: $(hdrdir)/ruby/defines.h
modify.o: $(hdrdir)/ruby/intern.h
modify.o: $(hdrdir)/ruby/missing.h
modify.o: $(hdrdir)/ruby/ruby.h
modify.o: $(hdrdir)/ruby/st.h
modify.o: $(hdrdir)/ruby/subst.h
modify.o: modify.c
new.o: $(RUBY_EXTCONF_H)
new.o: $(arch_hdrdir)/ruby/config.h
new.o: $(hdrdir)/ruby.h
new.o: $(hdrdir)/ruby/assert.h
new.o: $(hdrdir)/ruby/backward.h
new.o: $(hdrdir)/ruby/defines.h
new.o: $(hdrdir)/ruby/encoding.h
new.o: $(hdrdir)/ruby/intern.h
new.o: $(hdrdir)/ruby/missing.h
new.o: $(hdrdir)/ruby/onigmo.h
new.o: $(hdrdir)/ruby/oniguruma.h
new.o: $(hdrdir)/ruby/ruby.h
new.o: $(hdrdir)/ruby/st.h
new.o: $(hdrdir)/ruby/subst.h
new.o: new.c
nofree.o: $(RUBY_EXTCONF_H)
nofree.o: $(arch_hdrdir)/ruby/config.h
nofree.o: $(hdrdir)/ruby.h
nofree.o: $(hdrdir)/ruby/assert.h
nofree.o: $(hdrdir)/ruby/backward.h
nofree.o: $(hdrdir)/ruby/defines.h
nofree.o: $(hdrdir)/ruby/intern.h
nofree.o: $(hdrdir)/ruby/missing.h
nofree.o: $(hdrdir)/ruby/ruby.h
nofree.o: $(hdrdir)/ruby/st.h
nofree.o: $(hdrdir)/ruby/subst.h
nofree.o: nofree.c
normalize.o: $(RUBY_EXTCONF_H)
normalize.o: $(arch_hdrdir)/ruby/config.h
normalize.o: $(hdrdir)/ruby.h
normalize.o: $(hdrdir)/ruby/assert.h
normalize.o: $(hdrdir)/ruby/backward.h
normalize.o: $(hdrdir)/ruby/defines.h
normalize.o: $(hdrdir)/ruby/intern.h
normalize.o: $(hdrdir)/ruby/missing.h
normalize.o: $(hdrdir)/ruby/ruby.h
normalize.o: $(hdrdir)/ruby/st.h
normalize.o: $(hdrdir)/ruby/subst.h
normalize.o: $(top_srcdir)/internal.h
normalize.o: normalize.c
qsort.o: $(RUBY_EXTCONF_H)
qsort.o: $(arch_hdrdir)/ruby/config.h
qsort.o: $(hdrdir)/ruby.h
qsort.o: $(hdrdir)/ruby/assert.h
qsort.o: $(hdrdir)/ruby/backward.h
qsort.o: $(hdrdir)/ruby/defines.h
qsort.o: $(hdrdir)/ruby/encoding.h
qsort.o: $(hdrdir)/ruby/intern.h
qsort.o: $(hdrdir)/ruby/missing.h
qsort.o: $(hdrdir)/ruby/onigmo.h
qsort.o: $(hdrdir)/ruby/oniguruma.h
qsort.o: $(hdrdir)/ruby/ruby.h
qsort.o: $(hdrdir)/ruby/st.h
qsort.o: $(hdrdir)/ruby/subst.h
qsort.o: $(hdrdir)/ruby/util.h
qsort.o: qsort.c
rb_str_dup.o: $(RUBY_EXTCONF_H)
rb_str_dup.o: $(arch_hdrdir)/ruby/config.h
rb_str_dup.o: $(hdrdir)/ruby.h
rb_str_dup.o: $(hdrdir)/ruby/assert.h
rb_str_dup.o: $(hdrdir)/ruby/backward.h
rb_str_dup.o: $(hdrdir)/ruby/defines.h
rb_str_dup.o: $(hdrdir)/ruby/intern.h
rb_str_dup.o: $(hdrdir)/ruby/missing.h
rb_str_dup.o: $(hdrdir)/ruby/ruby.h
rb_str_dup.o: $(hdrdir)/ruby/st.h
rb_str_dup.o: $(hdrdir)/ruby/subst.h
rb_str_dup.o: rb_str_dup.c
set_len.o: $(RUBY_EXTCONF_H)
set_len.o: $(arch_hdrdir)/ruby/config.h
set_len.o: $(hdrdir)/ruby.h
set_len.o: $(hdrdir)/ruby/assert.h
set_len.o: $(hdrdir)/ruby/backward.h
set_len.o: $(hdrdir)/ruby/defines.h
set_len.o: $(hdrdir)/ruby/intern.h
set_len.o: $(hdrdir)/ruby/missing.h
set_len.o: $(hdrdir)/ruby/ruby.h
set_len.o: $(hdrdir)/ruby/st.h
set_len.o: $(hdrdir)/ruby/subst.h
set_len.o: set_len.c
# AUTOGENERATED DEPENDENCIES END
