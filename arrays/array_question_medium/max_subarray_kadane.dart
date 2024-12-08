void main() {
  List<int> arr = [-2, 3, 4, 1, -2, 1, 5, -3];
  print(maxSubArray(arr));
}

int maxSubArray(List<int> arr) {
  int maximum = 0;
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
    if (sum < 0) {
      sum -= arr[i];
    }
    if (maximum < sum) {
      maximum = sum;
    }
  }
  return maximum;
}
