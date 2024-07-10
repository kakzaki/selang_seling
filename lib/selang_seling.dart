/// Selang Seling is a Dart library for interleaving lists, providing methods to combine elements
/// from multiple lists based on customizable item counts.
///
/// This library offers two main functionalities:
///
/// 1. **Interleave Two Lists**: Allows you to combine two lists by taking a specified number of items
///    from each list in each iteration.
///
/// 2. **Interleave Multiple Lists**: Enables interleaving multiple lists, each with a different count
///    of items taken in each iteration, providing flexibility in combining varied lists.
///
/// Example usage:
///
/// ```dart
/// import 'package:selang_seling/selang_seling.dart';
///
/// void main() {
///   List<int> list1 = [1, 3, 5, 7, 9];
///   List<int> list2 = [2, 4, 6];
///
///   // Interleave two lists
///   List<int> combinedList = SelangSeling.interleave(list1: list1, list2: list2, firstCount: 2, secondCount: 1);
///   print('Interleave: $combinedList'); // Output: [1, 3, 2, 5, 7, 4, 9, 6]
///
///   List<int> list3 = [1, 4, 7];
///   List<int> list4 = [2, 5, 8];
///   List<int> list5 = [3, 6, 9, 10, 11];
///
///   List<List<int>> lists = [list3, list4, list5];
///   List<int> itemCounts = [1, 2, 1]; // Number of items from each list
///
///   // Interleave multiple lists
///   List<int> combinedMultipleList = SelangSeling.interleaveMultiple(lists: lists, itemCounts: itemCounts);
///   print('Interleave Multiple: $combinedMultipleList'); // Output: [1, 2, 5, 3, 4, 7, 6, 8, 9, 10, 11]
/// }
/// ```
///
/// For more details on each method and usage examples, see the documentation of [`SelangSeling`].
///
/// [`SelangSeling`]: src/selang_seling_base.dart
library selang_seling;

export 'src/selang_seling_base.dart';
