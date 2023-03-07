import 'dart:math';

void main(List<String> args) {
  /*
  给你两个整数数组 nums1 和 nums2 ，请你以数组形式返回两数组的交集。
  返回结果中每个元素出现的次数，
  应与元素在两个数组中都出现的次数一致（如果出现次数不一致，则考虑取较小值）。可以不考虑输出结果的顺序。
*/

//暴力方案：数组1的元素逐个和数组2的元素比较，有相同的加入新数组。时间复杂度O(n^2)
//集合：双指针，从小到大排序，数组1的元素逐个下一个数组比较，
  // var nums1 = [1, 2, 2, 1];
  // var nums2 = [2, 2, 3];

var nums1 = [0,5,8,7,2,9,7,5];
var nums2= [1,4,8,9];
  print(intersect(nums1, nums2));
  // print(nums1);
  // print(nums2);
//121
}

List<int> intersect(List<int> nums1, List<int> nums2) {
  List<int> list = [];
  nums1.sort();
  nums2.sort();
  var top = 0;
  var bottom = 0;
  var count = nums1.length +  nums2.length;
  // print(nums1);
  // print(nums2);
  // print(count);
  for (var i = 0; i < count; i++) {
    var topValue = nums1[top];
    var bottomValue = nums2[bottom];
    if (topValue > bottomValue) {
      bottom++;
    } else if (topValue < bottomValue) {
      top++;
    } else {
      bottom++;
      top++;
      list.add(topValue);
    }
    // print("顶部指针移动 $top - 底部指针移动 $bottom");
    // print("");
    if (top == nums1.length || bottom == nums2.length) {
      // print("跳出");
      break;
    }
  }
  return list;
}
