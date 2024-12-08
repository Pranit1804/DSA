void main() {
  List<int> arr = [3, 2, 3];
  print(findMajorityElement(arr));
}

List<int> findMajorityElement(List<int> arr) {
  List<int> result = [];

  int cnt1 = 0;
  int cnt2 = 0;
  int el1 = 0;
  int el2 = 0;

  for (int i = 0; i < arr.length; i++) {
    if (cnt1 == 0 && el2 != arr[i]) {
      cnt1++;
      el1 = arr[i];
    } else if (cnt2 == 0 && el1 != arr[i]) {
      cnt2++;
      el2 = arr[i];
    } else if (el1 == arr[i]) {
      cnt1++;
    } else if (el2 == arr[i]) {
      cnt2++;
    } else {
      cnt1--;
      cnt2--;
    }
  }

  cnt1 = 0;
  cnt2 = 0;

  for (int i = 0; i < arr.length; i++) {
    if (el1 == arr[i]) cnt1++;
    if (el2 == arr[i]) cnt2++;
  }

  print("el1 $el1 el2: $el2");

  int condition = (arr.length / 3).floor() + 1;
  print("condition $condition");
  if (cnt1 > condition) result.add(el1);
  if (cnt2 > condition) result.add(el2);
  return result;
}
