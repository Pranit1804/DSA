import '../algo_helper.dart';

void main() {
  mergeSort(AlgoHelper.unSortedArray, 0, AlgoHelper.unSortedArray.length - 1);
  print(AlgoHelper.unSortedArray);
}

void mergeSort(List<int> arr, int low, int high) {
  if (low == high) return;
  int mid = (low + high) ~/ 2;

  print(mid);

  mergeSort(arr, low, mid);
  mergeSort(arr, mid + 1, high);
  merge(arr, low, mid, high);
}

void merge(List<int> arr, int low, int mid, int high) {
  List<int> temp = [];
  int left = low;
  int right = mid + 1;

  while (left <= mid && right <= high) {
    if (arr[left] <= arr[right]) {
      temp.add(arr[left]);
      left++;
    } else {
      temp.add(arr[right]);
      right++;
    }
  }

  while (left <= mid) {
    temp.add(arr[left]);
    left++;
  }

  while (right <= high) {
    temp.add(arr[right]);
    right++;
  }

  for (int i = low; i <= high; i++) {
    arr[i] = temp[i - low];
  }
}
