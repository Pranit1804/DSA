void main() {
  print(isValidPalindrome(0, "MADAM"));
}

bool isValidPalindrome(int index, String n) {
  int stringLength = n.length;
  if (index >= stringLength) return true;
  if (n[index] != n[stringLength - index - 1]) return false;
  return isValidPalindrome(index + 1, n);
}
