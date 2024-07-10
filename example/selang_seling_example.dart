import 'package:selang_seling/selang_seling.dart';

void main() {
  List<int> list1 = [1, 3, 5, 7, 9];
  List<int> list2 = [2, 4, 6];

  // Using the SelangSeling class with named parameters
  List<int> combinedList = SelangSeling.interleave(
      list1: list1, list2: list2, firstCount: 2, secondCount: 1);
  print('Interleave: $combinedList'); // Output: [1, 3, 2, 5, 7, 4, 9, 6]

  List<int> list3 = [1, 4, 7];
  List<int> list4 = [2, 5, 8];
  List<int> list5 = [3, 6, 9, 10, 11];

  List<List<int>> lists = [list3, list4, list5];
  List<int> itemCounts = [1, 2, 1]; // Number of items from each list

  // Using the SelangSeling class with named parameters for multiple lists
  List<int> combinedMultipleList =
      SelangSeling.interleaveMultiple(lists: lists, itemCounts: itemCounts);
  print(
      'Interleave Multiple: $combinedMultipleList'); // Output: [1, 2, 5, 3, 4, 7, 6, 8, 9, 10, 11]
}
