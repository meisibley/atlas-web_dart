int fact(int f) {
  if (f == 1 || f <= 0) {
    return 1;
  }
  return fact(f - 1) * f;
}