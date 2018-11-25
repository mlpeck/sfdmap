This package consists of just three components: the medium resolution all sky dust map of [Schlegel, Finkbeiner, and Davis (1998; SFD)](https://ui.adsabs.harvard.edu/#abs/1998ApJ...500..525S/abstract) stored as an R binary data file, and two functions to access it.

The function `lookupebv` uses the package `nabor` for nearest neighbor lookup. The function `lookupebv_st` uses `SearchTrees`. Arguments to either are galactic longitude and latitude in decimal degrees, longitude first. Values can be passed in any reasonable data structure (matrix, dataframe, list, ...).

Return values are color excess E(B-V), with 14% downward adjustment recommended in [Schlafly and Finkbeiner (2011)](https://ui.adsabs.harvard.edu/#abs/2011ApJ...737..103S/abstract).
