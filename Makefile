### Hooks for the editor to set the default target
current: pngtarget

target pngtarget pdftarget vtarget acrtarget: plot.Rout 

##################################################################

# make files

# local.mk should not be a source file; use it to reset the value of the variable local

Sources = Makefile 

##################################################################

# Scripts

scripts = pdfcheck.pl Rprep.pl cw.pl Rtrim.pl Rcalc.pl
rscripts = summary.R objects.R

Sources += $(scripts) $(rscripts)

######################################################################

# Examples 

Sources += add.R

add.Rout: add.R

plot.Rout: plot.R

local = default
md = ../make/
rrd = ../RR/

-include $(md)/local.mk
include $(md)/$(local).mk

include $(rrd)/inc.mk
