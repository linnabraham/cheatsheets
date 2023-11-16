# extract elements from 1D array by using another index array
a = [6, 9, 5, 7, 3, 8]
indices = [0, 1, 4]
np.take(a, indices)

# count number of elements satisfying condition
(img.flatten()>125).sum()

# Crop image
image_arr = image_arr[700:1400, 1450:2361]

# concatenate numpy arrays
np.concatenate((arr1, arr2), axis = 0)

# numpy squeeze
# Remove axes of length one from a.
numpy.squeeze(a, axis=None)

# numpy clip
# Given an interval, values outside the interval are clipped to the interval edges. For example, if an interval of [0, 1] is specified, values smaller than 0 become 0, and values larger than 1 become 1.
np.clip

# To reshape a NumPy array from shape (64, 128, 128) to (128, 128, 64) without changing the data 
arr = np.zeros((64, 128, 128))  # Replace with your actual array
arr = np.moveaxis(arr, 0, 2) # Reshape the array
print(reshaped_arr.shape) # Print the new shape of the array
