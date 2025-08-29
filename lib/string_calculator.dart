// // class StringCalculator {
// //   int add(String numbers) {
// //     if (numbers.isEmpty) return 0;
// //     return int.parse(numbers);
// //   }
// // }
// // class StringCalculator {
// //   int add(String numbers) {
// //     if (numbers.isEmpty) return 0;
// //     return numbers.split(',').map(int.parse).reduce((a, b) => a + b);
// //   }
// // }
// // class StringCalculator {
// //   int add(String numbers) {
// //     if (numbers.isEmpty) return 0;
// //     final cleaned = numbers.replaceAll('\n', ',');
// //     return cleaned.split(',').map(int.parse).reduce((a, b) => a + b);
// //   }
// // }

// class StringCalculator {
//   int add(String numbers) {
//     if (numbers.isEmpty) return 0;

//     String delimiter = ',';
//     String numString = numbers;

//     // Check for custom delimiter at the start
//     if (numbers.startsWith('//')) {
//       final parts = numbers.split('\n'); // use single backslash for newlines
//       delimiter = parts[0].substring(2); // substring on parts which is String
//       numString = parts.sublist(1).join('\n');
//     }

//     // Replace newlines with delimiter
//     final cleaned = numString.replaceAll('\n', delimiter);
//     // Split and parse numbers
//     final numList = cleaned
//         .split(delimiter)
//         .where((s) => s.isNotEmpty)
//         .map(int.parse)
//         .toList();

//     return numList.fold(0, (a, b) => a + b);
//   }
// }
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    String delimiter = ',';
    String numString = numbers;
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2);
      numString = parts.sublist(1).join('\n');
    }
    final cleaned = numString.replaceAll('\n', delimiter);
    final splitNumbers = cleaned.split(delimiter).where((s) => s.isNotEmpty);
    final numList = splitNumbers.map(int.parse).toList();
    final negatives = numList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
    return numList.fold(0, (a, b) => a + b);
  }
}
