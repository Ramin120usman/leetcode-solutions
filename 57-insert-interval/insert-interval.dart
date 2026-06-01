class Solution {
  List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
    List<List<int>> res = [];
    for(int i =0 ; i < intervals.length ; i++){
        // Case 1: No overlap, add newInterval and remaining intervals
        if(newInterval[1] < intervals[i][0]){  
            res.add(newInterval);
            res.addAll(intervals.sublist(i));
            return res;
        } else if(newInterval[0] > intervals[i][1]){ // Case 2: No overlap, add the current interval
           res.add(intervals[i]);
        } else {
            // Case 3: Overlap, merge the intervals
            newInterval[0] = min(newInterval[0],intervals[i][0]);
            newInterval[1] = max(newInterval[1],intervals[i][1]);
        }
    }
    res.add(newInterval);
    return res;
  }
}