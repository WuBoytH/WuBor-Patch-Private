#!/usr/bin/python3.9
import shutil, os, sys, pathlib

# check if romfs exists
if not os.path.exists("../romfs"):
  print("ERROR: no romfs dir!")
  exit("romfs dir was missing!")

# if distribution folder exists, delete it
if "build" in os.listdir('..'):
  shutil.rmtree('../build')
os.makedirs('../build/ultimate/')
shutil.copytree("../romfs", "../build/ultimate/mods/The WuBor Patch")


# zip each folder in the staging dir
shutil.make_archive("build", 'zip', '../build')
shutil.move("build.zip", "../build.zip")
