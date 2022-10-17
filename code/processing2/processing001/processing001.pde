/* 
A partir do movimento do cursor na tela, muda o brilho das cores
*/

// definindo variáveis 
int barWidth = 20; // largura da barra de cores
int lastBar = -1; // definindo valor para a última barra

void setup() {
  // definindo tamanho da tela
  size(640, 360);
  // definindo função que altera forma como processing compreende as cores
  colorMode(HSB, width, 100, height); // divide a tela em colunas
  // configurando tela para não aceitar desenhos
  noStroke();
  // definindo cor de fundo 
  background(0);
}

void draw () {
  int whichBar = mouseX / barWidth; // Barra que receberá alteração na saturação será movimento do mouse no eixoX / largura da barra
  if (whichBar != lastBar) { // se a barra selecionada for diferente da última
  int barX = whichBar * barWidth; //
  fill(barX, 100, mouseY); // preencha a barra com este padrão de cores
  rect(barX, 0, barWidth, height); // desenha retângulo nestas coordenadas
  lastBar = whichBar;
  }
}
