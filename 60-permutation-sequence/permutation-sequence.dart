class Solution {
  String getPermutation(int n, int k) {
    final list = [];
    for(int i=1;i<n+1;i++){
        list.add(i);
    }
    String r = "";
    int q = k-1;
    for(int i=n-1;i>0;--i){
        final fac = f(i);
        final remain = list.removeAt(q~/fac);
        r+="${remain}";
        q = q%fac;
    }
    r+="${list.first}";
    return r;
  }

  int f(int n){
    int r = 1;
    while(n>0){
        r*=n;
        n--;
    }
    return r;
  }
}