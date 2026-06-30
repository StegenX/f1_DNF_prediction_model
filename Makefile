all:
	@mkdir -p images/
	@mkdir -p models/
	@mkdir -p data/
	python3 -m venv venv
	./venv/bin/pip install -r requirements.txt
	./venv/bin/jupyter nbconvert --to notebook --execute --inplace notebooks/data_preparation.ipynb
	./venv/bin/jupyter nbconvert --to notebook --execute --inplace notebooks/EDA.ipynb
	./venv/bin/jupyter nbconvert --to notebook --execute --inplace notebooks/modeling.ipynb

fclean:
	@rm -rf images/*
	@rm -rf models/*
	@rm -rf data/*
	@rm -rf venv