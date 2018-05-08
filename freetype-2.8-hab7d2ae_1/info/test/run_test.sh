

set -ex



freetype-config --version
conda inspect linkages -p $PREFIX freetype
exit 0
