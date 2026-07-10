class Solution {
  int uniquePathsWithObstacles(List<List<int>> obstacleGrid) {
      Map<String,int> memo = {};
      return uniquePaths(obstacleGrid, [0,0], memo);
  }
  int uniquePaths(List<List<int>> grid , List<int> current_position, Map<String,int> memo){
      if(current_position[0] >= grid.length || current_position[1] >= grid[0].length || grid[current_position[0]][current_position[1]] == 1){
          return 0;
      }
      if(current_position[0] == grid.length - 1 && current_position[1] == grid[0].length - 1){
          return 1;
      }
      String current = current_position[0].toString() + ' ' + current_position[1].toString();

      if(memo.containsKey(current)){
          return(memo[current] ?? 0);
      }
      int return_paths = 0;
      return_paths += uniquePaths(grid, [current_position[0] + 1 , current_position[1]], memo);
      return_paths += uniquePaths(grid, [current_position[0] , current_position[1] + 1], memo);
      memo[current] = return_paths;
      return return_paths;
  }
}