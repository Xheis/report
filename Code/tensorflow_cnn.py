model = Sequential()                                      #Start a sequential NN
model.add(Conv2D(32, (2), input_shape=X_Train.shape[1:])) #Add the first Convolution layer
model.add(Activation('relu'))                             #Use a relu activation function (consider logistic)
model.add(MaxPooling2D(pool_size=(2)))
model.add(Dropout(0.3))                                  # Dropout critical, should help stop audio dominating over other features. Consider experimenting with dropout (30% recommended from stackoverflow)
model.add(Conv2D(64, (2)))
model.add(Activation('relu'))
model.add(MaxPooling2D(pool_size=(2)))
model.add(Dropout(0.3))
model.add(Flatten())
model.add(Dropout(0.5))
model.add(Dense(51))
model.add(Activation('softmax'))