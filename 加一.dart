import 'dart:ffi';
import 'dart:math';

void main(List<String> args) {
  /**
   * 
   * 给定一个由 整数 组成的 非空 数组所表示的非负整数，在该数的基础上加一。

最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。

你可以假设除了整数 0 之外，这个整数不会以零开头。

作者：力扣 (LeetCode)
链接：https://leetcode.cn/leetbook/read/top-interview-questions-easy/x2cv1c/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

输入：digits = [1,2,3]
输出：[1,2,4]
解释：输入数组表示数字 123。
  */

/**
 *  数组元素变为整数 + 1，分割为 数组 打印输出
 *  */
  var digits = [1, 2, 3];
  // digits = [9, 9];
// 输出：[1,2,4]

  print(plusOne(digits));
}

//判断9 10
//10 11
//19 20
//99 1010
//时间复杂度O(n)
List<int> plusOne(List<int> digits) {
  // var str = "";
  for (var i = digits.length - 1; i > -1; i--) {
    if (digits[i] != 9) {
      digits[i]++;
      return digits;
    } else {
      digits[i] = 0;
    }
  }
  digits.insert(0, 1);
  return digits;
}

//暴力思路
// List<int> plusOne(List<int> digits) {
//   var str = "";
//   digits.forEach((element) {
//     str += element.toString();
//   });

//   var stradd = (int.parse(str) + 1).toString().split('');

//   return stradd.map((e) {
//     return int.parse(e);
//   }).toList();
// }
