# Makefile.in generated automatically by automake 1.4-p4 from Makefile.am

# Copyright (C) 1994, 1995-8, 1999 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.


SHELL = /bin/sh

srcdir = .
top_srcdir = .

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include

DESTDIR =

pkgdatadir = $(datadir)/dbmail-smtp
pkglibdir = $(libdir)/dbmail-smtp
pkgincludedir = $(includedir)/dbmail-smtp

top_builddir = .

ACLOCAL = aclocal
AUTOCONF = autoconf
AUTOMAKE = automake
AUTOHEADER = autoheader

INSTALL = /usr/bin/ginstall -c
INSTALL_PROGRAM = ${INSTALL} $(AM_INSTALL_PROGRAM_FLAGS)
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
transform = s,x,x,

NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
CC = gcc
MAINT = #
MAKEINFO = makeinfo
MYSQLINC = 
PACKAGE = dbmail-smtp
PGSQLINC = 
RANLIB = ranlib
SQLALIB = 
SQLLIB = 
VERSION = 1.0

SUBDIRS = mysql pgsql .

bin_PROGRAMS = dbmail-smtp dbmail-pop3d dbmail-imapd dbmail-maintenance dbmail-config dbmail-adduser dbmail-readvut dbmail-smtp-injector uni-one-convertor raw-convertor dbmail-mini-injector 
bin_SCRIPTS = install-dbmail.sh

dbmail_smtp_SOURCES = list.c debug.c dbmd5.c md5.c mime.c main.c pipe.c bounce.c forward.c memblock.c
dbmail_smtp_LDADD = 
dbmail_smtp_LDFLAGS = 

dbmail_pop3d_SOURCES = pop3.c list.c debug.c dbmd5.c md5.c mime.c misc.c memblock.c pop3d.c
dbmail_pop3d_LDADD = 
dbmail_pop3d_LDFLAGS = 

dbmail_imapd_SOURCES = imap4.c debug.c serverservice.c list.c dbmd5.c md5.c imaputil.c imapcommands.c mime.c misc.c memblock.c rfcmsg.c imapd.c
dbmail_imapd_LDADD = 
dbmail_imapd_LDFLAGS = 

dbmail_maintenance_SOURCES = debug.c list.c dbmd5.c md5.c mime.c memblock.c maintenance.c auth.h
dbmail_maintenance_LDADD = 
dbmail_maintenance_LDFLAGS = 

dbmail_config_SOURCES = list.c md5.c debug.c dbmd5.c mime.c memblock.c settings.c
dbmail_config_LDADD = 
dbmail_config_LDFLAGS = 

dbmail_adduser_SOURCES = debug.c list.c dbmd5.c md5.c mime.c memblock.c user.c
dbmail_adduser_LDADD = 
dbmail_adduser_LDFLAGS = 

dbmail_readvut_SOURCES = debug.c list.c dbmd5.c md5.c mime.c vut2dbmail.c
dbmail_readvut_LDADD = 
dbmail_readvut_LDFLAGS = 

#dbmail_realsmtp_SOURCES = debug.c dbmd5.c md5.c list.c mime.c \
#                          serverservice.c misc.c memblock.c
#dbmail_realsmtp_LDADD = 
#dbmail_realsmtp_LDFLAGS = 

dbmail_smtp_injector_SOURCES = list.c debug.c dbmd5.c md5.c mime.c injector.c
dbmail_smtp_injector_LDADD = 
dbmail_smtp_injector_LDFLAGS = 

uni_one_convertor_SOURCES = list.c debug.c dbmd5.c md5.c mime.c uni-one-convert.c
uni_one_convertor_LDADD = 
uni_one_convertor_LDFLAGS = 

raw_convertor_SOURCES = list.c debug.c dbmd5.c md5.c mime.c raw-convert.c
raw_convertor_LDADD = 
raw_convertor_LDFLAGS = 

dbmail_mini_injector_SOURCES = debug.c list.c dbmd5.c md5.c mime.c mini-injector.c
dbmail_mini_injector_LDADD = 
dbmail_mini_injector_LDFLAGS = 
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/buildtools/mkinstalldirs
CONFIG_CLEAN_FILES = 
PROGRAMS =  $(bin_PROGRAMS)


DEFS = -DPACKAGE=\"dbmail-smtp\" -DVERSION=\"1.0\"  -I. -I$(srcdir) 
CPPFLAGS = 
LDFLAGS = 
LIBS = 
dbmail_smtp_OBJECTS =  list.o debug.o dbmd5.o md5.o mime.o main.o pipe.o \
bounce.o forward.o memblock.o
dbmail_smtp_DEPENDENCIES = 
dbmail_pop3d_OBJECTS =  pop3.o list.o debug.o dbmd5.o md5.o mime.o \
misc.o memblock.o pop3d.o
dbmail_pop3d_DEPENDENCIES = 
dbmail_imapd_OBJECTS =  imap4.o debug.o serverservice.o list.o dbmd5.o \
md5.o imaputil.o imapcommands.o mime.o misc.o memblock.o rfcmsg.o \
imapd.o
dbmail_imapd_DEPENDENCIES = 
dbmail_maintenance_OBJECTS =  debug.o list.o dbmd5.o md5.o mime.o \
memblock.o maintenance.o
dbmail_maintenance_DEPENDENCIES = 
dbmail_config_OBJECTS =  list.o md5.o debug.o dbmd5.o mime.o memblock.o \
settings.o
dbmail_config_DEPENDENCIES = 
dbmail_adduser_OBJECTS =  debug.o list.o dbmd5.o md5.o mime.o memblock.o \
user.o
dbmail_adduser_DEPENDENCIES = 
dbmail_readvut_OBJECTS =  debug.o list.o dbmd5.o md5.o mime.o \
vut2dbmail.o
dbmail_readvut_DEPENDENCIES = 
dbmail_smtp_injector_OBJECTS =  list.o debug.o dbmd5.o md5.o mime.o \
injector.o
dbmail_smtp_injector_DEPENDENCIES = 
uni_one_convertor_OBJECTS =  list.o debug.o dbmd5.o md5.o mime.o \
uni-one-convert.o
uni_one_convertor_DEPENDENCIES = 
raw_convertor_OBJECTS =  list.o debug.o dbmd5.o md5.o mime.o \
raw-convert.o
raw_convertor_DEPENDENCIES = 
dbmail_mini_injector_OBJECTS =  debug.o list.o dbmd5.o md5.o mime.o \
mini-injector.o
dbmail_mini_injector_DEPENDENCIES = 
SCRIPTS =  $(bin_SCRIPTS)

CFLAGS = -g -O2
COMPILE = $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@
DIST_COMMON =  README COPYING INSTALL Makefile.am Makefile.in TODO \
aclocal.m4 configure configure.in


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = tar
GZIP_ENV = --best
DEP_FILES =  .deps/bounce.P .deps/dbmd5.P .deps/debug.P .deps/forward.P \
.deps/imap4.P .deps/imapcommands.P .deps/imapd.P .deps/imaputil.P \
.deps/injector.P .deps/list.P .deps/main.P .deps/maintenance.P \
.deps/md5.P .deps/memblock.P .deps/mime.P .deps/mini-injector.P \
.deps/misc.P .deps/pipe.P .deps/pop3.P .deps/pop3d.P \
.deps/raw-convert.P .deps/rfcmsg.P .deps/serverservice.P \
.deps/settings.P .deps/uni-one-convert.P .deps/user.P \
.deps/vut2dbmail.P
SOURCES = $(dbmail_smtp_SOURCES) $(dbmail_pop3d_SOURCES) $(dbmail_imapd_SOURCES) $(dbmail_maintenance_SOURCES) $(dbmail_config_SOURCES) $(dbmail_adduser_SOURCES) $(dbmail_readvut_SOURCES) $(dbmail_smtp_injector_SOURCES) $(uni_one_convertor_SOURCES) $(raw_convertor_SOURCES) $(dbmail_mini_injector_SOURCES)
OBJECTS = $(dbmail_smtp_OBJECTS) $(dbmail_pop3d_OBJECTS) $(dbmail_imapd_OBJECTS) $(dbmail_maintenance_OBJECTS) $(dbmail_config_OBJECTS) $(dbmail_adduser_OBJECTS) $(dbmail_readvut_OBJECTS) $(dbmail_smtp_injector_OBJECTS) $(uni_one_convertor_OBJECTS) $(raw_convertor_OBJECTS) $(dbmail_mini_injector_OBJECTS)

all: all-redirect
.SUFFIXES:
.SUFFIXES: .S .c .o .s
$(srcdir)/Makefile.in: # Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnu Makefile

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status $(BUILT_SOURCES)
	cd $(top_builddir) \
	  && CONFIG_FILES=$@ CONFIG_HEADERS= $(SHELL) ./config.status

$(ACLOCAL_M4): # configure.in 
	cd $(srcdir) && $(ACLOCAL)

config.status: $(srcdir)/configure.in $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck
$(srcdir)/configure: #$(srcdir)/configure.in $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && $(AUTOCONF)

mostlyclean-binPROGRAMS:

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)

distclean-binPROGRAMS:

maintainer-clean-binPROGRAMS:

install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo "  $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`"; \
	     $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	list='$(bin_PROGRAMS)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	done

.s.o:
	$(COMPILE) -c $<

.S.o:
	$(COMPILE) -c $<

mostlyclean-compile:
	-rm -f *.o core *.core

clean-compile:

distclean-compile:
	-rm -f *.tab.c

maintainer-clean-compile:

dbmail-smtp: $(dbmail_smtp_OBJECTS) $(dbmail_smtp_DEPENDENCIES)
	@rm -f dbmail-smtp
	$(LINK) $(dbmail_smtp_LDFLAGS) $(dbmail_smtp_OBJECTS) $(dbmail_smtp_LDADD) $(LIBS)

dbmail-pop3d: $(dbmail_pop3d_OBJECTS) $(dbmail_pop3d_DEPENDENCIES)
	@rm -f dbmail-pop3d
	$(LINK) $(dbmail_pop3d_LDFLAGS) $(dbmail_pop3d_OBJECTS) $(dbmail_pop3d_LDADD) $(LIBS)

dbmail-imapd: $(dbmail_imapd_OBJECTS) $(dbmail_imapd_DEPENDENCIES)
	@rm -f dbmail-imapd
	$(LINK) $(dbmail_imapd_LDFLAGS) $(dbmail_imapd_OBJECTS) $(dbmail_imapd_LDADD) $(LIBS)

dbmail-maintenance: $(dbmail_maintenance_OBJECTS) $(dbmail_maintenance_DEPENDENCIES)
	@rm -f dbmail-maintenance
	$(LINK) $(dbmail_maintenance_LDFLAGS) $(dbmail_maintenance_OBJECTS) $(dbmail_maintenance_LDADD) $(LIBS)

dbmail-config: $(dbmail_config_OBJECTS) $(dbmail_config_DEPENDENCIES)
	@rm -f dbmail-config
	$(LINK) $(dbmail_config_LDFLAGS) $(dbmail_config_OBJECTS) $(dbmail_config_LDADD) $(LIBS)

dbmail-adduser: $(dbmail_adduser_OBJECTS) $(dbmail_adduser_DEPENDENCIES)
	@rm -f dbmail-adduser
	$(LINK) $(dbmail_adduser_LDFLAGS) $(dbmail_adduser_OBJECTS) $(dbmail_adduser_LDADD) $(LIBS)

dbmail-readvut: $(dbmail_readvut_OBJECTS) $(dbmail_readvut_DEPENDENCIES)
	@rm -f dbmail-readvut
	$(LINK) $(dbmail_readvut_LDFLAGS) $(dbmail_readvut_OBJECTS) $(dbmail_readvut_LDADD) $(LIBS)

dbmail-smtp-injector: $(dbmail_smtp_injector_OBJECTS) $(dbmail_smtp_injector_DEPENDENCIES)
	@rm -f dbmail-smtp-injector
	$(LINK) $(dbmail_smtp_injector_LDFLAGS) $(dbmail_smtp_injector_OBJECTS) $(dbmail_smtp_injector_LDADD) $(LIBS)

uni-one-convertor: $(uni_one_convertor_OBJECTS) $(uni_one_convertor_DEPENDENCIES)
	@rm -f uni-one-convertor
	$(LINK) $(uni_one_convertor_LDFLAGS) $(uni_one_convertor_OBJECTS) $(uni_one_convertor_LDADD) $(LIBS)

raw-convertor: $(raw_convertor_OBJECTS) $(raw_convertor_DEPENDENCIES)
	@rm -f raw-convertor
	$(LINK) $(raw_convertor_LDFLAGS) $(raw_convertor_OBJECTS) $(raw_convertor_LDADD) $(LIBS)

dbmail-mini-injector: $(dbmail_mini_injector_OBJECTS) $(dbmail_mini_injector_DEPENDENCIES)
	@rm -f dbmail-mini-injector
	$(LINK) $(dbmail_mini_injector_LDFLAGS) $(dbmail_mini_injector_OBJECTS) $(dbmail_mini_injector_LDADD) $(LIBS)

install-binSCRIPTS: $(bin_SCRIPTS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_SCRIPTS)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(INSTALL_SCRIPT) $$p $(DESTDIR)$(bindir)/`echo $$p|sed '$(transform)'`"; \
	    $(INSTALL_SCRIPT) $$p $(DESTDIR)$(bindir)/`echo $$p|sed '$(transform)'`; \
	  else if test -f $(srcdir)/$$p; then \
	    echo " $(INSTALL_SCRIPT) $(srcdir)/$$p $(DESTDIR)$(bindir)/`echo $$p|sed '$(transform)'`"; \
	    $(INSTALL_SCRIPT) $(srcdir)/$$p $(DESTDIR)$(bindir)/`echo $$p|sed '$(transform)'`; \
	  else :; fi; fi; \
	done

uninstall-binSCRIPTS:
	@$(NORMAL_UNINSTALL)
	list='$(bin_SCRIPTS)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(bindir)/`echo $$p|sed '$(transform)'`; \
	done

# This directory's subdirectories are mostly independent; you can cd
# into them and run `make' without going through this Makefile.
# To change the values of `make' variables: instead of editing Makefiles,
# (1) if the variable is set in `config.status', edit `config.status'
#     (which will cause the Makefiles to be regenerated when you run `make');
# (2) otherwise, pass the desired values on the `make' command line.



all-recursive install-data-recursive install-exec-recursive \
installdirs-recursive install-recursive uninstall-recursive  \
check-recursive installcheck-recursive info-recursive dvi-recursive:
	@set fnord $(MAKEFLAGS); amf=$$2; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    dot_seen=yes; \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	   || case "$$amf" in *=*) exit 1;; *k*) fail=yes;; *) exit 1;; esac; \
	done; \
	if test "$$dot_seen" = "no"; then \
	  $(MAKE) $(AM_MAKEFLAGS) "$$target-am" || exit 1; \
	fi; test -z "$$fail"

mostlyclean-recursive clean-recursive distclean-recursive \
maintainer-clean-recursive:
	@set fnord $(MAKEFLAGS); amf=$$2; \
	dot_seen=no; \
	rev=''; list='$(SUBDIRS)'; for subdir in $$list; do \
	  rev="$$subdir $$rev"; \
	  test "$$subdir" = "." && dot_seen=yes; \
	done; \
	test "$$dot_seen" = "no" && rev=". $$rev"; \
	target=`echo $@ | sed s/-recursive//`; \
	for subdir in $$rev; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	   || case "$$amf" in *=*) exit 1;; *k*) fail=yes;; *) exit 1;; esac; \
	done && test -z "$$fail"
tags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) tags); \
	done

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP)
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	here=`pwd` && cd $(srcdir) \
	  && mkid -f$$here/ID $$unique $(LISP)

TAGS: tags-recursive $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
   if test "$$subdir" = .; then :; else \
	    test -f $$subdir/TAGS && tags="$$tags -i $$here/$$subdir/TAGS"; \
   fi; \
	done; \
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$unique$(LISP)$$tags" \
	  || (cd $(srcdir) && etags $(ETAGS_ARGS) $$tags  $$unique $(LISP) -o $$here/TAGS)

mostlyclean-tags:

clean-tags:

distclean-tags:
	-rm -f TAGS ID

maintainer-clean-tags:

distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	-rm -rf $(distdir)
	GZIP=$(GZIP_ENV) $(TAR) zxf $(distdir).tar.gz
	mkdir $(distdir)/=build
	mkdir $(distdir)/=inst
	dc_install_base=`cd $(distdir)/=inst && pwd`; \
	cd $(distdir)/=build \
	  && ../configure --srcdir=.. --prefix=$$dc_install_base \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) dist
	-rm -rf $(distdir)
	@banner="$(distdir).tar.gz is ready for distribution"; \
	dashes=`echo "$$banner" | sed s/./=/g`; \
	echo "$$dashes"; \
	echo "$$banner"; \
	echo "$$dashes"
dist: distdir
	-chmod -R a+r $(distdir)
	GZIP=$(GZIP_ENV) $(TAR) chozf $(distdir).tar.gz $(distdir)
	-rm -rf $(distdir)
dist-all: distdir
	-chmod -R a+r $(distdir)
	GZIP=$(GZIP_ENV) $(TAR) chozf $(distdir).tar.gz $(distdir)
	-rm -rf $(distdir)
distdir: $(DISTFILES)
	-rm -rf $(distdir)
	mkdir $(distdir)
	-chmod 777 $(distdir)
	here=`cd $(top_builddir) && pwd`; \
	top_distdir=`cd $(distdir) && pwd`; \
	distdir=`cd $(distdir) && pwd`; \
	cd $(top_srcdir) \
	  && $(AUTOMAKE) --include-deps --build-dir=$$here --srcdir-name=$(top_srcdir) --output-dir=$$top_distdir --gnu Makefile
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  if test -d $$d/$$file; then \
	    cp -pr $$d/$$file $(distdir)/$$file; \
	  else \
	    test -f $(distdir)/$$file \
	    || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	    || cp -p $$d/$$file $(distdir)/$$file || :; \
	  fi; \
	done
	for subdir in $(SUBDIRS); do \
	  if test "$$subdir" = .; then :; else \
	    test -d $(distdir)/$$subdir \
	    || mkdir $(distdir)/$$subdir \
	    || exit 1; \
	    chmod 777 $(distdir)/$$subdir; \
	    (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) top_distdir=../$(distdir) distdir=../$(distdir)/$$subdir distdir) \
	      || exit 1; \
	  fi; \
	done

DEPS_MAGIC := $(shell mkdir .deps > /dev/null 2>&1 || :)

-include $(DEP_FILES)

mostlyclean-depend:

clean-depend:

distclean-depend:
	-rm -rf .deps

maintainer-clean-depend:

%.o: %.c
	@echo '$(COMPILE) -c $<'; \
	$(COMPILE) -Wp,-MD,.deps/$(*F).pp -c $<
	@-cp .deps/$(*F).pp .deps/$(*F).P; \
	tr ' ' '\012' < .deps/$(*F).pp \
	  | sed -e 's/^\\$$//' -e '/^$$/ d' -e '/:$$/ d' -e 's/$$/ :/' \
	    >> .deps/$(*F).P; \
	rm .deps/$(*F).pp

%.lo: %.c
	@echo '$(LTCOMPILE) -c $<'; \
	$(LTCOMPILE) -Wp,-MD,.deps/$(*F).pp -c $<
	@-sed -e 's/^\([^:]*\)\.o[ 	]*:/\1.lo \1.o :/' \
	  < .deps/$(*F).pp > .deps/$(*F).P; \
	tr ' ' '\012' < .deps/$(*F).pp \
	  | sed -e 's/^\\$$//' -e '/^$$/ d' -e '/:$$/ d' -e 's/$$/ :/' \
	    >> .deps/$(*F).P; \
	rm -f .deps/$(*F).pp
info-am:
info: info-recursive
dvi-am:
dvi: dvi-recursive
check-am: all-am
check: check-recursive
installcheck-am:
installcheck: installcheck-recursive
install-exec-am: install-binPROGRAMS install-binSCRIPTS
install-exec: install-exec-recursive

install-data-am:
install-data: install-data-recursive

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-recursive
uninstall-am: uninstall-binPROGRAMS uninstall-binSCRIPTS
uninstall: uninstall-recursive
all-am: Makefile $(PROGRAMS) $(SCRIPTS)
all-redirect: all-recursive
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) AM_INSTALL_PROGRAM_FLAGS=-s install
installdirs: installdirs-recursive
installdirs-am:
	$(mkinstalldirs)  $(DESTDIR)$(bindir) $(DESTDIR)$(bindir)


mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*

maintainer-clean-generic:
mostlyclean-am:  mostlyclean-binPROGRAMS mostlyclean-compile \
		mostlyclean-tags mostlyclean-depend mostlyclean-generic

mostlyclean: mostlyclean-recursive

clean-am:  clean-binPROGRAMS clean-compile clean-tags clean-depend \
		clean-generic mostlyclean-am

clean: clean-recursive

distclean-am:  distclean-binPROGRAMS distclean-compile distclean-tags \
		distclean-depend distclean-generic clean-am

distclean: distclean-recursive
	-rm -f config.status

maintainer-clean-am:  maintainer-clean-binPROGRAMS \
		maintainer-clean-compile maintainer-clean-tags \
		maintainer-clean-depend maintainer-clean-generic \
		distclean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

maintainer-clean: maintainer-clean-recursive
	-rm -f config.status

.PHONY: mostlyclean-binPROGRAMS distclean-binPROGRAMS clean-binPROGRAMS \
maintainer-clean-binPROGRAMS uninstall-binPROGRAMS install-binPROGRAMS \
mostlyclean-compile distclean-compile clean-compile \
maintainer-clean-compile uninstall-binSCRIPTS install-binSCRIPTS \
install-data-recursive uninstall-data-recursive install-exec-recursive \
uninstall-exec-recursive installdirs-recursive uninstalldirs-recursive \
all-recursive check-recursive installcheck-recursive info-recursive \
dvi-recursive mostlyclean-recursive distclean-recursive clean-recursive \
maintainer-clean-recursive tags tags-recursive mostlyclean-tags \
distclean-tags clean-tags maintainer-clean-tags distdir \
mostlyclean-depend distclean-depend clean-depend \
maintainer-clean-depend info-am info dvi-am dvi check check-am \
installcheck-am installcheck install-exec-am install-exec \
install-data-am install-data install-am install uninstall-am uninstall \
all-redirect all-am all installdirs-am installdirs mostlyclean-generic \
distclean-generic clean-generic maintainer-clean-generic clean \
mostlyclean distclean maintainer-clean


# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
