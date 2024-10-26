import 'dart:io';

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
    AlgoHelper.swap(array, i, min);
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

void insertionSort(List<int> array) {
  int n = array.length;
  for (int i = 0; i <= n - 1; i++) {
    int j = i;
    while (j > 0 && array[j - 1] > array[j]) {
      AlgoHelper.swap(array, j, j - 1);
      j--;
    }
  }
}

void mergeSort(List<int> arr, int low, int high) {
  if (low == high) return;
  int mid = (low + high) ~/ 2;

  mergeSort(arr, low, mid);
  mergeSort(arr, mid + 1, high);
  merge(arr, low, mid, high);
}

void merge(List<int> arr, int low, int mid, int high) {
  List<int> temp = [];
  int left = low;
  int right = mid + 1;

  while (left <= mid && right <= high) {
    if (arr[left] < arr[right]) {
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
