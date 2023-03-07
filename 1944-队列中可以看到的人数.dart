import 'dart:ffi';
import 'dart:math';

void main(List<String> args) {
  /*
  有 n 个人排成一个队列，从左到右 编号为 0 到 n - 1 。给你以一个整数数组 heights ，每个整数 互不相同，heights[i] 表示第 i 个人的高度。

一个人能 看到 他右边另一个人的条件是这两人之间的所有人都比他们两人 矮 。更正式的，第 i 个人能看到第 j 个人的条件是 i < j 且 min(heights[i], heights[j]) > max(heights[i+1], heights[i+2], ..., heights[j-1]) 。

请你返回一个长度为 n 的数组 answer ，其中 answer[i] 是第 i 个人在他右侧队列中能 看到 的 人数 。

  */

/*单调栈：栈内的元素单调按照递增（递减）顺序排列的栈*/

  List<int> arr = [10, 6, 8, 5, 11, 9];
  arr = [5, 1, 2, 3, 10];
  print(canSeePersonsCount(arr));
}

List<int> canSeePersonsCount(List<int> heights) {
  List<int> newList = [];

  for (var i = 0; i < heights.length; i++) {
    var iValue = heights[i];
    var seenum = 0; //能看到的人数
    if (i + 1 == heights.length) {
      newList.add(seenum);
      break;
    }
    for (var j = i; j < heights.length; j++) {//n * (n-1)
      var jValue = heights[j];
      var minijHeight = min(iValue, jValue);
      // print("i=$i,j=$j,两人最小高度是$minijHeight");//
      var dif = j - i;
      // print(i);
      if (dif == 0) {
        seenum += 1;
      } else if (dif > 0) {
        //求出两人之间的最大高度
        var diffMaxHeight = heights[i + 1];
        for (var o = i + 2; o < j; o++) {
          var oValue = heights[o]; //
          diffMaxHeight = max(oValue, diffMaxHeight);
        }
        // print("i=$i[$iValue],j=$j[$jValue],中间人最大高度$diffMaxHeight");
        if (minijHeight > diffMaxHeight) {
          // print("i=$i[$iValue],j=$j[$jValue],中间人最大高度$diffMaxHeight");
          seenum += 1;
          // print("看到的人数：$seenum");
        }
      }
    }

    newList.add(seenum);
  }

  return newList;
}
