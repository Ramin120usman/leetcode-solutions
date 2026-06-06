/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
    List<TreeNode?> generateTrees(int n) {
        if(n==0) return [];
        List<TreeNode?> helper_generate(int start, int end) {
            List<TreeNode?> result = [];
            if(start > end) {
                return [null];
            } else if(start==end){
                return [TreeNode(start)];
            } 
            else{
                for(int i=start;i<=end; i++){
                    List<TreeNode?> lefts = helper_generate(start,i-1);
                    List<TreeNode?> rights = helper_generate(i+1,end);
                    for(var l in lefts){
                        for(var r in rights) {
                            TreeNode? root = TreeNode(i);
                            root.left = l;
                            root.right = r;
                            result.add(root);
                        }
                    }
                }
                return result;
            }
        }
        return helper_generate(1,n);
    }
}