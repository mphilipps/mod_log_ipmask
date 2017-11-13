# Makefile for mod_log_ipmask.c (gmake)
# $Id: Makefile 16 2007-12-13 03:40:22Z thomas $
APXS=./apxs.sh

log_ipmask: mod_log_ipmask.so
	@echo make done
	@echo type \"make install\" to install mod_log_ipmask

mod_log_ipmask.so: mod_log_ipmask.c
	$(APXS) -c -n $@ mod_log_ipmask.c

mod_log_ipmask.c:

install: mod_log_ipmask.so
	$(APXS) -i -S LIBEXECDIR=$(DESTDIR)$$($(APXS) -q LIBEXECDIR)/ -n mod_log_ipmask.so mod_log_ipmask.la

clean:
	rm -rf *~ *.o *.so *.lo *.la *.slo *.loT .libs/
