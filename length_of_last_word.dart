 main() {
  print(lengthOfLastWord('   fly me   to   the moonn  '));
}

int lengthOfLastWord(String s) {
  String sAfterTrim = s.trim();
int length =0;
  for(int i = 0;i<sAfterTrim.length ;i++){
    if(sAfterTrim[i]==' '){
      length = 0;
    }else{
      length++;
    }

  }
  return length;
}
