import 'merge_sort.dart';

void main() {
  final List<int> list = [4, 5, 3, 6, 7, 1, 2, 8, 9, 0];
  print("Befor Merge Sorting => ${list}");
  final sorted = mergeSort(list);
  print("After Merge Sorting => ${sorted}");
}
