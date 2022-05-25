
/*
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".
*/
 // using sorting

void main() {
  List<String> s = ["flower", "flow", "flight"];
  print('Hello world');

  print(longestPreffix(s));
}

String longestPreffix(List arr) {
  int size = arr.length;

  if (size == 0) {
    return '';
  } else if (size == 1) {
    return arr[0];
  }

  String res = '';
  arr.sort();

  for (int i = 0; i < arr[0].length; i++) {
    if (arr[0][i] == arr[size - 1][i]) {
      res = res + '${arr[0][i]}';
    }
  }

  return res;
}
