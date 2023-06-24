#!/usr/bin/python3.9
import shutil, os, sys, pathlib

# check if romfs exists
if not os.path.exists("../romfs"):
  print("ERROR: no romfs dir!")
  exit("romfs dir was missing!")

if not os.path.exists("../motion_list"):
  print("ERROR: no motion_list dir!")
  exit("motion_list dir was missing!")

motionYamls = []

for root, subFolder, files in os.walk("../motion_list"):
  for item in files:
    if item.endswith(".yml") :
      motionYamls.append(str(os.path.join(root,item)))

print("Current Directory: " + os.getcwd())

for yml in motionYamls:
  pathFull = os.path.abspath(yml)
  newPath = pathFull.replace("motion_list/", "romfs/")
  newPathNoFile = newPath.replace("motion_list.yml", "")
  os.mkdirs(newPathNoFile)
  newPathFull = newPath.replace("yml", "bin")
  print("--------------")
  print(pathFull)
  print(newPathNoFile)
  print(newPathFull)
  command = "yamlist asm \"" + pathFull + "\" -o \"" + newPathFull + "\""
  print(command)
  os.system(command)

# if distribution folder exists, delete it
if "build" in os.listdir('..'):
  shutil.rmtree('../build')
os.makedirs('../build/ultimate/')
shutil.copytree("../romfs", "../build/ultimate/mods/The WuBor Patch")


# zip each folder in the staging dir
shutil.make_archive("build", 'zip', '../build')
shutil.move("build.zip", "../build.zip")
