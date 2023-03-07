void main(List<String> args) {
  /**
   *   给你一个 非空 整数数组 nums ，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元素。

你必须设计并实现线性时间复杂度的算法来解决此问题，且该算法只使用常量额外空间。

输入：nums = [2,2,1]
输出：1

   * 
  */

  var nums = [2, 1, 1, 8, 2, 5, 6, 5, 6];
  print(singleNumber(nums));
}

int singleNumber(List<int> nums) {
  var s = Set();
  //通过集合对相同的元素的添加会失败的机制，保留没有添加失败的，之前添加失败的移除，那么最终集合的元素是唯一的.
  for (var element in nums) {
    if (!s.add(element))s.remove(element);
  }
  return s.first;
}
