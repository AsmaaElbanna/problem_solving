/*
13. Roman to Integer
Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

I ===> 1, V ===> 5, X ===> 10 ,L ===> 50 , C ===> 100, D ===> 500, M ===> 1000

*/




main() {
  print(romanToInt('MCMXCIV'));
}

int romanToInt(String s) {
  Map map = Map();
  map.addAll({
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  }); 

int prev = map[s[0]];
int res = prev;
int cur;

 for(int i = 1 ;i<s.length ; i++){
   cur = map[s[i]];
   res +=cur;

   if(cur > prev){
     res -= 2*prev;
   }
   prev = cur;

 }
  return res;
}
