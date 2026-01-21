class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',|\n';

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0][2];
      numbers = parts[1];
    }

    final tokens = numbers.split(RegExp(delimiter));
    int sum = 0;

    for (var token in tokens) {
      sum += int.parse(token);
    }

    return sum;
  }
}
