// class StringCalculator {
//   int add(String numbers) {
//     if (numbers.isEmpty) return 0;
//     return int.parse(numbers);
//   }
// }
// class StringCalculator {
//   int add(String numbers) {
//     if (numbers.isEmpty) return 0;
//     return numbers.split(',').map(int.parse).reduce((a, b) => a + b);
//   }
// }
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    final cleaned = numbers.replaceAll('\n', ',');
    return cleaned.split(',').map(int.parse).reduce((a, b) => a + b);
  }
}
