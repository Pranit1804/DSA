import '../algo_helper.dart';

void main() {
  quickSort(AlgoHelper.unSortedArray, 0, AlgoHelper.unSortedArray.length - 1);
  print(AlgoHelper.unSortedArray);
}

void quickSort(List<int> array, int low, int high) {
  if (low < high) {
    int pivot = partition(array, low, high);
    quickSort(array, low, pivot - 1);
    quickSort(array, pivot + 1, high);
  }
}

int partition(List<int> array, int low, int high) {
  int pivot = array[low];

  int i = low;
  int j = high;

  while (i < j) {
    while (array[i] <= pivot && i <= high - 1) {
      i++;
    }
    while (array[j] > pivot && j >= low + 1) {
      j--;
    }
    if (i < j) AlgoHelper.swap(array, i, j);
  }

  AlgoHelper.swap(array, low, j);

  return j;
}
