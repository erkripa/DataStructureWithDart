import "../bubbleSort/swap.dart";

void selectionSort<E extends Comparable<dynamic>>(List<E> list) {
  for (int start = 0; start < list.length - 1; start++) {
    //1.
    int lowest = start;

    //2.
    for (int next = start + 1; next < list.length; next++) {
      if (list[next].compareTo(list[lowest]) < 0) {
        lowest = next;
      }
    }
    //3.
    if (lowest != start) {
      list.swap(lowest, start);
    }
  }
}
