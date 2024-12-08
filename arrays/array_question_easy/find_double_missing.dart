void main() {
  List<int> arr = [1, 1, 2, 2, 3, 3, 4];
  print(findDoubleMissing(arr));
}

int findDoubleMissing(List<int> arr) {
  int num = 0;

  int i = 0;
  while (i < arr.length - 1) {
    if (arr[i] == arr[i + 1]) {
      i += 2;
    } else
      return arr[i];
  }
  return num == 0 ? arr.last : num;
}
