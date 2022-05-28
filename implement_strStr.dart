/*
Implement strStr() (Find Needle In A Haystack)

Given two strings needle and haystack, return the index of the first occurrence of needle in haystack,
 or -1 if needle is not part of haystack.

 Input: haystack = "hello", needle = "ll"
  Output: 2
 Input: haystack = "aaaaa", needle = "bba"
  Output: -1
*/

main() {
  String haystack = 'dart';
  String needle = 'art';
  // print(haystack.contains(needle));
  // print(haystack.substring(1, 3));
  print(strStr(haystack, needle));
}

int strStr(String haystack, String needle) {
  // int output = -2;
  int index = -2;
  int needleLength = needle.length;

  if (needle.isEmpty) {
    index = 0;
  } else {
    if (haystack.contains(needle)) {
      for (int i = 0; i < haystack.length-needleLength+1; i++) {
        if (haystack.substring(i,i+needleLength).contains(needle)) {
          index = i;
        }
      }
    } else {
      index = -1;
    }
  }

  return index;
}


