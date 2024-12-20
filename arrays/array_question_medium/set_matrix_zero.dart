void main() {
  List<List<int>> matrix = [
    [1, 1, 1, 1],
    [1, 1, 0, 1],
    [1, 1, 1, 1]
  ];
  setMatrixZero(matrix);
}

void setMatrixZero(List<List<int>> matrix) {
  int n = matrix.length;

  int col1 = 1;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == 0) {
        matrix[i][0] = 0;

        if (j != 0)
          matrix[0][j] = 0;
        else
          col1 = 0;
      }
    }
  }
  for (int i = 1; i < n; i++) {
    for (int j = 1; j < matrix[i].length; j++) {
      if (matrix[i][j] != 0) {
        if (matrix[i][0] == 0 || matrix[0][j] == 0) {
          matrix[i][j] = 0;
        }
      }
    }
  }

  if (matrix[0][0] == 0) {
    for (int j = 0; j < matrix[0].length; j++) matrix[0][j] = 0;
  }

  if (col1 == 0) {
    for (int i = 0; i < matrix.length; i++) matrix[i][0] = 0;
  }
}
