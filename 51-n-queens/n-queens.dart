class Solution {
  List<List<String>> solveNQueens(int n) {
    List<List<String>> result = [];

    List<List<String>> board =
        List.generate(n, (_) => List.generate(n, (_) => '.'));

    Set<int> cols = {};
    Set<int> diag1 = {}; // row - col
    Set<int> diag2 = {}; // row + col

    void backtrack(int row) {
      // If all queens are placed
      if (row == n) {
        result.add(board.map((r) => r.join()).toList());
        return;
      }

      for (int col = 0; col < n; col++) {
        // Check if position is safe
        if (cols.contains(col) ||
            diag1.contains(row - col) ||
            diag2.contains(row + col)) {
          continue;
        }

        // Place queen
        board[row][col] = 'Q';
        cols.add(col);
        diag1.add(row - col);
        diag2.add(row + col);

        // Move to next row
        backtrack(row + 1);

        // Backtrack
        board[row][col] = '.';
        cols.remove(col);
        diag1.remove(row - col);
        diag2.remove(row + col);
      }
    }

    backtrack(0);

    return result;
  }
}