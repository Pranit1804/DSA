import '../algo_helper.dart';

void main() {
  print("unSortedArray: ${AlgoHelper.unSortedArray}");

  quickSort(AlgoHelper.unSortedArray, 0, AlgoHelper.unSortedArray.length - 1);
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

  /*
    Round 1;
    pivot = 13
    i = 13
    j = 9

    Round 2: 
    pivot = 13
    i = 46
    j = 9

    [13, 9, 24, 52, 20, 46]


    Round 3: 

    pivot = 13
    i = 9
    j = 46

    Round 4:
    pivot = 13
    i = 24
    j = 46






  */

  while (i < j) {
    while (array[i] <= pivot && i <= high - 1) {
      i++;
    }
    while (array[j] > pivot && j >= low + 1) {
      j--;
    }
    if (i < j) AlgoHelper.swap(array, i, j);
    print(array);
  }

  AlgoHelper.swap(array, low, j);
  print(j);
  return j;
}
