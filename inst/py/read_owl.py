import xmltodict
def read_owl(owl_path):
	owl_path = owl_path.replace('~', '..')
	with open(owl_path, 'rb') as f:
		output = xmltodict.parse(f)
		return(output)