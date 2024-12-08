import '../algo_helper.dart';

void main() {
  print(AlgoHelper.unSortedArray);

  insertionSort(AlgoHelper.unSortedArray);
  print(AlgoHelper.unSortedArray);
}

void insertionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int j = i;
    while (j > 0 && arr[j] < arr[j - 1]) {
      AlgoHelper.swap(arr, j, j - 1);
      j--;
    }
  }
}
