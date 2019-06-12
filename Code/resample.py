    sampling_strategy = 1.0; #Ratio of resample occurance
    RanUSampler = RandomUnderSampler(sampling_strategy=sampling_strategy); #Define the Resampling
    X_res, y_res = RanUSampler.fit_resample(X_original,  y_original); #Resample via Random Under Sampling
    resampleIndices = RanUSampler.sample_indices_ #Get the indicides that correspond to the new undersampled, more balanced dataset
    M_res = M[resampleIndices]; #duplicate this sample to our validity matrix
    timestamps_res = timestamps[resampleIndices]; #and to our timestamps