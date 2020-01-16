
<!--
The README should be used to describe the program. It acts like the homepage of
your module.

Edit README.Rmd not README.md. The .Rmd file can be knitted to parse real-code
examples and show their output in the .md file.

To knit, use devtools::build_readme() or outsider.devtools::build()

Edit the template to describe your program: how to install, import and run;
run exemplary, small demonstrations; present key arguments; provide links and
references to the program that the module wraps.

Learn more about markdown and Rmarkdown:
https://daringfireball.net/projects/markdown/syntax
https://rmarkdown.rstudio.com/
-->

# Run [`wikit`](https://www.npmjs.com/package/wikit) with `outsider` in R

[![Build
Status](https://travis-ci.org/dombennett/om..wikit.svg?branch=master)](https://travis-ci.org/dombennett/om..wikit)

> Search and look up summaries of Wikipedia articles.

> This `outsider` module was developed to demonstrate how any kind of
> program can be wrapped into a module.

## Easy to install

``` r
library(outsider)
#> ----------------
#> outsider v 0.1.0
#> ----------------
#> - Security notice: be sure of which modules you install
module_install(repo = "dombennett/om..wikit")
#> -----------------------------------------------------
#> Warning: You are about to install an outsider module!
#> -----------------------------------------------------
#> Outsider modules install and run external programs
#> via Docker <https://www.docker.com>. These external
#> programs may communicate with the internet and could
#> potentially be malicious.
#> 
#> Be sure to know the module you are about to install:
#> Is it from a trusted developer? Are colleagues using
#> it? Is it supposed to download lots of data? Is it
#> well used (e.g. check number of stars on GitHub)?
#> -----------------------------------------------------
#>  Module information
#> -----------------------------------------------------
#> program: wikit
#> details: Fetch topic summaries from Wikipedia
#> docker: dombennett
#> github: dombennett
#> url: https://github.com/dombennett/om..wikit
#> image: dombennett/om_wikit
#> container: om_wikit
#> package: om..wikit
#> Travis CI: Passing
#> -----------------------------------------------------
#> Enter any key to continue or press Esc to quit
#module_help(repo = "dombennett/om..wikit")
```

## Look up [Wikipedia](https://en.wikipedia.org) summaries from within R

``` r
library(outsider)
wikit <- module_import(fname = 'wikit', repo = 'dombennett/om..wikit')
# see all examples
dinosaur_summary <- wikit('dinosaur', ncols = 80)
cat(dinosaur_summary)
#>  Dinosaurs are a diverse group of reptiles of the clade Dinosauria. They first appeared
#>  during the Triassic period, between 243 and 233.23 million years ago, although the
#>  exact origin and timing of the evolution of dinosaurs is the subject of active research.
#>  They became the dominant terrestrial vertebrates after the Triassic–Jurassic extinction
#>  event 201.3 million years ago; their dominance continued through the Jurassic and
#>  Cretaceous periods. The fossil record demonstrates that birds are modern feathered
#>  dinosaurs, having evolved from earlier theropods during the Late Jurassic epoch.
#>  As such, birds were the only dinosaur lineage to survive the Cretaceous–Paleogene
#>  extinction event approximately 66 million years ago. Dinosaurs can therefore be
#>  divided into avian dinosaurs, or birds; and non-avian dinosaurs, which are all dinosaurs
#>  other than birds. Dinosaurs are a varied group of animals from taxonomic, morphological
#>  and ecological standpoints. Birds, at over 10,000 living species, are the most diverse
#>  group of vertebrates besides perciform fish. Using fossil evidence, paleontologists
#>  have identified over 500 distinct genera and more than 1,000 different species of
#>  non-avian dinosaurs. Dinosaurs are represented on every continent by both extant
#>  species (birds) and fossil remains. Through the first half of the 20th century,
#>  before birds were recognized to be dinosaurs, most of the scientific community believed
#>  dinosaurs to have been sluggish and cold-blooded. Most research conducted since
#>  the 1970s, however, has indicated that all dinosaurs were active animals with elevated
#>  metabolisms and numerous adaptations for social interaction. Some were herbivorous,
#>  others carnivorous. Evidence suggests that all dinosaurs were egg-laying; and that
#>  nest-building was a trait shared by many dinosaurs, both avian and non-avian. While
#>  dinosaurs were ancestrally bipedal, many extinct groups included quadrupedal species,
#>  and some were able to shift between these stances. Elaborate display structures
#>  such as horns or crests are common to all dinosaur groups, and some extinct groups
#>  developed skeletal modifications such as bony armor and spines. While the dinosaurs'
#>  modern-day surviving avian lineage (birds) are generally small due to the constraints
#>  of flight, many prehistoric dinosaurs (non-avian and avian) were large-bodied—the
#>  largest sauropod dinosaurs are estimated to have reached lengths of 39.7 m and heights
#>  of 18 m and were the largest land animals of all time. Still, the idea that non-avian
#>  dinosaurs were uniformly gigantic is a misconception based in part on preservation
#>  bias, as large, sturdy bones are more likely to last until they are fossilized.
#>  Many dinosaurs were quite small: Xixianykus, for example, was only about 50 cm long.
#>  Since the first dinosaur fossils were recognized in the early 19th century, mounted
#>  fossil dinosaur skeletons have been major attractions at museums around the world,
#>  and dinosaurs have become an enduring part of world culture. The large sizes of
#>  some dinosaur groups, as well as their seemingly monstrous and fantastic nature,
#>  have ensured dinosaurs' regular appearance in best-selling books and films, such
#>  as Jurassic Park. Persistent public enthusiasm for the animals has resulted in significant
#>  funding for dinosaur science, and new discoveries are regularly covered by the 
#>  media.
```

## Key arguments

> Note: the `wikit` function only has three arguments (topic, lang and
> ncol). Other flags described in the command-line wikit program are not
> avaialble.

  - `topic`: What’s the topic? E.g. “rabbit” or “KitKats in Japan”
  - `lang`: Which Wikipedia language version? Default English.
  - `ncol`: Column width of the returned text summary

## Links

Learn more by visiting [Wikit’s
homepage](https://github.com/koryschneider/wikit#readme)

## If citing ….

  - Kory Schneider (2020) Wikit: Wikipedia summaries from the command
    line.
  - Bennett et al. (2020). outsider: Install and run programs, outside
    of R, inside of R. *Journal of Open Source Software*, In
review

## <!-- Footer -->

<img align="left" width="120" height="125" src="https://raw.githubusercontent.com/ropensci/outsider/master/logo.png">

**An `outsider` module**

Learn more at [outsider
website](https://docs.ropensci.org/outsider/). Want to build your
own module? Check out [`outsider.devtools`
website](https://docs.ropensci.org/outsider.devtools/).
