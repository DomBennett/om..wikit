
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- devtools::rmarkdown::render("README.Rmd") -->
<!-- Rscript -e "library(knitr); knit('README.Rmd')" -->
Run [`wikit`](https://www.npmjs.com/package/wikit) with `outsider` in R
=======================================================================

[![Build Status](https://travis-ci.org/dombennett/om..wikit.svg?branch=master)](https://travis-ci.org/dombennett/om..wikit)

Easy to install
---------------

``` r
library(outsider)
module_install(repo = "dombennett/om..wikit")
module_help(repo = "dombennett/om..wikit")
```

See [`outsider`](https://github.com/AntonelliLab/outsider) documentation for more information.

Look-up [Wikipedia](https://en.wikipedia.org) summaries from within R
---------------------------------------------------------------------

``` r
library(outsider)
#> ----------------
#> outsider v 0.1.0
#> ----------------
#> - Security notice: be sure of which modules you install
wikit <- module_import(fname = 'wikit', repo = 'dombennett/om..wikit')
# see all examples
dinosaur_summary <- wikit('dinosaur', ncols = 80)
cat(dinosaur_summary)
#>  Dinosaurs are a diverse group of reptiles of the clade Dinosauria. They first appeared
#>  during the Triassic period, between 243 and 233.23 million years ago, although the
#>  exact origin and timing of the evolution of dinosaurs is the subject of active research.
#>  They became the dominant terrestrial vertebrates after the Triassic–Jurassic extinction
#>  event 201 million years ago; their dominance continued through the Jurassic and
#>  Cretaceous periods. The fossil record demonstrates that birds are modern feathered
#>  dinosaurs, having evolved from earlier theropods during the late Jurassic Period.
#>  As such, birds were the only dinosaur lineage to survive the Cretaceous–Paleogene
#>  extinction event 66 million years ago. Dinosaurs can therefore be divided into avian
#>  dinosaurs, or birds; and non-avian dinosaurs, which are all dinosaurs other than
#>  birds. This article deals primarily with non-avian dinosaurs. Dinosaurs are a varied
#>  group of animals from taxonomic, morphological and ecological standpoints. Birds,
#>  at over 10,000 living species, are the most diverse group of vertebrates besides
#>  perciform fish. Using fossil evidence, paleontologists have identified over 500
#>  distinct genera and more than 1,000 different species of non-avian dinosaurs. Dinosaurs
#>  are represented on every continent by both extant species (birds) and fossil remains.
#>  Through the first half of the 20th century, before birds were recognized to be dinosaurs,
#>  most of the scientific community believed dinosaurs to have been sluggish and cold-blooded.
#>  Most research conducted since the 1970s, however, has indicated that all dinosaurs
#>  were active animals with elevated metabolisms and numerous adaptations for social
#>  interaction. Some were herbivorous, others carnivorous. Evidence suggests that all
#>  dinosaurs were egg-laying; and nest-building was a trait shared by many dinosaurs,
#>  both avian and non-avian. While dinosaurs were ancestrally bipedal, many extinct
#>  groups included quadrupedal species, and some were able to shift between these stances.
#>  Elaborate display structures such as horns or crests are common to all dinosaur
#>  groups, and some extinct groups developed skeletal modifications such as bony armor
#>  and spines. While the dinosaurs' modern-day surviving avian lineage (birds) are
#>  generally small due to the constraints of flight, many prehistoric dinosaurs (non-avian
#>  and avian) were large-bodied—the largest sauropod dinosaurs are estimated to have
#>  reached lengths of 39.7 m and heights of 18 m and were the largest land animals
#>  of all time. Still, the idea that non-avian dinosaurs were uniformly gigantic is
#>  a misconception based in part on preservation bias, as large, sturdy bones are more
#>  likely to last until they are fossilized. Many dinosaurs were quite small: Xixianykus,
#>  for example, was only about 50 cm long. Since the first dinosaur fossils were recognized
#>  in the early 19th century, mounted fossil dinosaur skeletons have been major attractions
#>  at museums around the world, and dinosaurs have become an enduring part of world
#>  culture. The large sizes of some dinosaur groups, as well as their seemingly monstrous
#>  and fantastic nature, have ensured dinosaurs' regular appearance in best-selling
#>  books and films, such as Jurassic Park. Persistent public enthusiasm for the animals
#>  has resulted in significant funding for dinosaur science, and new discoveries are
#>  regularly covered by the media.
```
