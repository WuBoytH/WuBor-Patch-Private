#!/usr/bin/python3.9
import shutil, os, sys, pathlib

# check if romfs exists
if not os.path.exists("../romfs"):
  print("ERROR: no romfs dir!")
  exit("romfs dir was missing!")

if not os.path.exists("../motion_list"):
  print("ERROR: no motion_list dir!")
  exit("motion_list dir was missing!")

if os.path.exists("../build_lists"):
  shutil.rmtree("../build_lists")

motionYamls = []

for root, subFolder, files in os.walk("../motion_list"):
  for item in files:
    if item.endswith(".yml") :
      motionYamls.append(str(os.path.join(root,item)))

print("Current Directory: " + os.getcwd())

for yml in motionYamls:
  oldPathNoFile = yml.replace("motion_list.yml", "")
  newPathNoFile = oldPathNoFile.replace('motion_list', 'build_lists')
  os.makedirs(newPathNoFile, mode = 0o777, exist_ok = True)
  newPathFull = newPathNoFile + "motion_list.yml"
  print("--------------")
  print(yml)
  print(newPathNoFile)
  print(newPathFull)
  command = "yamlist asm \"" + yml + "\" -o \"" + newPathFull + "\""
  print(command)
  os.system(command)
