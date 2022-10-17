/*
Exemplo com condição lógica if 
Exercício para treinar o uso de elipses, preenchimento e desenho com o mouse
*/

void setup() {
  // definindo tamanho da tela
  size(300, 300);
}

void draw() {
  
  if (mouseX > 100) { // se posição do mouse no eixo X estiver além de 100 pixels
  fill(255,0,0); // preencha elipse de vermelho
  ellipse(mouseX,mouseY,50,50); // delimitando ínicio e fim da elipse
  }
  else { // senão 
  fill(0,0,255); // preencha elipse de azul
  ellipse(mouseX,mouseY,50,50);
  }
}
