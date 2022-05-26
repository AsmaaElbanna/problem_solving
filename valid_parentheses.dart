/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

-Open brackets must be closed by the same type of brackets.
-Open brackets must be closed in the correct order.
-s consists of parentheses only '()[]{}'.
*/

main() {
  String s = '()';
  print(isValid(s));
}

bool isValid(String s) {
  bool outPut = false;

  int i = 0;
  while (i < s.length - 1) {
    for (int j = i + 1; j < s.length; j++) {
      if (s[i] == '(' && s[j] == ')') {
        outPut = true;
      } else if(s[i] == '[' && s[j] == ']'){
         outPut = true;
      } else if(s[i] == '{' && s[j] == '}'){
         outPut = true;
      } else{
        outPut = false;
      }
    }
    i++;
  }
  return outPut;
}
