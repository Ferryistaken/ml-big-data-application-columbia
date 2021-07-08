rm(list = ls(all = TRUE))
gc()

library(keras)

mnist <- dataset_mnist()
mnist$train$x <- mnist$train$x/255
mnist$test$x <- mnist$test$x/255

model <- keras_model_sequential() %>% 
    layer_flatten(input_shape = c(28, 28)) %>% 
    layer_dense(units = 128, activation = "relu") %>% 
    layer_dropout(0.2) %>% 
    layer_dense(units = 96, activation = "relu") %>% 
    layer_dropout(0.2) %>% 
    layer_dense(units = 64, activation = "relu") %>% 
    layer_dropout(0.2) %>% 
    layer_dense(10, activation = "softmax")

summary(model)

model %>% 
    compile(
        loss = "sparse_categorical_crossentropy",
        optimizer = "adam",
        metrics = "accuracy"
    )

history = model %>% 
    fit(
        x = mnist$train$x,
        y = mnist$train$y,
        epochs = 10,
        validation_split = 0.3,
        verbose = 1
    ); plot(history, type = "b")

model %>% evaluate(mnist$test$x, mnist$test$y)