/** Additional feature tests that aren't based on test data. */
library quicksort_test;

import 'dart:io';
import 'package:unittest/unittest.dart';
import '../quicksort.dart';


main(){
  test('QuickSort', () =>
  expect(quickSort([5, 4, 3, 2, 1]),
  orderedEquals([1, 2, 3, 4, 5]))
);
}