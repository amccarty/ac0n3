

set -ex



DISPLAY=localhost:1.0 xvfb-run -a bash -c 'python pyqt_test.py'
conda inspect linkages -p $PREFIX pyqt
exit 0
