a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a
# result is [4,[3,8]]
# a stays the same because the array is modified not the value
# b stays is modified because b is an array and we are modifiying that array by assigning a new value at index 0 of that array