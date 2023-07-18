import 'merge.dart';

List<E> mergeSort<E extends Comparable<dynamic>>(List<E> list) {
  if (list.length < 2) return list;

  int mid = list.length ~/ 2;

  final left = mergeSort(list.sublist(0, mid));
  final right = mergeSort(list.sublist(mid));

  return merge(left, right);
}
