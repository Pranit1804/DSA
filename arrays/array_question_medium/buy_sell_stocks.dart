void main() {
  List<int> arr = [1, 1, 2, 3, 6, 1];
  buySellStock(arr);
}

void buySellStock(List<int> arr) {
  int n = arr.length - 1;
  int maximumProfit = 0;
  int min = arr[0];
  for (int j = 0; j <= n; j++) {
    int cost = arr[j] - min;
    if (maximumProfit < cost) {
      maximumProfit = cost;
    }
    if (min > arr[j]) {
      min = arr[j];
    }
  }
  print(maximumProfit);
}
