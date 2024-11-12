void main() {
  List<int> arr = [7, 7, 5, 7, 5, 1, 5, 7, 5, 5, 7, 7, 5, 5, 5, 5];
  print(findMajorityElement(arr));
}

int findMajorityElement(List<int> arr) {
  int ele = -1;
  int count = 0;

  for (int i = 0; i < arr.length; i++) {
    if (count == 0) {
      ele = arr[i];
      count = 1;
    }

    if (arr[i] == ele) {
      count++;
    } else {
      count--;
    }
  }

  int count1 = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == ele) {
      count1++;
    }
  }
  if (count1 > (arr.length) / 2) {
    return ele;
  }
  return -1;
}
