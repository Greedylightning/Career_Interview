class Solution{

    int previous;
    public int findMaxLength(int[][] matrix, int x, int y){
        int[][] list = new int[matrix.length][matrix[0].length];
        int max = 0;
        findMaxLength(matrix, list, x, y);
        for(int i = 0; i < list.length; i++){
            for(int j = 0; j < list[0].length; j++){
                max = Math.max(max, list[i][j]);
            }
        }
        return max;
    }

    public void findMaxLength(int[][] matrix, int[][] list, int x, int y){
        if(x < 0 || y < 0 || x > matrix.length - 1 || y > matrix[0].length - 1) return ;
        if(previous > matrix[x][y]){
            list[x][y]++;
        }
        previous = matrix[x][y];
        findMaxLength(matrix, list, x + 1, y);
        findMaxLength(matrix, list, x - 1, y);
        findMaxLength(matrix, list, x, y + 1);
        findMaxLength(matrix, list, x, y - 1);
    }
}