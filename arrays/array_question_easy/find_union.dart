void main() {
  List<int> arr1 = [1, 1, 2, 3, 4, 5];
  List<int> arr2 = [2, 3, 4, 4, 5, 6];

  print(findUnion(arr1, arr2));
}

List<int> findUnion(List<int> a, List<int> b) {
  int i = 0;
  int j = 0;
  int n1 = a.length;
  int n2 = b.length;
  List<int> unionList = [];

  while (i < n1 && j < n2) {
    if (a[i] <= b[j]) {
      if (unionList.isEmpty || unionList.last != a[i]) {
        unionList.add(a[i]);
      }
      i++;
    } else {
      if (unionList.isEmpty || unionList.last != b[j]) {
        unionList.add(b[j]);
      }
      j++;
    }
  }

  while (i < n1) {
    if (unionList.isEmpty || unionList.last != a[i]) {
      unionList.add(a[i]);
    }
    i++;
  }
  while (j < n2) {
    if (unionList.isEmpty || unionList.last != b[j]) {
      unionList.add(b[j]);
    }
    j++;
  }

  return unionList;
}
