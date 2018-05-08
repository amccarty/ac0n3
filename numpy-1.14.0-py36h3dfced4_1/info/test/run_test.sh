

set -ex



f2py -h
python -c "import numpy; numpy.show_config()"
conda inspect linkages -p $PREFIX numpy
exit 0
