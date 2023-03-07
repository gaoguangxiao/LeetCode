List<int> moveZeroes(List<int> nums) {
  List<int> list = [];

int j = 0;
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[j] = nums[i];
      j++;
    } 
  }
  while (j < nums.length) {
    nums[j]=0;
    j++;
  }

  return nums;
}

void main(List<String> args) {
  /**
     *
     * 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。

    请注意 ，必须在不复制数组的情况下原地对数组进行操作。

    示例 1:输入: nums =
    输出: [1,3,12,0,0]
    */

  List<int> nums = [0, 1, 0, 3, 12];
  print(moveZeroes(nums));
}
