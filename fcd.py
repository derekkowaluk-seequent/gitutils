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


def find_forward(taglist, dirpath = '.'):
	if not len(taglist):
		return (True, dirpath)

	result = (False, dirpath)
	s_it = os.scandir(dirpath)
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
				return result
			try:
				is_dir = entry.is_dir()
			except OSError:
				is_dir = False
			if is_dir:
				basename = os.path.basename(entry.name)
				if basename[0] == '.': continue
				if basename in taglist:
					nextlist = taglist.copy()
					nextlist.remove(basename)
					result = find_forward(nextlist, os.path.abspath(entry.path))
				else:
					result = find_forward(taglist, os.path.abspath(entry.path))
				if (result[0] == True):
					return result



def main():
	data = None

	if len(sys.argv) < 2:
		print_usage()
		sys.exit()

	result = find_forward(sys.argv[1:])
	if result[0]:
		print(result)
	else:
		print("Not Found")

if __name__ == '__main__':
	main()