import '../algo_helper.dart';

void main() {
  List<int> arr = [13, 46, 24, 52, 20, 9];
  mergeSort(arr, 0, arr.length - 1);
  print(arr);
}

void selectionSort(List<int> array) {
  int n = array.length;

  for (int i = 0; i <= n - 1; i++) {
    int min = i;

    for (int j = i; j <= n - 1; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    AlgoHelper.swap(array, min, i);
  }
}

void bubbleSort(List<int> array) {
  int n = array.length;

  for (int i = n - 1; i >= 1; i--) {
    for (int j = 0; j <= i - 1; j++) {
      if (array[j] > array[j + 1]) {
        AlgoHelper.swap(array, j, j + 1);
      }
    }
  }
}

void quickSort() {}

void mergeSort(List<int> array, int low, int high) {
  if (low == high) return;
  int mid = (low + high) ~/ 2;

  mergeSort(array, low, mid);
  mergeSort(array, mid + 1, high);

  merge(array, low, mid, high);
}

void merge(List<int> array, int low, int mid, int high) {
  List<int> temp = [];

  int left = low;
  int right = mid + 1;

  while (left <= mid && right <= high) {
    if (array[left] < array[right]) {
      temp.add(array[left]);
      left++;
    } else {
      temp.add(array[right]);
      right++;
    }
  }

  while (left <= mid) {
    temp.add(array[left]);
    left++;
  }

  while (right <= high) {
    temp.add(array[right]);
    right++;
  }

  for (int i = low; i <= high; i++) {
    array[i] = temp[i - low];
  }
}
