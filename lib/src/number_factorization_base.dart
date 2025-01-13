double gcd(double a, double b) => b == 0 ? a : gcd(b, a % b);

double gcdAll(Iterable<double> values) {
  if (values.length == 1) return values.first;
  return gcd(values.first, gcdAll(values.skip(1).toList()));
}

double lcm(double a, double b) => (a * b) / gcd(a, b);

List<int> integerFactorization(int number) {
  final factors = <int>[1, number];
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      factors.add(i);
      int v = number ~/ i;
      if (v != i) {
        factors.add(v);
      }
    }
  }
  return factors;
}
