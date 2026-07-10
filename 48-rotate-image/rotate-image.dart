class Solution {
  void rotate(List<List<int>> matrix) {
    int n = matrix.length;

  List<List<int>> result = List.generate(n, (_) => List.filled(n, 0));
  
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      result[j][n - 1 - i] = matrix[i][j];
    }
  }
  for(int i = 0; i<n; i++){
    for(int j = 0; j<n; j++){
        matrix[i][j] = result[i][j];
    }
  }
  }
}