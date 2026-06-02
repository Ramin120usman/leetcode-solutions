class Solution {
    String countAndSay(int n) {
        String out = '1 ';
        while(n > 1) {
            String rle = '';
            String com = out[0];
            int count = 0;
            for(String c in out.split('')) {
                if(com == c) {
                    count++;
                } else {
                    rle += '$count$com';
                    com = c;
                    count = 1;
                }
            }
            out = '$rle ';
            print(out);
            n--;
        } 
        out = out.substring(0,out.length-1);
        return out;
    }
}