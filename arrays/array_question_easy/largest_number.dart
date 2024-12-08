import '../algo_helper.dart';

void main() {
  List<int> arr = AlgoHelper.unSortedArray;
  int largest = arr[0];

  for (int i = 0; i <= arr.length - 1; i++) {
    if (arr[i] > largest) {
      largest = arr[i];
    }
  }
  print(largest);
}
