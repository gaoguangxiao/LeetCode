void main(List<String> args) {
  /**
   * 
   * 给定一个 n × n 的二维矩阵 matrix 表示一个图像。请你将图像顺时针旋转 90 度。

你必须在 原地 旋转图像，这意味着你需要直接修改输入的二维矩阵。请不要 使用另一个矩阵来旋转图像。

作者：力扣 (LeetCode)
链接：https://leetcode.cn/leetbook/read/top-interview-questions-easy/xnhhkv/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
  */

  var matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  rotate(matrix);

  print(matrix);
}

void rotate(List<List<int>> matrix) {
  int length = matrix.length;
  for (var i = 0; i < length/2; i++) {
    var temp = matrix[i];
    matrix[i] = matrix[length - 1 - i];
    matrix[length - 1 - i] = temp;
  }

  for (var i = 0; i < length; i++) {
    for (int j = i + 1; j < length; ++j) {
      int temp = matrix[i][j];
      matrix[i][j] = matrix[j][i];
      matrix[j][i] = temp;
    }
  }
}
