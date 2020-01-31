# Biesbroeck, 1947 #

## Eclipse Date ##

20 May 1947

## Observers ##

* George Van Biesbroeck

## Observation site ##

Bocajuva, Minas Geraes, Brazil (610 m above sea level)

Coordinates: 17°12'48.9" S, 43°41'18.2 W

## Measurements

Table I in [1] contains the list of the 51 stars that were measured during the eclipse. For each star, the table shows: the identifier (based on the Bonner Durchmusterung catalogue), the distance r in solar radii from the centre of the Sun, and three sets of Y values, where Y is the ratio between the measured deviation of star - called delta_r, expressed in thousandths of a millimetre - and its distance r.

Table I [1] contains also a column for a so-called X value, where X = 51.53 / r^2. However, we re-computed X using distances and we found that a couple of values were different. Since our values agree with plots shown in Figures 2, 3 and 4, it is possible that a few X values have been mistyped or switched. Hence, we ignored the original data in our analysis.

As explained in [1] and in Section 2 of [2], it is possible to estimate the coefficient corresponding to the relativity shift at the Sun's limb from X and Y. We wrote an Octave script which computes the intercept and the slope: the intercept is the scale correction at the unitary distance, while the slope corresponds to the relativity shift coefficient.

The X value considered by our analysis is X = 51.53 / r^2, where 51.53 comes from the product of 1.745 (the Einstein's value) and 29.53, the scale factor of Biesbroeck's equipement. As for Y, we used the mean among the three values available for each star.

## References ##

[1] G. Van Biesbroeck, The Einstein Shift at the Eclipse of May 20, 1947, in Brazil., The Astronomical Journal 55 (1950) 49-53.
https://dx.doi.org/10.1086/106328

[2] H. Debehogne, and R. R. de Freitas Mourao, Observation du champ stellaire au voisinage du Soleil pendant une éclipse totale, Ciel et Terre 93 (1977) 189-203.
