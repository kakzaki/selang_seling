/// A class that provides methods for interleaving lists.
class SelangSeling {
  /// Interleaves two lists based on given item counts.
  ///
  /// [list1] and [list2] are the lists to be interleaved.
  /// [firstCount] is the number of items to take from [list1] in each iteration.
  /// [secondCount] is the number of items to take from [list2] in each iteration.
  static List<T> interleave<T>(
      {required List<T> list1,
      required List<T> list2,
      required int firstCount,
      required int secondCount}) {
    List<T> result = [];
    int i = 0;
    int j = 0;

    while (i < list1.length || j < list2.length) {
      for (int k = 0; k < firstCount && i < list1.length; k++) {
        result.add(list1[i++]);
      }
      for (int k = 0; k < secondCount && j < list2.length; k++) {
        result.add(list2[j++]);
      }
    }

    return result;
  }

  /// Interleaves multiple lists based on given item counts.
  ///
  /// [lists] is a list of lists to be interleaved.
  /// [itemCounts] is a list that determines the number of items to take from each list in each iteration.
  static List<T> interleaveMultiple<T>(
      {required List<List<T>> lists, required List<int> itemCounts}) {
    if (lists.length != itemCounts.length) {
      throw ArgumentError(
          'Length of itemCounts must be equal to length of lists.');
    }

    List<T> result = [];
    List<int> indices = List.filled(lists.length, 0);

    bool hasElements = true;
    while (hasElements) {
      hasElements = false;
      for (int i = 0; i < lists.length; i++) {
        int count = itemCounts[i];
        for (int j = 0; j < count && indices[i] < lists[i].length; j++) {
          result.add(lists[i][indices[i]++]);
          hasElements = true;
        }
      }
    }

    return result;
  }
}
