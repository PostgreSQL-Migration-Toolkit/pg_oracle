# contrib/pg_oracle/Makefile

MODULE_big = pg_oracle
OBJS = pg_oracle.o $(WIN32RES)

EXTENSION = pg_oracle
DATA = pg_oracle--1.0.sql

PGFILEDESC = "pg_oracle - PostgreSQL Extension to provide Oracle compatible functions."

LDFLAGS_SL += $(filter -lm, $(LIBS)) 

REGRESS_OPTS = --temp-config $(top_srcdir)/contrib/pg_oracle/pg_oracle.conf
REGRESS = basic pg_oracle

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/pg_oracle
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
