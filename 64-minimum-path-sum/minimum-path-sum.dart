class Solution {
  int minPathSum(List<List<int>> grid) {
      int m = grid.length;
      int n = grid[0].length;

      List<int> pathSum = List.filled(n, 100000);
      pathSum[0] = 0;

      for (int y=0; y<m; y++) {
        for (int x=0; x<n; x++) {
          pathSum[x] = (x > 0 ? min(pathSum[x], pathSum[x-1]) : pathSum[x]) + grid[y][x];
        }
      }
      return pathSum[n-1];
  }
}

int min(int a, int b) {
  if (a<b){
    return a;
  }
  return b;
}
