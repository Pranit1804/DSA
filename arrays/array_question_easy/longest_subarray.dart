import 'dart:math';

void main() {
  List<int> arr = [1, 2, 3, 1, 1, 1, 1, 3, 3];
  print(findLongestSubArray(arr, 6));
}

int findLongestSubArray(List<int> arr, int k) {
  int n = arr.length;
  int left = 0;
  int right = 0;
  int len = 0;

  int sum = arr[0];
  while (left < n && right < n) {
    while (left <= right && sum > k) {
      sum -= arr[left];
      left++;
    }
    if (sum == k) {
      len = max(len, right - left + 1);
    }
    right++;
    if (right < n) sum += arr[right];
  }
  return len;
}
