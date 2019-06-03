public void onSensorChanged(SensorEvent event) {
    // Get X,Y,Z values
    accX = event.values[0];
    accY = event.values[1];
    accZ = event.values[2];

    ...
 }