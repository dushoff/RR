### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: notarget

##################################################################

# make files

# local.mk should not be a source file; use it to reset the value of the variable local

Sources = Makefile 

##################################################################

# Scripts

scripts = pdfcheck.pl Rprep.pl cw.pl Rtrim.pl Rcalc.pl
rscripts = summary.R objects.R

Sources += $(scripts) $(rscripts)

$(Sources):
	/bin/cp /home/dushoff/Dropbox/WorkingWiki-export/.workingwiki/resources/site/$@ .	

######################################################################

local = default
md = ../make/
rrd = ../RR/

-include $(md)/local.mk
include $(md)/$(local).mk

include $(rrd)/inc.mk
