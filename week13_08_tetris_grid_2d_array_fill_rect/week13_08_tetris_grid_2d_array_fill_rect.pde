// week13_08_tetris_grid_2d_array_fill_rect
void setup() {
  size(240, 440);
}
void draw() {
  for (int i =0; i<22; i++) {
    for (int j=0; j<12; j++) {
      if (grid[i][j]==1) fill(119, 119, 119);
      if (grid[i][j]==0) fill(0);
      if (grid[i][j]==2) fill(153, 0, 204);
    }
  }
}
int [][] grid ={
  
