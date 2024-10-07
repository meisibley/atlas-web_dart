String add(int a, int b) {
  return 'Add $a + $b = ${a + b}';
}

String sub(int a, int b) {
  return 'Sub $a - $b = ${a - b}';
}

String showFunc(int a, int b) {
  return '${add(a, b)}\n${sub(a, b)}';
}