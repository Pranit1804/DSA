import '../algo_helper.dart';

void main() {
  List<int> arr = AlgoHelper.unSortedArray;
  int largest = arr[0];
  int secondLargest = -1;

  for (int i = 0; i <= arr.length - 1; i++) {
    if (arr[i] > largest) {
      largest = arr[i];
    }
  }

  for (int i = 0; i <= arr.length - 1; i++) {
    if (arr[i] > secondLargest && arr[i] != largest) {
      secondLargest = arr[i];
    }
  }

  print(secondLargest);
}
