rm(list = ls())
gc()

library(keras)

max_features <- 20000
batch_size <- 32

# Cut texts after this number of words (among top max_features most common words)
maxlen <- 80  

cat('Loading data...\n')
imdb <- dataset_imdb(num_words = max_features)

x_train <- imdb$train$x
y_train <- imdb$train$y
x_test <- imdb$test$x
y_test <- imdb$test$y

cat(length(x_train), 'train sequences\n')
cat(length(x_test), 'test sequences\n')

dictionary = keras::dataset_imdb_word_index()
dictionary = data.frame(unlist(dictionary))
dictionary = data.frame(name = rownames(dictionary), idx = dictionary$unlist.dictionary.)
dictionary = dictionary[order(dictionary$idx), ]

# check out another version: https://sanjayasubedi.com.np/deeplearning/word-embeddings-in-keras/

# data clean up process
cat('Pad sequences (samples x time)\n')
x_train <- pad_sequences(x_train, maxlen = maxlen)
x_test <- pad_sequences(x_test, maxlen = maxlen)
cat('x_train shape:', dim(x_train), '\n')
cat('x_test shape:', dim(x_test), '\n')

cat('Build model...\n')
model <- keras_model_sequential()
model %>%
    layer_embedding(input_dim = max_features, output_dim = 128) %>% # note: this is a necessity and it allows us to input our data into a LSTM layer with matching dimensions
    layer_lstm(units = 64, dropout = 0.2, recurrent_dropout = 0.2) %>% # LSTM: long-short term memory
    layer_dense(units = 1, activation = 'sigmoid') # this is technically speaking a regressor (one neuron as output), but it is a predicted probability for class 1, so in the end we convert it into a classification result
# Try using different optimizers and different optimizer configs
model %>% compile(
    loss = 'binary_crossentropy',
    optimizer = 'adam', # empirical knowledge (dont quote me), in some cases ADAM is a slightly more robust optimizer in sequential data
    # recall in gradient descent, we compute partial derivative of the loss function w.r.t. parameters
    # in adam optimizer, we also compute two more partial derivative that is related to the 1st moment and the 2nd moment of the loss function
    metrics = c('accuracy')
)
cat('Train...\n')
model %>% fit(
    x_train, y_train,
    batch_size = batch_size,
    epochs = 15,
    validation_data = list(x_test, y_test)
)
scores <- model %>% evaluate(
    x_test, y_test,
    batch_size = batch_size
)
cat('Test score:', scores[[1]])
cat('Test accuracy', scores[[2]])
yhat <- model %>% predict(x_test)
result = pROC::roc(response = y_test, predictor = c(yhat))
result$auc
yhat[1]
dictionary[x_test[1,], 1]

# model %>% save_model_tf("trained_model")