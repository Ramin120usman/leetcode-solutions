class Solution {
   double myPow(double x, int n) {
               double ans=1.0;
        double nToDouble=n.toDouble();
        if(nToDouble<0) nToDouble=-1*nToDouble;
        while(nToDouble>0){
            if(nToDouble%2==1){
                ans = ans *x;
                nToDouble=nToDouble-1;
            }
            else{
                x=x*x;
                nToDouble=nToDouble/2;
            }
        }
        if(n<0){
        ans = 1.0/ans;

        }
        return ans;
    }
}
