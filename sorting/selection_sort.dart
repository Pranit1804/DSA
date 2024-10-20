void main() {
  List<int> arr = [13, 46, 24, 52, 20, 9];
  selectionSort(arr);
  print(arr);
}

void selectionSort(List<int> array) {
  int arrLength = array.length;
  for (int i = 0; i <= arrLength - 2; i++) {
    int min = i;
    for (int j = i; j <= arrLength - 1; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    swap(array, i, min);
  }
}

void swap(List<int> array, int oldIndex, int newIndex) {
  int temp = array[oldIndex];
  array[oldIndex] = array[newIndex];
  array[newIndex] = temp;
}
