import '../algo_helper.dart';

void main() {
  print(AlgoHelper.unSortedArray);

  bubbleSort(AlgoHelper.unSortedArray);
  print(AlgoHelper.unSortedArray);
}

void bubbleSort(List<int> arr) {
  int arrLength = arr.length;

  for (int i = arrLength - 1; i >= 1; i--) {
    for (int j = 0; j <= i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        swap(arr, j, j + 1);
      }
    }
  }
}

void swap(List<int> array, int oldIndex, int newIndex) {
  int temp = array[oldIndex];
  array[oldIndex] = array[newIndex];
  array[newIndex] = temp;
}
