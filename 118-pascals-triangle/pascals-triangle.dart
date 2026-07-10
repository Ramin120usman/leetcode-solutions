class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> triangle = [];

    if (numRows <= 0) {
      return triangle;
    }

    for (int i = 0; i < numRows; i++) {
      List<int> row = List.filled(i + 1, 1);

      if (i >= 2) {
        for (int j = 1; j < i; j++) {
          row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
        }
      }

      triangle.add(row);
    }

    return triangle;
  }
}