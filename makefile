default:
	(cd ./js; npm update)
	(cd ./js; webpack --config webpack.config.js)
	pip install -e .
	(cd ./js; npm install)
	jupyter nbextension install --user --py dora
	jupyter nbextension enable --user --py --sys-prefix dora
	(cd ./examples/smallNetwork; jupyter notebook smallNetwork.ipynb)

clean:
	- rm -rf js/node_modules/*
	- rm -rf js/dist/*
	- rm -rf dora/static/*
	- rm -rf dora/__pycache__
