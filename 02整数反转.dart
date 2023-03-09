import 'dart:ffi';

void main(List<String> args) {
  /**
   * 
   * 给你一个 32 位的有符号整数 x ，返回将 x 中的数字部分反转后的结果。

如果反转后整数超过 32 位的有符号整数的范围 [−231,  231 − 1] ，就返回 0。

假设环境不允许存储 64 位整数（有符号或无符号）。

输入：x = 123
输出：321
**/

  var x = -123;

 x = (x / 10) as int;
  // x = reverse(x);

  print(x);
}

int reverse(int x) {
  int res = 0;
  // int x1 = 100;
  while (x != 0) {
    int t = x % 10;
    int newRes = res * 10 + t;
    if ((newRes - t) / 10 != res) return 0;
    res = newRes;
    x = (x / 10) as int;
    print(x);
  }

  return res;
}
