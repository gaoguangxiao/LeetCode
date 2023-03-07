void main(List<String> args) {
  //计算数组中是否存在统一的元素，有返回true
  var nums = [1, 2, 3, 4];
  // var nums = [1, 2, 3, 1];

  bool isResult = containsDuplicate(nums);
  print(isResult);

  // var value = 10 ^ 5;
  // print("数值：$value");
}

bool containsDuplicate(List<int> nums) {
  var newSet = Set();
  for (var value in nums) {
    if (newSet.contains(value)) return true;
    newSet.add(value);
  }
  return false;
}

// bool containsDuplicate(List<int> nums) {
//   var t = Set<int>();
//   for (var v in nums) {
//     if (t.contains(v)) return true;
//     t.add(v);
//   }
//   return false;
// }

// bool containsDuplicate(List<int> nums) {
//   if (nums.length > 10 * 10 *10 *10 *10) {
//     return false;
//   }
//   for (var i = 0; i < nums.length; i++) {
//     int tmpi = nums[i];
//     print("i=$tmpi");
//     for (var j = i + 1; j < nums.length; j++) {
//       int tmpj = nums[j];
//       print("j=$tmpj");
//       if (tmpi == tmpj) {
//         return true;
//       }
//     }
//   }
//   return false;
// }
