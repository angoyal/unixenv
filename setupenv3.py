#!/usr/bin/python3

import os

a = os.listdir(".") 
print (len(a), " Files found in downloaded environment:")
print (a)

ignore=[]

print ("Iterating over them...")
for f in a:
    defsrc = "./" + f
    defdst = os.getenv("HOME","~/") + "/." + f
    if f == "aliases":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
    if f == "viminfo":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
    if f == "bashrc":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        symdst = os.getenv("HOME","~/") + "/.bash_profile"
        os.symlink(defdst,symdst)
        continue
    if f == "explorer.vim":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
    if f == "exrc":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
    if f == "gvimrc":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
    if f == "path_settings":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
    if f == "vimrc":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
    if f == "viminfo":
        print ("copying ", defsrc, " to ", defdst, "...")
        os.rename(defsrc, defdst)
        continue
        ignore.append(f)


for ig in ignore:
    print ("ignoring ",ig,"...")

print ("Creating .backup directory...")
os.mkdir(os.getenv("HOME","~/") + "/.backup")
