init:
	pip install pip pipenv
	pipenv lock
	pipenv install --dev
lint:
	pipenv run flake8 pymyq2
	pipenv run pydocstyle pymyq2
	pipenv run pylint pymyq2
publish:
	pipenv run python setup.py sdist bdist_wheel
	pipenv run twine upload dist/*
	rm -rf dist/ build/ .egg simplisafe_python.egg-info/
typing:
	pipenv run mypy --ignore-missing-imports pymyq2
