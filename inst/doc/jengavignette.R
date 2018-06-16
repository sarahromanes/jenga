## ------------------------------------------------------------------------
methods <- c("Method 1", "Method 2", "Method 3")
sims.1 <- create_stack(methods)

## ------------------------------------------------------------------------
status_stack(sims.1)

## ------------------------------------------------------------------------
res <-  c(1,2,3,4,5,6)

update_stack(stack=sims.1, objects = res, slots = "Method 1", save=FALSE)

## ------------------------------------------------------------------------
status_stack(sims.1)

## ------------------------------------------------------------------------
res2 <- c(2,3,4,5,6,7)
res3 <- c(3,4,5,6,7,8)

res <- list(res2,res3)

update_stack(stack=sims.1, objects = res, slots =c("Method 2", "Method 3"), save=FALSE)

## ------------------------------------------------------------------------
status_stack(sims.1)

## ------------------------------------------------------------------------
new.method <- "Method 4"
extend_stack(stack=sims.1, new.slot = new.method )

status_stack(sims.1)

## ---- echo=FALSE---------------------------------------------------------
sims.2 <- lapply(sims.1, function(x) x[1:3])
sims.2 <- sims.2[1:2]
names(sims.2) <- c("Method 2-1", "Method 2-2")

## ------------------------------------------------------------------------
new.stack <- merge_stack(sims.1, sims.2)

