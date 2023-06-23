#!/usr/bin/python3.9
import shutil, os, sys, pathlib

# check if romfs exists
if not os.path.exists("../romfs"):
  print("ERROR: no romfs dir!")
  exit("romfs dir was missing!")

if not os.path.exists("../motion_list"):
  print("ERROR: no motion_list dir!")
  exit("motion_list dir was missing!")

for root, subFolder, files in os.walk("../motion_list"):
    for item in files:
        if item.endswith(".yml") :
            fileNamePath = str(os.path.join(root,item))
            newPath = fileNamePath.replace("motion_list/", "romfs/")
            newPathFull = newPath.replace("yml", "bin")
            print("--------------")
            print(fileNamePath)
            print(newPathFull)

# if distribution folder exists, delete it
if "build" in os.listdir('..'):
  shutil.rmtree('../build')
os.makedirs('../build/ultimate/')
shutil.copytree("../romfs", "../build/ultimate/mods/The WuBor Patch")


# zip each folder in the staging dir
shutil.make_archive("build", 'zip', '../build')
shutil.move("build.zip", "../build.zip")
