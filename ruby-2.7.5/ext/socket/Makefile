
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
srcdir = $(top_srcdir)/ext/socket
topdir = ../..
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
DISTCLEANFILES = constants.h constdefs.*
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = 
LOCAL_LIBS = 
LIBS =  -lanl  -lm   -lc
ORIG_SRCS = ancdata.c basicsocket.c constants.c constdefs.c getaddrinfo.c getnameinfo.c ifaddr.c init.c ipsocket.c option.c raddrinfo.c socket.c sockssocket.c tcpserver.c tcpsocket.c udpsocket.c unixserver.c unixsocket.c
SRCS = $(ORIG_SRCS) init.c constants.c basicsocket.c socket.c ipsocket.c tcpsocket.c tcpserver.c sockssocket.c udpsocket.c unixsocket.c unixserver.c option.c ancdata.c raddrinfo.c ifaddr.c
OBJS = init.o constants.o basicsocket.o socket.o ipsocket.o tcpsocket.o tcpserver.o sockssocket.o udpsocket.o unixsocket.o unixserver.o option.o ancdata.o raddrinfo.o ifaddr.o
HDRS = $(srcdir)/rubysocket.h $(srcdir)/constdefs.h $(srcdir)/sockport.h $(srcdir)/addrinfo.h
LOCAL_HDRS = 
TARGET = socket
TARGET_NAME = socket
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
	-$(Q)$(RM) $(TARGET_SO) $(TIMESTAMP_DIR)/$(arch)/.time
	-$(Q)$(RMDIRS) $(TARGET_SO_DIR) 2> /dev/null || true
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
do-install-rb-default: $(RUBYLIBDIR)/socket.rb
$(RUBYLIBDIR)/socket.rb: $(srcdir)/lib/socket.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	$(Q) $(COPY) $(srcdir)/lib/socket.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR)/socket.rb
pre-install-rb-default:
	$(Q1:0=@$(MAKE) -q do-install-rb-default || )$(ECHO1:0=echo) installing default socket libraries
clean-rb-default::
	-$(Q)$(RM) $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(TIMESTAMP_DIR)/$(arch)/.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)
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

$(TARGET_SO): $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.time
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

srcs: constdefs.h constdefs.c

getnameinfo.o: getnameinfo.c $(arch_hdrdir)/ruby/config.h addrinfo.h sockport.h rubysocket.h
getaddrinfo.o: getaddrinfo.c $(arch_hdrdir)/ruby/config.h addrinfo.h sockport.h

constdefs.h: $(srcdir)/mkconstants.rb
	@echo "generating constant definitions"
	@$(RUBY) $(srcdir)/mkconstants.rb -H constdefs.h -o constdefs.c

constdefs.c: constdefs.h

# AUTOGENERATED DEPENDENCIES START
ancdata.o: $(RUBY_EXTCONF_H)
ancdata.o: $(arch_hdrdir)/ruby/config.h
ancdata.o: $(hdrdir)/ruby.h
ancdata.o: $(hdrdir)/ruby/assert.h
ancdata.o: $(hdrdir)/ruby/backward.h
ancdata.o: $(hdrdir)/ruby/defines.h
ancdata.o: $(hdrdir)/ruby/encoding.h
ancdata.o: $(hdrdir)/ruby/intern.h
ancdata.o: $(hdrdir)/ruby/io.h
ancdata.o: $(hdrdir)/ruby/missing.h
ancdata.o: $(hdrdir)/ruby/onigmo.h
ancdata.o: $(hdrdir)/ruby/oniguruma.h
ancdata.o: $(hdrdir)/ruby/ruby.h
ancdata.o: $(hdrdir)/ruby/st.h
ancdata.o: $(hdrdir)/ruby/subst.h
ancdata.o: $(hdrdir)/ruby/thread.h
ancdata.o: $(hdrdir)/ruby/util.h
ancdata.o: $(top_srcdir)/internal.h
ancdata.o: ancdata.c
ancdata.o: constdefs.h
ancdata.o: rubysocket.h
ancdata.o: sockport.h
basicsocket.o: $(RUBY_EXTCONF_H)
basicsocket.o: $(arch_hdrdir)/ruby/config.h
basicsocket.o: $(hdrdir)/ruby.h
basicsocket.o: $(hdrdir)/ruby/assert.h
basicsocket.o: $(hdrdir)/ruby/backward.h
basicsocket.o: $(hdrdir)/ruby/defines.h
basicsocket.o: $(hdrdir)/ruby/encoding.h
basicsocket.o: $(hdrdir)/ruby/intern.h
basicsocket.o: $(hdrdir)/ruby/io.h
basicsocket.o: $(hdrdir)/ruby/missing.h
basicsocket.o: $(hdrdir)/ruby/onigmo.h
basicsocket.o: $(hdrdir)/ruby/oniguruma.h
basicsocket.o: $(hdrdir)/ruby/ruby.h
basicsocket.o: $(hdrdir)/ruby/st.h
basicsocket.o: $(hdrdir)/ruby/subst.h
basicsocket.o: $(hdrdir)/ruby/thread.h
basicsocket.o: $(hdrdir)/ruby/util.h
basicsocket.o: $(top_srcdir)/internal.h
basicsocket.o: basicsocket.c
basicsocket.o: constdefs.h
basicsocket.o: rubysocket.h
basicsocket.o: sockport.h
constants.o: $(RUBY_EXTCONF_H)
constants.o: $(arch_hdrdir)/ruby/config.h
constants.o: $(hdrdir)/ruby.h
constants.o: $(hdrdir)/ruby/assert.h
constants.o: $(hdrdir)/ruby/backward.h
constants.o: $(hdrdir)/ruby/defines.h
constants.o: $(hdrdir)/ruby/encoding.h
constants.o: $(hdrdir)/ruby/intern.h
constants.o: $(hdrdir)/ruby/io.h
constants.o: $(hdrdir)/ruby/missing.h
constants.o: $(hdrdir)/ruby/onigmo.h
constants.o: $(hdrdir)/ruby/oniguruma.h
constants.o: $(hdrdir)/ruby/ruby.h
constants.o: $(hdrdir)/ruby/st.h
constants.o: $(hdrdir)/ruby/subst.h
constants.o: $(hdrdir)/ruby/thread.h
constants.o: $(hdrdir)/ruby/util.h
constants.o: $(top_srcdir)/internal.h
constants.o: constants.c
constants.o: constdefs.c
constants.o: constdefs.h
constants.o: rubysocket.h
constants.o: sockport.h
ifaddr.o: $(RUBY_EXTCONF_H)
ifaddr.o: $(arch_hdrdir)/ruby/config.h
ifaddr.o: $(hdrdir)/ruby.h
ifaddr.o: $(hdrdir)/ruby/assert.h
ifaddr.o: $(hdrdir)/ruby/backward.h
ifaddr.o: $(hdrdir)/ruby/defines.h
ifaddr.o: $(hdrdir)/ruby/encoding.h
ifaddr.o: $(hdrdir)/ruby/intern.h
ifaddr.o: $(hdrdir)/ruby/io.h
ifaddr.o: $(hdrdir)/ruby/missing.h
ifaddr.o: $(hdrdir)/ruby/onigmo.h
ifaddr.o: $(hdrdir)/ruby/oniguruma.h
ifaddr.o: $(hdrdir)/ruby/ruby.h
ifaddr.o: $(hdrdir)/ruby/st.h
ifaddr.o: $(hdrdir)/ruby/subst.h
ifaddr.o: $(hdrdir)/ruby/thread.h
ifaddr.o: $(hdrdir)/ruby/util.h
ifaddr.o: $(top_srcdir)/internal.h
ifaddr.o: constdefs.h
ifaddr.o: ifaddr.c
ifaddr.o: rubysocket.h
ifaddr.o: sockport.h
init.o: $(RUBY_EXTCONF_H)
init.o: $(arch_hdrdir)/ruby/config.h
init.o: $(hdrdir)/ruby.h
init.o: $(hdrdir)/ruby/assert.h
init.o: $(hdrdir)/ruby/backward.h
init.o: $(hdrdir)/ruby/defines.h
init.o: $(hdrdir)/ruby/encoding.h
init.o: $(hdrdir)/ruby/intern.h
init.o: $(hdrdir)/ruby/io.h
init.o: $(hdrdir)/ruby/missing.h
init.o: $(hdrdir)/ruby/onigmo.h
init.o: $(hdrdir)/ruby/oniguruma.h
init.o: $(hdrdir)/ruby/ruby.h
init.o: $(hdrdir)/ruby/st.h
init.o: $(hdrdir)/ruby/subst.h
init.o: $(hdrdir)/ruby/thread.h
init.o: $(hdrdir)/ruby/util.h
init.o: $(top_srcdir)/internal.h
init.o: constdefs.h
init.o: init.c
init.o: rubysocket.h
init.o: sockport.h
ipsocket.o: $(RUBY_EXTCONF_H)
ipsocket.o: $(arch_hdrdir)/ruby/config.h
ipsocket.o: $(hdrdir)/ruby.h
ipsocket.o: $(hdrdir)/ruby/assert.h
ipsocket.o: $(hdrdir)/ruby/backward.h
ipsocket.o: $(hdrdir)/ruby/defines.h
ipsocket.o: $(hdrdir)/ruby/encoding.h
ipsocket.o: $(hdrdir)/ruby/intern.h
ipsocket.o: $(hdrdir)/ruby/io.h
ipsocket.o: $(hdrdir)/ruby/missing.h
ipsocket.o: $(hdrdir)/ruby/onigmo.h
ipsocket.o: $(hdrdir)/ruby/oniguruma.h
ipsocket.o: $(hdrdir)/ruby/ruby.h
ipsocket.o: $(hdrdir)/ruby/st.h
ipsocket.o: $(hdrdir)/ruby/subst.h
ipsocket.o: $(hdrdir)/ruby/thread.h
ipsocket.o: $(hdrdir)/ruby/util.h
ipsocket.o: $(top_srcdir)/internal.h
ipsocket.o: constdefs.h
ipsocket.o: ipsocket.c
ipsocket.o: rubysocket.h
ipsocket.o: sockport.h
option.o: $(RUBY_EXTCONF_H)
option.o: $(arch_hdrdir)/ruby/config.h
option.o: $(hdrdir)/ruby.h
option.o: $(hdrdir)/ruby/assert.h
option.o: $(hdrdir)/ruby/backward.h
option.o: $(hdrdir)/ruby/defines.h
option.o: $(hdrdir)/ruby/encoding.h
option.o: $(hdrdir)/ruby/intern.h
option.o: $(hdrdir)/ruby/io.h
option.o: $(hdrdir)/ruby/missing.h
option.o: $(hdrdir)/ruby/onigmo.h
option.o: $(hdrdir)/ruby/oniguruma.h
option.o: $(hdrdir)/ruby/ruby.h
option.o: $(hdrdir)/ruby/st.h
option.o: $(hdrdir)/ruby/subst.h
option.o: $(hdrdir)/ruby/thread.h
option.o: $(hdrdir)/ruby/util.h
option.o: $(top_srcdir)/internal.h
option.o: constdefs.h
option.o: option.c
option.o: rubysocket.h
option.o: sockport.h
raddrinfo.o: $(RUBY_EXTCONF_H)
raddrinfo.o: $(arch_hdrdir)/ruby/config.h
raddrinfo.o: $(hdrdir)/ruby.h
raddrinfo.o: $(hdrdir)/ruby/assert.h
raddrinfo.o: $(hdrdir)/ruby/backward.h
raddrinfo.o: $(hdrdir)/ruby/defines.h
raddrinfo.o: $(hdrdir)/ruby/encoding.h
raddrinfo.o: $(hdrdir)/ruby/intern.h
raddrinfo.o: $(hdrdir)/ruby/io.h
raddrinfo.o: $(hdrdir)/ruby/missing.h
raddrinfo.o: $(hdrdir)/ruby/onigmo.h
raddrinfo.o: $(hdrdir)/ruby/oniguruma.h
raddrinfo.o: $(hdrdir)/ruby/ruby.h
raddrinfo.o: $(hdrdir)/ruby/st.h
raddrinfo.o: $(hdrdir)/ruby/subst.h
raddrinfo.o: $(hdrdir)/ruby/thread.h
raddrinfo.o: $(hdrdir)/ruby/util.h
raddrinfo.o: $(top_srcdir)/internal.h
raddrinfo.o: constdefs.h
raddrinfo.o: raddrinfo.c
raddrinfo.o: rubysocket.h
raddrinfo.o: sockport.h
socket.o: $(RUBY_EXTCONF_H)
socket.o: $(arch_hdrdir)/ruby/config.h
socket.o: $(hdrdir)/ruby.h
socket.o: $(hdrdir)/ruby/assert.h
socket.o: $(hdrdir)/ruby/backward.h
socket.o: $(hdrdir)/ruby/defines.h
socket.o: $(hdrdir)/ruby/encoding.h
socket.o: $(hdrdir)/ruby/intern.h
socket.o: $(hdrdir)/ruby/io.h
socket.o: $(hdrdir)/ruby/missing.h
socket.o: $(hdrdir)/ruby/onigmo.h
socket.o: $(hdrdir)/ruby/oniguruma.h
socket.o: $(hdrdir)/ruby/ruby.h
socket.o: $(hdrdir)/ruby/st.h
socket.o: $(hdrdir)/ruby/subst.h
socket.o: $(hdrdir)/ruby/thread.h
socket.o: $(hdrdir)/ruby/util.h
socket.o: $(top_srcdir)/internal.h
socket.o: constdefs.h
socket.o: rubysocket.h
socket.o: socket.c
socket.o: sockport.h
sockssocket.o: $(RUBY_EXTCONF_H)
sockssocket.o: $(arch_hdrdir)/ruby/config.h
sockssocket.o: $(hdrdir)/ruby.h
sockssocket.o: $(hdrdir)/ruby/assert.h
sockssocket.o: $(hdrdir)/ruby/backward.h
sockssocket.o: $(hdrdir)/ruby/defines.h
sockssocket.o: $(hdrdir)/ruby/encoding.h
sockssocket.o: $(hdrdir)/ruby/intern.h
sockssocket.o: $(hdrdir)/ruby/io.h
sockssocket.o: $(hdrdir)/ruby/missing.h
sockssocket.o: $(hdrdir)/ruby/onigmo.h
sockssocket.o: $(hdrdir)/ruby/oniguruma.h
sockssocket.o: $(hdrdir)/ruby/ruby.h
sockssocket.o: $(hdrdir)/ruby/st.h
sockssocket.o: $(hdrdir)/ruby/subst.h
sockssocket.o: $(hdrdir)/ruby/thread.h
sockssocket.o: $(hdrdir)/ruby/util.h
sockssocket.o: $(top_srcdir)/internal.h
sockssocket.o: constdefs.h
sockssocket.o: rubysocket.h
sockssocket.o: sockport.h
sockssocket.o: sockssocket.c
tcpserver.o: $(RUBY_EXTCONF_H)
tcpserver.o: $(arch_hdrdir)/ruby/config.h
tcpserver.o: $(hdrdir)/ruby.h
tcpserver.o: $(hdrdir)/ruby/assert.h
tcpserver.o: $(hdrdir)/ruby/backward.h
tcpserver.o: $(hdrdir)/ruby/defines.h
tcpserver.o: $(hdrdir)/ruby/encoding.h
tcpserver.o: $(hdrdir)/ruby/intern.h
tcpserver.o: $(hdrdir)/ruby/io.h
tcpserver.o: $(hdrdir)/ruby/missing.h
tcpserver.o: $(hdrdir)/ruby/onigmo.h
tcpserver.o: $(hdrdir)/ruby/oniguruma.h
tcpserver.o: $(hdrdir)/ruby/ruby.h
tcpserver.o: $(hdrdir)/ruby/st.h
tcpserver.o: $(hdrdir)/ruby/subst.h
tcpserver.o: $(hdrdir)/ruby/thread.h
tcpserver.o: $(hdrdir)/ruby/util.h
tcpserver.o: $(top_srcdir)/internal.h
tcpserver.o: constdefs.h
tcpserver.o: rubysocket.h
tcpserver.o: sockport.h
tcpserver.o: tcpserver.c
tcpsocket.o: $(RUBY_EXTCONF_H)
tcpsocket.o: $(arch_hdrdir)/ruby/config.h
tcpsocket.o: $(hdrdir)/ruby.h
tcpsocket.o: $(hdrdir)/ruby/assert.h
tcpsocket.o: $(hdrdir)/ruby/backward.h
tcpsocket.o: $(hdrdir)/ruby/defines.h
tcpsocket.o: $(hdrdir)/ruby/encoding.h
tcpsocket.o: $(hdrdir)/ruby/intern.h
tcpsocket.o: $(hdrdir)/ruby/io.h
tcpsocket.o: $(hdrdir)/ruby/missing.h
tcpsocket.o: $(hdrdir)/ruby/onigmo.h
tcpsocket.o: $(hdrdir)/ruby/oniguruma.h
tcpsocket.o: $(hdrdir)/ruby/ruby.h
tcpsocket.o: $(hdrdir)/ruby/st.h
tcpsocket.o: $(hdrdir)/ruby/subst.h
tcpsocket.o: $(hdrdir)/ruby/thread.h
tcpsocket.o: $(hdrdir)/ruby/util.h
tcpsocket.o: $(top_srcdir)/internal.h
tcpsocket.o: constdefs.h
tcpsocket.o: rubysocket.h
tcpsocket.o: sockport.h
tcpsocket.o: tcpsocket.c
udpsocket.o: $(RUBY_EXTCONF_H)
udpsocket.o: $(arch_hdrdir)/ruby/config.h
udpsocket.o: $(hdrdir)/ruby.h
udpsocket.o: $(hdrdir)/ruby/assert.h
udpsocket.o: $(hdrdir)/ruby/backward.h
udpsocket.o: $(hdrdir)/ruby/defines.h
udpsocket.o: $(hdrdir)/ruby/encoding.h
udpsocket.o: $(hdrdir)/ruby/intern.h
udpsocket.o: $(hdrdir)/ruby/io.h
udpsocket.o: $(hdrdir)/ruby/missing.h
udpsocket.o: $(hdrdir)/ruby/onigmo.h
udpsocket.o: $(hdrdir)/ruby/oniguruma.h
udpsocket.o: $(hdrdir)/ruby/ruby.h
udpsocket.o: $(hdrdir)/ruby/st.h
udpsocket.o: $(hdrdir)/ruby/subst.h
udpsocket.o: $(hdrdir)/ruby/thread.h
udpsocket.o: $(hdrdir)/ruby/util.h
udpsocket.o: $(top_srcdir)/internal.h
udpsocket.o: constdefs.h
udpsocket.o: rubysocket.h
udpsocket.o: sockport.h
udpsocket.o: udpsocket.c
unixserver.o: $(RUBY_EXTCONF_H)
unixserver.o: $(arch_hdrdir)/ruby/config.h
unixserver.o: $(hdrdir)/ruby.h
unixserver.o: $(hdrdir)/ruby/assert.h
unixserver.o: $(hdrdir)/ruby/backward.h
unixserver.o: $(hdrdir)/ruby/defines.h
unixserver.o: $(hdrdir)/ruby/encoding.h
unixserver.o: $(hdrdir)/ruby/intern.h
unixserver.o: $(hdrdir)/ruby/io.h
unixserver.o: $(hdrdir)/ruby/missing.h
unixserver.o: $(hdrdir)/ruby/onigmo.h
unixserver.o: $(hdrdir)/ruby/oniguruma.h
unixserver.o: $(hdrdir)/ruby/ruby.h
unixserver.o: $(hdrdir)/ruby/st.h
unixserver.o: $(hdrdir)/ruby/subst.h
unixserver.o: $(hdrdir)/ruby/thread.h
unixserver.o: $(hdrdir)/ruby/util.h
unixserver.o: $(top_srcdir)/internal.h
unixserver.o: constdefs.h
unixserver.o: rubysocket.h
unixserver.o: sockport.h
unixserver.o: unixserver.c
unixsocket.o: $(RUBY_EXTCONF_H)
unixsocket.o: $(arch_hdrdir)/ruby/config.h
unixsocket.o: $(hdrdir)/ruby.h
unixsocket.o: $(hdrdir)/ruby/assert.h
unixsocket.o: $(hdrdir)/ruby/backward.h
unixsocket.o: $(hdrdir)/ruby/defines.h
unixsocket.o: $(hdrdir)/ruby/encoding.h
unixsocket.o: $(hdrdir)/ruby/intern.h
unixsocket.o: $(hdrdir)/ruby/io.h
unixsocket.o: $(hdrdir)/ruby/missing.h
unixsocket.o: $(hdrdir)/ruby/onigmo.h
unixsocket.o: $(hdrdir)/ruby/oniguruma.h
unixsocket.o: $(hdrdir)/ruby/ruby.h
unixsocket.o: $(hdrdir)/ruby/st.h
unixsocket.o: $(hdrdir)/ruby/subst.h
unixsocket.o: $(hdrdir)/ruby/thread.h
unixsocket.o: $(hdrdir)/ruby/util.h
unixsocket.o: $(top_srcdir)/internal.h
unixsocket.o: constdefs.h
unixsocket.o: rubysocket.h
unixsocket.o: sockport.h
unixsocket.o: unixsocket.c
# AUTOGENERATED DEPENDENCIES END
