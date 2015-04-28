algaePred <- function(alg, method) {
  #browser()
  if (method == "Similar") {
    algae <- knnImputation(algae, k=10)
    #nr <- nrow(algae[complete.cases(algae),])
  } else {
    if (method == "Frequent") {
      algae <- centralImputation(algae)
      #nr <- nrow(algae[complete.cases(algae),])
    }
  }
  if (alg=="a1") {
    rt <- rpart(a1 ~ ., algae[, c(1:11, 12)])
  }
  if (alg=="a2") {
    rt <- rpart(a2 ~ ., algae[, c(1:11, 13)])
  }
  if (alg=="a3") {
    rt <- rpart(a3 ~ ., algae[, c(1:11, 14)])
  }
  if (alg=="a4") {
    rt <- rpart(a4 ~ ., algae[, c(1:11, 15)])
  }
  if (alg=="a5") {
    rt <- rpart(a5 ~ ., algae[, c(1:11, 16)])
  }
  if (alg=="a6") {
    rt <- rpart(a6 ~ ., algae[, c(1:11, 17)])
  }
  if (alg=="a7") {
    rt <- rpart(a7 ~ ., algae[, c(1:11, 18)])
  }
  return(summary(rt))
}
