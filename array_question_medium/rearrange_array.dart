void main() {
  List<int> arr = [1, 2, -4, -5, 3, 6];
  print(rearrange(arr));
}

List<int> rearrange(List<int> arr) {
  int posPointer = 0;
  int negPointer = 1;
  List<int> newArr = List.filled(arr.length, 0);

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      newArr[posPointer] = arr[i];
      posPointer += 2;
    } else {
      newArr[negPointer] = arr[i];
      negPointer += 2;
    }
  }
  return newArr;
}
