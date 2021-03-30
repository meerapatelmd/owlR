import xmltodict
import os

def get_keys(od): 
  output = list(od.keys())
  return(output)

def get_values(od):
  output = list(od.values())
  return(output)

def read_owl(owl_path):
	owl_path = os.path.expanduser(owl_path)
	with open(owl_path, 'rb') as f:
		output = xmltodict.parse(f)
		return(output)

def parse_owl(od): 
	k  = get_keys(od)
	v  = get_values(od)
	return k, v
