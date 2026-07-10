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
  bool isValidBST(TreeNode? root) {
    return isBST(root, double.negativeInfinity, double.maxFinite);
  }

  bool isBST(TreeNode? node, double minVal, double maxVal) {
    if (node == null) {
      return true;
    }

    if (node.val <= minVal || node.val >= maxVal) {
      return false;
    }

    return isBST(node.left, minVal, node.val.toDouble()) &&
        isBST(node.right, node.val.toDouble(), maxVal);
  }
}