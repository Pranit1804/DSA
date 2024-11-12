void main() {
  List<int> arr = [1, 2, 3, 4];
  int length = 5;
  print(findMissingNumber(arr, length));
}

int findMissingNumber(List<int> arr, int n) {
  for (int i = 0; i < n - 2; i++) {
    if (arr[i + 1] - arr[i] != 1) {
      return arr[i] + 1;
    }
  }
  return arr.last + 1;
}
