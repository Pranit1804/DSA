void main() {
  print(isPalindrome(0, "PRAARP"));
}

bool isPalindrome(int index, String value) {
  if (index >= value.length / 2) return true;
  if (value[index] != value[value.length - index + -1]) return false;
  return isPalindrome(index + 1, value);
}
