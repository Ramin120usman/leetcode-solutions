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
    List<int>result=[];

    void inOrder(TreeNode? root){
        if(root==null) return;
        inOrder(root.left);
        result.add(root.val);
        inOrder(root.right);
    }
    List<int> inorderTraversal(TreeNode? root) {
        inOrder(root);
        return result;
    }
}