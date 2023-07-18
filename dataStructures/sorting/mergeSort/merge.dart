List<E> merge<E extends Comparable<dynamic>>(List<E> listA, List<E> listB) {
  int indexA = 0;
  int indexB = 0;
  List<E> result = [];
  //1
  while (indexA < listA.length && indexB < listB.length) {
    final valueA = listA[indexA];
    final valueB = listB[indexB];

    //2.
    if (valueA.compareTo(valueB) < 0) {
      result.add(valueA);
      indexA++;
    } else if (valueA.compareTo(valueB) > 0) {
      result.add(valueB);
      indexB++;
    } else {
      //3.
      result.add(valueA);
      result.add(valueB);
      indexA++;
      indexB++;
    }
  }

  if (indexA < listA.length) {
    result.addAll(listA.getRange(indexA, listA.length));
  }

  if (indexB < listB.length) {
    result.addAll(listB.getRange(indexB, listB.length));
  }

  return result;
}
