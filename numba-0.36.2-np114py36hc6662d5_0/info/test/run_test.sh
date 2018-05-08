

set -ex



pycc -h
numba -h
numba -s
python -m numba.tests.test_runtests
python -m numba.runtests -m -b
exit 0
