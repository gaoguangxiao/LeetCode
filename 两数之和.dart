void main(List<String> args) {
  /**
   * 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。

你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
你可以按任意顺序返回答案。

输入：nums = [2,7,11,15], target = 9
输出：[0,1]
解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1] 

   * 
   * **/

  // List<int> nums = [2, 7, 11, 15];
  // int target = 9;
  List<int> nums = [3, 2, 4, 15];
  int target = 17;
  print(twoSum1(nums, target));
}

//双指针
List<int> twoSum1(List<int> nums, int target) {
  int i = 0;
  int j = 1;
  int maxIndex = nums.length - 1;
  while (nums[i] + nums[j] != target) {
    if (j == maxIndex) {
      i++;
      j = i;
    }
    j++;
  }
  return [i, j];
}

//暴力破解
List<int> twoSum(List<int> nums, int target) {
  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}
