/*
Reprodução da obra "Composição em vermelho, azul, amarelo e branco", de Piet Mondrian 
Exercício para praticar formas geométricas no Processing e releitura 
*/

void setup() {
  // definindo tamanho da tela
  size(400, 400);
  // parâmetro básico para desenho de retângulos
  rectMode(CORNERS);
}

void draw() {
  // Definindo cor da tela de fundo
  background(255);
  // Sem traço
  noStroke();
  
  // desenhando retângulo vermelho
  fill(230, 20, 20); // preenchimento
  rect(100, 0, 400, 300); // posição
  
  // retângulo azul
  fill(40, 20, 200); // preenchimento
  rect(0, 300, 100, 400); // posição
  
  // retângulo amarelo
  fill(230, 230, 20); // preenchimento
  rect(380, 350, 400, 400); // posição
  
  // Linhas pretas entre os retângulos
  stroke(0); // cor do traço
  strokeCap(SQUARE); // estilo do traço
  strokeWeight(12); // espessura do traço
  line(100, 0, 100, 400); // posição da linha 1
  line(0, 300, 400, 300); // posição da linha 2
  line(380, 300, 380, 400); // posição da linha 3
  
  // Linha entre o retângulo amarelo e o branco
  strokeWeight(20); // espessura da linha
  line(0, 200, 100, 200); // linha 1
  line(380, 350, 400, 350); // linha 2
}
