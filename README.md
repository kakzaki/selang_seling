# Selang Seling

Selang Seling is a Dart library for interleaving lists, providing flexible methods to combine elements from multiple lists based on customizable item counts.

[![pub package](https://img.shields.io/pub/v/selang_seling.svg)](https://pub.dev/packages/selang_seling)
[![pub package](https://img.shields.io/twitter/follow/kakzaki_id.svg?colorA=1da1f2&colorB=&label=Follow%20on%20Twitter)](https://twitter.com/kakzaki_id)


## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  selang_seling: ^0.0.1
```

Then, run:

```bash
dart pub get
```

## Usage

### Interleave Two Lists

```dart
import 'package:selang_seling/selang_seling.dart';

void main() {
  List<int> list1 = [1, 3, 5, 7, 9];
  List<int> list2 = [2, 4, 6];

  // Interleave two lists
  List<int> combinedList = SelangSeling.interleave(list1: list1, list2: list2, firstCount: 2, secondCount: 1);
  print('Interleave: $combinedList'); // Output: [1, 3, 2, 5, 7, 4, 9, 6]
}
```

### Interleave Multiple Lists

```dart
import 'package:selang_seling/selang_seling.dart';

void main() {
  List<int> list3 = [1, 4, 7];
  List<int> list4 = [2, 5, 8];
  List<int> list5 = [3, 6, 9, 10, 11];

  List<List<int>> lists = [list3, list4, list5];
  List<int> itemCounts = [1, 2, 1]; // Number of items from each list

  // Interleave multiple lists
  List<int> combinedMultipleList = SelangSeling.interleaveMultiple(lists: lists, itemCounts: itemCounts);
  print('Interleave Multiple: $combinedMultipleList'); // Output: [1, 2, 5, 3, 4, 7, 6, 8, 9, 10, 11]
}
```

### API

#### `SelangSeling.interleave`

Interleaves two lists based on specified item counts.

- Parameters:
    - `list1`: First list to be interleaved.
    - `list2`: Second list to be interleaved.
    - `firstCount`: Number of items to take from `list1` in each iteration.
    - `secondCount`: Number of items to take from `list2` in each iteration.

- Returns:
    - A list containing interleaved elements from `list1` and `list2`.

#### `SelangSeling.interleaveMultiple`

Interleaves multiple lists based on specified item counts for each list.

- Parameters:
    - `lists`: List of lists to be interleaved.
    - `itemCounts`: List specifying the number of items to take from each list in each iteration.

- Returns:
    - A list containing interleaved elements from all lists according to the specified item counts.

#### Exceptions

- Throws `ArgumentError` if the length of `itemCounts` does not match the length of `lists` in `interleaveMultiple`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
