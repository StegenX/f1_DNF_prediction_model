# F1 DNF Prediction Project

This repository contains a notebook-first machine learning workflow to predict whether a Formula 1 driver will DNF (Did Not Finish) in a race.

The project includes:
- data preparation
- exploratory data analysis (EDA)
- model training and comparison
- artifact export (plots, model file, and result table)

## Current Workspace Snapshot

```text
f1-ml-project/
├── data/
│   ├── f1_dataset.parquet
│   └── model_results.parquet
├── images/
│   ├── correlation_matrix.png
│   ├── dnf_distribution.png
│   ├── dnf_rate_by_grid_position.png
│   ├── dnf_rate_by_team.png
│   ├── feature_importance.png
│   ├── lap_time_distribution_by_race_outcome.png
│   └── top_15_circuits_by_dnf_rate.png
├── models/
│   └── best_model.pkl
├── notebooks/
│   ├── data_preparation.ipynb
│   ├── EDA.ipynb
│   └── modeling.ipynb
├── Makefile
├── README.md
├── requirements.txt
├── .env
└── credentials.json
```

## Notebook Pipeline

1. `notebooks/data_preparation.ipynb`
   - builds/cleans the modeling dataset
   - outputs `data/f1_dataset.parquet`
2. `notebooks/EDA.ipynb`
   - explores feature behavior and target distribution
   - produces visualizations under `images/`
3. `notebooks/modeling.ipynb`
   - loads `data/f1_dataset.parquet`
   - preprocesses categorical features
   - trains and compares classifiers
   - saves:
     - `data/model_results.parquet`
     - `models/best_model.pkl`
     - `images/feature_importance.png`

## Models Compared

- Logistic Regression
- Decision Tree
- Random Forest
- XGBoost

Latest saved comparison (from `data/model_results.parquet`) indicates XGBoost as the best performer.

| Model | F1 Score | Precision | Recall |
| --- | ---: | ---: | ---: |
| Logistic Regression | 0.8149 | 0.8646 | 0.7881 |
| Decision Tree | 0.9207 | 0.9194 | 0.9239 |
| Random Forest | 0.9063 | 0.9129 | 0.9179 |
| XGBoost | 0.9282 | 0.9287 | 0.9328 |

## Tech Stack

- Python 3.12
- Jupyter Notebook
- pandas, numpy
- scikit-learn
- XGBoost
- bigquery
- matplotlib, seaborn
- joblib

## Local Setup

## Note:
- This project is just for demonstration purposes and is not intended for someone else to run it. The dataset is not included in this repository, and the code will not work without it.