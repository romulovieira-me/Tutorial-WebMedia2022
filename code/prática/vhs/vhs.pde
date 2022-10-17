
// Atividade prática - Tutorial WebMedia 2022



// Importando módulos que permitem receber mensagens OSC pela rede
import oscP5.*; // Importa todas as features do pacote
import netP5.*;
// Criando variável do tipo OscP5 para armazenar o
OscP5 osc;

// Declarando variáveis que irão receber mudanças via OSC
int vermelho, verde, azul;
// Definindo variáveis para os eixos X e Y
float x, y;
// Definindo movimento no eixo X
int xStep = 100;
// Definindo movimento no eixo Y 
int yStep = 80;
// Variáveis com especificações da tela. Serão usadas para a mudança das cores de acordo com sua posição na tela, levando em consideração o seno e coseno da tela
float a, a_;
// Variável que irá armazenar a animação
int num;

// Função de configuração da tela
void setup(){
  
  // Criando o servidor OSC
  osc = new OscP5(this, 12000);
  
  // Tamanho da tela
  size(800, 800);
  
  // Criando movimento dos quadros na tela
  num = int((width/xStep)*(height/yStep)); // (Canvas width÷xStep) * (height÷yStep) 
}

 // Função que recebe os dados via OSC 
void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.addrPattern().equals("/vermelho")) {
    vermelho = theOscMessage.get(0).intValue();
   
  }
  if (theOscMessage.addrPattern().equals("/verde")) {
    verde = theOscMessage.get(0).intValue();
    
  }
  if (theOscMessage.addrPattern().equals("/azul")) {
    azul = theOscMessage.get(0).intValue();  
  }

}

// Configurando função de desenho 
void draw(){
  
  // Cores de fundo da tela
  background(vermelho, verde, azul);
  
  // Criando as formas na tela (quadrados)
  strokeCap(CORNER);
  
  // Define a espessura dos elementos criados
  strokeWeight(xStep); // Espessura da linha será igual do eixo X
  
  // Declarando variável n para mudança de cores
  int n=0;
  
  // Definindo lógica da mudança de cores 
  while (n<num) { // enquanto n < num
    // Configurando cores 
    // Primeiro elemento cria quadros azuis; segundo cria quadros rosas; terceiro cria quadros verdes; quarto cria quadros pretos
    stroke(255-255*cos(radians(a)), 255*cos(radians(a)), 255-255*sin(radians(a)), 255-255*sin(radians(a)));
    // Desenha linhas
    line(x, y, x, y+yStep); // Define pontos X e Y de começo e final da linha
    x+=xStep; // Soma os valores de x e xStep
    // Se "x" for maior que a largura da tela 
    if (x>width) {
      x=xStep/2; // O valor de "x" torna-se equivalente a metade do movimento de X
      y+=yStep; // Y = Y + yStep
    }
    
    // Se "Y" for maior ou igual a altura da tela
    if (y>=height) {
      y=0; // Y retorna para zero
      a=0; // "a" retorna para zero
    }
    n++; // Incrementa 1 na variável "n" e altera cores
    a+=a_; // Altera cores
  }
  a_+=0.1; // Altera velocidade
}
