void main() {
  List<int> sortedArray = [2, 5, 6, 8, 11];

  print(findTwoSum(sortedArray, 13));
}

bool findTwoSum(List<int> arr, int target) {
  int n = arr.length;

  int left = 0;
  int right = n - 1;

  while (left < right) {
    int result = arr[left] + arr[right];

    if (result == target)
      return true;
    else if (result > target)
      right--;
    else
      left++;
  }

  return false;
}
