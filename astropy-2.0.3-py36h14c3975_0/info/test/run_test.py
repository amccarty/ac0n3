#  tests for astropy-2.0.3-py36h14c3975_0 (this is a generated file);
print('===== testing package: astropy-2.0.3-py36h14c3975_0 =====');
print('running run_test.py');
#  --- run_test.py (begin) ---
import astropy._compiler
import astropy._erfa._core
import astropy.convolution.boundary_extend
import astropy.convolution.boundary_fill
import astropy.convolution.boundary_none
import astropy.convolution.boundary_wrap
import astropy.cosmology.scalar_inv_efuncs
import astropy.io.ascii.cparser
import astropy.io.fits.compression
import astropy.io.votable.tablewriter
import astropy.modeling._projections
import astropy.stats.lombscargle.implementations.cython_impl
import astropy.table._column_mixins
import astropy.table._np_utils
import astropy.utils._compiler
import astropy.utils.xml._iterparser
import astropy.wcs._wcs

# We run a subset of the tests which are the most likely to have
# issues because they rely on C extensions and bundled libraries

from astropy import test
test(package='io.ascii')
test(package='time')
test(package='wcs')
#  --- run_test.py (end) ---

print('===== astropy-2.0.3-py36h14c3975_0 OK =====');
print("import: 'astropy'")
import astropy

