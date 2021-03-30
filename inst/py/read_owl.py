import xmltodict
import os
def read_owl(owl_path):
	owl_path = os.path.expanduser(owl_path)
	with open(owl_path, 'rb') as f:
		output = xmltodict.parse(f)
		return(output)
