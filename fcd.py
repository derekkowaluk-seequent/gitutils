#!python
# Forward CD
# Derek Kowaluk Dec 22, 2021
# 

import sys
import os
#from file_system_tools import *
from os.path import join, getsize

def print_usage():
	print("Usage:")


def scan_with_tags(taglist, dirpath = '.'):
	#find all folders, compare to taglist if found, cd and continue
	#print(taglist)

	s_it = os.scandir(dirpath)
	trylist = []
	foundlist = []
	with s_it:
		while True:
			try:
				try:
					entry = next(s_it)
				except StopIteration:
					break
			except OSError as error:
				if onerror is not None:
					onerror(error)
				return
			try:
				is_dir = entry.is_dir()
			except OSError:
				is_dir = False

			if is_dir:
				basename = os.path.basename(entry.name)
				if basename[0] == '.': continue
				if basename in taglist:
					foundlist.append((basename, os.path.abspath(entry.path)))
					print(os.path.abspath(entry.path))
				else :
					trylist.append(os.path.abspath(entry.path))
		return (foundlist,trylist)



def change_with_tags(taglist, dirpath = '.'):

	foundlist, trylist = scan_with_tags(taglist, dirpath)

	while True:

		if (foundlist) :
			for eachone in foundlist:
				mytags = taglist.copy()
				mytags.remove(eachone[0])
				f, t = scan_with_tags(mytags, eachone[1])
			print("found some")
		else:
			print(trylist)




def main():
	data = None

	if len(sys.argv) < 2:
		print_usage()
		sys.exit()

	change_with_tags(sys.argv[1:])

if __name__ == '__main__':
	main()