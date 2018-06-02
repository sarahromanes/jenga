jenga
======================================================

Save .RData files in an efficient jenga stack.

Overview
--------

**jenga** is a Discriminant Analysis (DA) algorithm capable for use in high dimensional datasets, providing feature selection through multiple hypothesis testing. This algorithm has minimal tuning parameters, is easy to use, and offers improvement in speed compared to existing DA classifiers.



Installation
--------

```r
# Install the development version from GitHub:
# install.packages("devtools")
devtools::install_github("sarahromanes/jenga")

```


Usage
-----

We can initialise a jenga stack as follows:

```r
slots    <- c("Sim 1", "Sim 2", "Sim 3")
my.jenga <- create.stack(slots)
```
We can then examine the status of our stack by calling ```status.stack```:

```r
status.stack(my.jenga)
```

Returning

```r
All slots are empty!
```

## Authors

* **Sarah Romanes**  - [@sarah_romanes](https://twitter.com/sarah_romanes)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc

