# This Makefile is for the DBD::QBase extension to perl.
#
# It was generated automatically by MakeMaker version 4.16 from the contents
# of Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST! 
#
#   MakeMaker Parameters: 
#	INC => ' -I/LocalLibrary/QuickBase/rdbms/demo -I/usr/local/lib/perl5/i386-next/DBI'
#	NAME => 'DBD::QBase'
#	OBJECT => '$(O_FILES)'
#	VERSION => '0.01'
#	dynamic_lib => { OTHERLDFLAGS=>'-L$(LIBHOME) $(COMPOBJS) ' }

# --- MakeMaker post_initialize section:

default_target: all


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/local/lib/perl5/i386-next/Config.pm)
CC = cc -ObjC
LIBC = /lib/libsys_s.a
LDFLAGS = -u libsys_s -ObjC
LDDLFLAGS = -r
CCDLFLAGS =  
CCCDLFLAGS =  
RANLIB = sleep 5; /bin/ranlib
SO = so
DLEXT = so
DLSRC = dl_next.xs


# --- MakeMaker constants section:

NAME = DBD::QBase
DISTNAME = DBD-QBase
VERSION = 0.01
VERSION_SYM = 0_01

# In which directory should we put this extension during 'make'?
# This is typically ./blib.
# (also see INST_LIBDIR and relationship to ROOTEXT)
INST_LIB = ./blib
INST_ARCHLIB = ./blib
INST_EXE = ./blib

# AFS users will want to set the installation directories for
# the final 'make install' early without setting INST_LIB,
# INST_ARCHLIB, and INST_EXE for the testing phase
INSTALLPRIVLIB = /usr/local/lib/perl5
INSTALLARCHLIB = /usr/local/lib/perl5/i386-next
INSTALLBIN = /usr/local/bin

# Perl library to use when building the extension
PERL_LIB = /usr/local/lib/perl5
PERL_ARCHLIB = /usr/local/lib/perl5/i386-next
LIBPERL_A = libperl.a

MAKEMAKER = $(PERL_LIB)/ExtUtils/MakeMaker.pm
MM_VERSION = 4.16
I_PERL_LIBS = -I$(PERL_ARCHLIB) -I$(PERL_LIB)

# Perl header files (will eventually be under PERL_LIB)
PERL_INC = /usr/local/lib/perl5/i386-next/CORE
# Perl binaries
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl

# FULLEXT = Pathname for extension directory (eg DBD/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT with leading slash (eg /DBD)
FULLEXT = DBD/QBase
BASEEXT = QBase
ROOTEXT = /DBD

INC =  -I/LocalLibrary/QuickBase/ -I/usr/local/lib/perl5/i386-next/DBI
DEFINE = 
OBJECT = $(O_FILES)
LDFROM = $(OBJECT)
LINKTYPE = dynamic

# Handy lists of source code files:
XS_FILES= QBase.xs
C_FILES = QBase.c \
	dbdimp.c
O_FILES = QBase.o \
	dbdimp.o
H_FILES = DBIXS.h \
	QBase.h \
	dbdimp.h

.SUFFIXES: .xs

.PRECIOUS: Makefile

.NO_PARALLEL:

.PHONY: all config static dynamic test linkext

# This extension may link to it's own library (see SDBM_File)
MYEXTLIB = 

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)/Config.pm $(PERL_INC)/config.h

# Where to put things:
INST_LIBDIR     = $(INST_LIB)$(ROOTEXT)
INST_ARCHLIBDIR = $(INST_ARCHLIB)$(ROOTEXT)

INST_AUTODIR      = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR  = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC  = $(INST_ARCHAUTODIR)/$(BASEEXT).a
INST_DYNAMIC = $(INST_ARCHAUTODIR)/$(BASEEXT).$(DLEXT)
INST_BOOT    = $(INST_ARCHAUTODIR)/$(BASEEXT).bs

INST_PM = $(INST_LIB)/QBase.pm


# --- MakeMaker const_loadlibs section:

# DBD::QBase might depend on some other libraries:
# (These comments may need revising:)
#
# Dependent libraries can be linked in one of three ways:
#
#  1.  (For static extensions) by the ld command when the perl binary
#      is linked with the extension library. See EXTRALIBS below.
#
#  2.  (For dynamic extensions) by the ld command when the shared
#      object is built/linked. See LDLOADLIBS below.
#
#  3.  (For dynamic extensions) by the DynaLoader when the shared
#      object is loaded. See BSLOADLIBS below.
#
# EXTRALIBS =	List of libraries that need to be linked with when
#		linking a perl binary which includes this extension
#		Only those libraries that actually exist are included.
#		These are written to a file and used when linking perl.
#
# LDLOADLIBS =	List of those libraries which can or must be linked into
#		the shared library when created using ld. These may be
#		static or dynamic libraries.
#		LD_RUN_PATH is a colon separated list of the directories
#		in LDLOADLIBS. It is passed as an environment variable to
#		the process that links the shared library.
#
# BSLOADLIBS =	List of those libraries that are needed but can be
#		linked in dynamically at run time on this platform.
#		SunOS/Solaris does not need this because ld records
#		the information (from LDLOADLIBS) into the object file.
#		This list is used to create a .bs (bootstrap) file.
#
EXTRALIBS  =  -L$(LIBHOME) 
LDLOADLIBS = 
BSLOADLIBS = 
LD_RUN_PATH= 


# --- MakeMaker const_cccmd section:
CCCMD = $(CC) -c -DUSE_NEXT_CTYPE -O


# --- MakeMaker tool_autosplit section:

# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" -e 'use AutoSplit;autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1) ;'


# --- MakeMaker tool_xsubpp section:

XSUBPPDIR = $(PERL_LIB)/ExtUtils
XSUBPP = $(XSUBPPDIR)/xsubpp
XSUBPPDEPS = $(XSUBPPDIR)/typemap
XSUBPPARGS = -typemap $(XSUBPPDIR)/typemap


# --- MakeMaker tools_other section:

SHELL = /bin/sh
LD = ld
TOUCH = touch
CP = cp
MV = mv
RM_F  = rm -f
RM_RF = rm -rf
CHMOD = chmod

# The following is a portable way to say mkdir -p
MKPATH = $(PERL) -wle '$$"="/"; foreach $$p (@ARGV){ next if -d $$p; my(@p); foreach(split(/\//,$$p)){ push(@p,$$_); next if -d "@p/"; print "mkdir @p"; mkdir("@p",0777)||die $$! }} exit 0;'


# --- MakeMaker macro section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU1 = INST_LIB="$(INST_LIB)"\
	INST_ARCHLIB="$(INST_ARCHLIB)"\
	INST_EXE="$(INST_EXE)"\
	INSTALLPRIVLIB="$(INSTALLPRIVLIB)"\
	INSTALLARCHLIB="$(INSTALLARCHLIB)"\
	INSTALLBIN="$(INSTALLBIN)"\
	LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"

PASTHRU2 = INSTALLPRIVLIB="$(INSTALLPRIVLIB)"\
	INSTALLARCHLIB="$(INSTALLARCHLIB)"\
	INSTALLBIN="$(INSTALLBIN)"\
	LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"


# --- MakeMaker c_o section:

.c.o:
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $(INC) $*.c


# --- MakeMaker xs_c section:

.xs.c:
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(XSUBPP) $(XSUBPPARGS) $*.xs >$*.tc && mv $*.tc $@


# --- MakeMaker xs_o section:

.xs.o:
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(XSUBPP) $(XSUBPPARGS) $*.xs >xstmp.c && mv xstmp.c $*.c
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $(INC) $*.c


# --- MakeMaker top_targets section:

all ::	config linkext $(INST_PM)


config :: Makefile $(INST_LIBDIR)/.exists $(INST_ARCHAUTODIR)/.exists Version_check

$(INST_LIBDIR)/.exists :: $(PERL)
	@ $(MKPATH) $(INST_LIBDIR)
	@ $(TOUCH) $(INST_LIBDIR)/.exists

$(INST_ARCHAUTODIR)/.exists :: $(PERL)
	@ $(MKPATH) $(INST_ARCHAUTODIR)
	@ $(TOUCH) $(INST_ARCHAUTODIR)/.exists

$(INST_EXE)/.exists :: $(PERL)
	@ $(MKPATH) $(INST_EXE)
	@ $(TOUCH) $(INST_EXE)/.exists

$(O_FILES): $(H_FILES)

help:
	$(PERL) -I$(PERL_LIB) -e 'use ExtUtils::MakeMaker "&help"; &help;'

Version_check:
	@$(PERL) -I$(PERL_LIB) -e 'use ExtUtils::MakeMaker qw($$Version &Version_check);' \
		-e '&Version_check($(MM_VERSION))'


# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)



# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

# $(INST_PM) has been moved to the all: target.
# It remains here for awhile to allow for old usage: "make dynamic"
dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT) $(INST_PM)



# --- MakeMaker dynamic_bs section:

BOOTSTRAP = QBase.bs

# As Mkbootstrap might not write a file (if none is required)
# we use touch to prevent make continually trying to remake it.
# The DynaLoader only reads a non-empty file.
$(BOOTSTRAP): Makefile 
	@ echo "Running Mkbootstrap for $(NAME) ($(BSLOADLIBS))"
	@ $(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" \
		-e 'use ExtUtils::Mkbootstrap;' \
		-e 'Mkbootstrap("$(BASEEXT)","$(BSLOADLIBS)");'
	@ $(TOUCH) $(BOOTSTRAP)
	$(CHMOD) 644 $@
	@echo $@ >> $(INST_ARCHAUTODIR)/.packlist

$(INST_BOOT): $(BOOTSTRAP)
	@ rm -rf $(INST_BOOT)
	-cp $(BOOTSTRAP) $(INST_BOOT)
	$(CHMOD) 644 $@
	@echo $@ >> $(INST_ARCHAUTODIR)/.packlist


# --- MakeMaker dynamic_lib section:

# This section creates the dynamically loadable $(INST_DYNAMIC)
# from $(OBJECT) and possibly $(MYEXTLIB).
ARMAYBE = :
OTHERLDFLAGS = -L$(LIBHOME) $(COMPOBJS) 

$(INST_DYNAMIC): $(OBJECT) $(MYEXTLIB) $(BOOTSTRAP) $(INST_ARCHAUTODIR)/.exists
	LD_RUN_PATH="$(LD_RUN_PATH)" $(LD) -o $@ $(LDDLFLAGS) $(LDFROM) $(OTHERLDFLAGS) $(MYEXTLIB) $(LDLOADLIBS)
	$(CHMOD) 755 $@
	@echo $@ >> $(INST_ARCHAUTODIR)/.packlist


# --- MakeMaker static section:

# $(INST_PM) has been moved to the all: target.
# It remains here for awhile to allow for old usage: "make static"
static :: Makefile $(INST_STATIC) $(INST_PM)



# --- MakeMaker static_lib section:

$(INST_STATIC): $(OBJECT) $(MYEXTLIB) $(INST_ARCHAUTODIR)/.exists
	ar cr $@ $(OBJECT) && $(RANLIB) $@
	@echo "$(EXTRALIBS)" > $(INST_ARCHAUTODIR)/extralibs.ld
	$(CHMOD) 755 $@
	@echo $@ >> $(INST_ARCHAUTODIR)/.packlist


# --- MakeMaker installpm section:

# installpm: QBase.pm => $(INST_LIB)/QBase.pm, splitlib=$(INST_LIB)

$(INST_LIB)/QBase.pm: QBase.pm Makefile $(INST_LIB)/.exists
	@ rm -f $@
	cp QBase.pm $@
	$(CHMOD) 644 $@
	@echo $@ >> $(INST_ARCHAUTODIR)/.packlist
	@$(AUTOSPLITFILE) $@ $(INST_LIB)/auto

$(INST_LIB)/.exists :: $(PERL)
	@ $(MKPATH) $(INST_LIB)
	@ $(TOUCH) $(INST_LIB)/.exists



# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	-rm -rf *~ t/*~ *.o *.a mon.out core so_locations $(BOOTSTRAP) $(BASEEXT).bso $(BASEEXT).exp QBase.c ./blib


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	rm -rf $(INST_AUTODIR) $(INST_ARCHAUTODIR)
	rm -f $(INST_DYNAMIC) $(INST_BOOT)
	rm -f $(INST_STATIC) $(INST_PM)
	rm -rf Makefile Makefile.old


# --- MakeMaker dist section:

DISTFILES=RCS/*

ci:
	-ci -u $(DISTFILES) 2>&1 | grep -v "no lock set by "
	-rcs -q -Nv`echo "$(VERSION)" | tr . _`: $(DISTFILES)

rcsdiff:
	for f in $(DISTFILES); do rcsdiff -r$(V) $$f; done 2>&1 | less

dist:  ci clean
	rcs -q -sRel $(DISTFILES)
	co -q -u     $(DISTFILES)
	rm -f Makefile *~ t/*~
	cd ..; tar cvFf $(DISTNAME)-$(VERSION).tar \
		`sed -e "s:^:$(BASEEXT)/:" < $(BASEEXT)/MANIFEST`
	@cd ..; compress $(DISTNAME)-$(VERSION).tar;
	@chmod -w ../$(DISTNAME)-$(VERSION).tar.Z
	mv ../$(DISTNAME)-$(VERSION).tar.Z $$HOME/perl/db/DBD/QBase//
	cp README $$HOME/perl/db/DBD/QBase/
	@cd $$HOME/perl/db/DBD/QBase; pwd; ls -l *.Z


# --- MakeMaker install section:

doc_install ::
	@ echo Appending installation info to $(INSTALLARCHLIB)/perllocal.pod
	@ $(PERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB)  \
		-e "use ExtUtils::MakeMaker; MM->writedoc('Module', '$(NAME)', \
		'LINKTYPE=$(LINKTYPE)', 'VERSION=$(VERSION)', \
		'EXE_FILES=$(EXE_FILES)')" >> $(INSTALLARCHLIB)/perllocal.pod

install :: pure_install doc_install

pure_install ::
	@$(PERL) -e 'foreach (@ARGV){die qq{You do not have permissions to install into $$_\n} unless -w $$_}' $(INSTALLPRIVLIB) $(INSTALLARCHLIB)
	: perl5.000 and MM pre 3.8 autosplit into INST_ARCHLIB, we delete these old files here
	rm -f $(INSTALLARCHLIB)/auto/$(FULLEXT)/*.al
	rm -f $(INSTALLARCHLIB)/auto/$(FULLEXT)/*.ix
	$(MAKE) INST_LIB=$(INSTALLPRIVLIB) INST_ARCHLIB=$(INSTALLARCHLIB) INST_EXE=$(INSTALLBIN)
	@$(PERL) -i.bak -lne 'print unless $$seen{$$_}++' $(INSTALLARCHLIB)/auto/$(FULLEXT)/.packlist

#### UNINSTALL IS STILL EXPERIMENTAL ####
uninstall ::
	$(RM_RF) `cat $(INSTALLARCHLIB)/auto/$(FULLEXT)/.packlist`


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE:


# --- MakeMaker perldepend section:

PERL_HDRS = $(PERL_INC)/EXTERN.h $(PERL_INC)/INTERN.h \
    $(PERL_INC)/XSUB.h	$(PERL_INC)/av.h	$(PERL_INC)/cop.h \
    $(PERL_INC)/cv.h	$(PERL_INC)/dosish.h	$(PERL_INC)/embed.h \
    $(PERL_INC)/form.h	$(PERL_INC)/gv.h	$(PERL_INC)/handy.h \
    $(PERL_INC)/hv.h	$(PERL_INC)/keywords.h	$(PERL_INC)/mg.h \
    $(PERL_INC)/op.h	$(PERL_INC)/opcode.h	$(PERL_INC)/patchlevel.h \
    $(PERL_INC)/perl.h	$(PERL_INC)/perly.h	$(PERL_INC)/pp.h \
    $(PERL_INC)/proto.h	$(PERL_INC)/regcomp.h	$(PERL_INC)/regexp.h \
    $(PERL_INC)/scope.h	$(PERL_INC)/sv.h	$(PERL_INC)/unixish.h \
    $(PERL_INC)/util.h	$(PERL_INC)/config.h



$(OBJECT) : $(PERL_HDRS)

QBase.c : $(XSUBPPDEPS)


# --- MakeMaker makefile section:

$(OBJECT) : Makefile

# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
Makefile :	Makefile.PL $(CONFIGDEP)
	@echo "Makefile out-of-date with respect to $?"
	@echo "Cleaning current config before rebuilding Makefile..."
	-@mv Makefile Makefile.old
	-$(MAKE) -f Makefile.old clean >/dev/null 2>&1 || true
	$(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" Makefile.PL 
	@echo "Now you must rerun make."; false


# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl
MAP_LINKCMD   = $(CC) -u libsys_s -ObjC 
MAP_PERLINC   = -I./blib -I./blib -I/usr/local/lib/perl5/i386-next -I/usr/local/lib/perl5
MAP_STATIC    = ./blib/auto/DBD/QBase/QBase.a /usr/local/lib/perl5/i386-next/auto/DynaLoader/DynaLoader.a
MAP_PRELIBS   = -ldbm -lMedia_s -lNeXT_s -lQBSQL5_1 

MAP_LIBPERL = /usr/local/lib/perl5/i386-next/CORE/libperl.a

extralibs.ld: ./blib/auto/DBD/QBase/extralibs.ld /usr/local/lib/perl5/i386-next/auto/DynaLoader/extralibs.ld
	@ rm -f $@
	@ $(TOUCH) $@
	cat ./blib/auto/DBD/QBase/extralibs.ld >> $@
	cat /usr/local/lib/perl5/i386-next/auto/DynaLoader/extralibs.ld >> $@

$(MAP_TARGET): ./perlmain.o $(MAP_LIBPERL) $(MAP_STATIC) extralibs.ld
	$(MAP_LINKCMD) -o $@ ./perlmain.o $(MAP_LIBPERL) $(MAP_STATIC) `cat extralibs.ld` $(MAP_PRELIBS)
	@ echo 'To install the new "$(MAP_TARGET)" binary, call'
	@ echo '    make -f Makefile inst_perl MAP_TARGET=$(MAP_TARGET)'
	@ echo 'To remove the intermediate files say'
	@ echo '    make -f Makefile map_clean'

./perlmain.o: ./perlmain.c
	cd . && $(CC) -I/usr/local/lib/perl5/i386-next/CORE -c -DUSE_NEXT_CTYPE -O perlmain.c

./perlmain.c: Makefile
	@ echo Writing $@
	@ $(FULLPERL) $(MAP_PERLINC) -e 'use ExtUtils::Miniperl; \
		writemain(grep s#.*/auto/##, qw|$(MAP_STATIC)|)' > $@.tmp && mv $@.tmp $@


doc_inst_perl:
	@ echo Appending installation info to $(INSTALLARCHLIB)/perllocal.pod
	@ $(FULLPERL) -e 'use ExtUtils::MakeMaker; MM->writedoc("Perl binary",' \
		-e '"$(MAP_TARGET)", "MAP_STATIC=$(MAP_STATIC)",' \
		-e '"MAP_EXTRA=@ARGV", "MAP_LIBPERL=$(MAP_LIBPERL)")' \
		-- `cat extralibs.ld` >> $(INSTALLARCHLIB)/perllocal.pod

inst_perl: pure_inst_perl doc_inst_perl

pure_inst_perl: $(MAP_TARGET)
	cp $(MAP_TARGET) $(INSTALLBIN)/$(MAP_TARGET)

clean :: map_clean

map_clean :
	rm -f ./perlmain.o ./perlmain.c $(MAP_TARGET) extralibs.ld


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_dynamic

test :: $(TEST_TYPE)

test_dynamic :: all
	$(FULLPERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) test.pl

test_static :: all $(MAP_TARGET)
	./$(MAP_TARGET) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) test.pl



# --- MakeMaker postamble section:


# End.
