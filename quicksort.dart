library quicksort;

import 'package:unittest/unittest.dart';

// NOTE: This code purposely has errors to illustrate unittest further below.

int _partition(List array, int left, int right, int pivotIndex) {
  var pivotValue = array[pivotIndex];
  array[pivotIndex] = array[right];
  array[right] = pivotValue;
  var storeIndex = left;
  for (var i = left; i < right; i++) {
    if (array[i] < pivotValue) {
      var tmp = array[i];
      array[i] = array[storeIndex];
      //array[storeIndex] = tmp;
      array[storeIndex++] = tmp;
    }
  }
  var tmp = array[storeIndex];
  array[storeIndex] = array[right];
  array[right] = tmp;
  return storeIndex;
}

void _quickSort(List array, int left, int right) {
  if (left < right) {
    //int pivotIndex = left + ((right-left) / 2);
    int pivotIndex = left + ((right-left) / 2).toInt();
    pivotIndex = _partition(array, left, right, pivotIndex);
    _quickSort(array, left, pivotIndex-1);
    _quickSort(array, pivotIndex+1, right);
  }
}

List quickSort(List array) {
  _quickSort(array, 0, array.length-1);
  return array;
}

void main() {
  test('QuickSort', () =>
  expect(quickSort([5, 4, 3, 2, 1]),
  orderedEquals([1, 2, 3, 4, 5]))
);
}