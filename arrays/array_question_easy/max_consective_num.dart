void main() {
  List<int> arr = [1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1];
  print(maxConsectiveNumber(arr));
}

int maxConsectiveNumber(List<int> arr) {
  int maxNumber = 0;
  int max = 0;

  for (int i = 0; i < arr.length - 2; i++) {
    if (arr[i] == arr[i + 1]) {
      max += 1;
      maxNumber = max;
    } else {
      max = 0;
    }
  }
  return maxNumber + 1;
}
