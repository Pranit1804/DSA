class AlgoHelper {
  AlgoHelper._();

  static List<int> unSortedArray = [13, 46, 24, 52, 20, 9];

  static void swap(List<int> array, int oldIndex, int newIndex) {
    int temp = array[oldIndex];
    array[oldIndex] = array[newIndex];
    array[newIndex] = temp;
  }
}
