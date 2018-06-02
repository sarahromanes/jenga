jenga
======================================================

Save .RData files in an efficient jenga stack.

Overview
--------

**multiDA** is a Discriminant Analysis (DA) algorithm capable for use in high dimensional datasets, providing feature selection through multiple hypothesis testing. This algorithm has minimal tuning parameters, is easy to use, and offers improvement in speed compared to existing DA classifiers.



Installation
--------

```r
# Install the development version from GitHub:
# install.packages("devtools")
devtools::install_github("sarahromanes/jenga")

```


Usage
-----

The following example trains the multiDA classifier using the SRBCT dataset, and finds the resubstitution error rate. 

```r
vy   <- SRBCT$vy
mX   <- SRBCT$mX
res  <- multiDA(mX, vy, c.pen=2, equal.var=TRUE, set.options="exhaustive")
vals <- predict(res, newdata=mX)$vy.pred          #vy.pred returns class labels
rser <- sum(vals!=vy)/length(vy)

```

## Authors

* **Sarah Romanes**  - [@sarah_romanes](https://twitter.com/sarah_romanes)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
