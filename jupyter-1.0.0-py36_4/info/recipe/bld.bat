set PYTHONDONTWRITEBYTECODE=1
pip install --no-deps .
:: Conflicts with jupyter_core which is a transitive dep.
cd %SP_DIR%
del jupyter.py
