import '../algo_helper.dart';

void main() {
  List<int> arr = [0, 1, 1, 2, 1, 0, 0, 1, 2, 2, 1, 1];
  sort(arr);
  print(arr);
}

void sort(List<int> arr) {
  int low = 0;
  int mid = 0;
  int high = arr.length - 1;

  while (mid < high) {
    if (arr[mid] == 0) {
      AlgoHelper.swap(arr, low, mid);
      low++;
      mid++;
    } else if (arr[mid] == 1) {
      mid++;
    } else {
      AlgoHelper.swap(arr, mid, high);
      high--;
    }
  }
}
