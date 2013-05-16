#!/usr/bin/python

import dircache
import os

a = dircache.listdir(".") 
print len(a), " Files found in downloaded environment:"
print a

print "Iterating over them..."
for f in a:
	if f == "aliases":
		os.rename(f, "~/." + f)
		continue
	if f == "viminfo":
		os.rename(f, "~/." + f)
		continue
	if f == "bashrc":
		os.rename(f, "~/." + f)
		continue
	if f == "explorer.vim":
		os.rename(f, "~/." + f)
		continue
	if f == "exrc":
		os.rename(f, "~/." + f)
		continue
	if f == "gvimrc":
		os.rename(f, "~/." + f)
		continue
	if f == "path_settings":
		os.rename(f, "~/." + f)
		continue
	if f == "vimrc":
		os.rename(f, "~/." + f)
		continue
	print "ignoring... ", f


print "Creating .backup directory..."
os.create("~/.backup")
