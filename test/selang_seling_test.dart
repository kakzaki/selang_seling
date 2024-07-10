import 'package:test/test.dart';
import 'package:selang_seling/selang_seling.dart';

void main() {
  group('SelangSeling', () {
    test('interleave', () {
      List<int> list1 = [1, 3, 5, 7, 9];
      List<int> list2 = [2, 4, 6];

      List<int> result = SelangSeling.interleave(
          list1: list1, list2: list2, firstCount: 2, secondCount: 1);
      expect(result, equals([1, 3, 2, 5, 7, 4, 9, 6]));
    });

    test('interleaveMultiple', () {
      List<int> list3 = [1, 4, 7];
      List<int> list4 = [2, 5, 8];
      List<int> list5 = [3, 6, 9, 10, 11];

      List<List<int>> lists = [list3, list4, list5];
      List<int> itemCounts = [1, 2, 1];

      List<int> result =
          SelangSeling.interleaveMultiple(lists: lists, itemCounts: itemCounts);
      expect(result, equals([1, 2, 5, 3, 4, 8, 6, 7, 9, 10, 11]));
    });

    test('interleaveMultiple - unequal lists and itemCounts lengths', () {
      List<int> list3 = [1, 4, 7];
      List<int> list4 = [2, 5, 8];
      List<int> list5 = [3, 6, 9, 10, 11];

      List<List<int>> lists = [list3, list4, list5];
      List<int> itemCounts = [1, 2]; // Different length intentionally

      expect(
          () => SelangSeling.interleaveMultiple(
              lists: lists, itemCounts: itemCounts),
          throwsArgumentError);
    });
  });
}
