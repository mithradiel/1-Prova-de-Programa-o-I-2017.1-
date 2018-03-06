// Desenhar um quadrado centrado na posição do mouse que gira sobre o proprio eixo com velocidade constante (de?)
// A cada clique deixar um retangulo na posição que continue girando.

ArrayList<Integer> qX = new ArrayList<Integer>(); // Declaração da ArrayList que manterá os valores dos Xs 
ArrayList<Integer> qY = new ArrayList<Integer>(); //Declaração da ArrayList que manterá os valores dos Ys
ArrayList<Integer> r = new ArrayList<Integer>(); // Declaração da Arraylist que manterá os valores dos angulos

void setup(){
    size(400,400); // Tamanho da tela
    rectMode(CENTER); // Definindo que as cordenadas passadas como parametro para rect será o centro do rect
    frameRate(60);  // Definindo a quantidade de quadros por segundo para 60
          
    qX.add(mouseX); // adicionando as cordenadas X do mouse a ArrayList
    qY.add(mouseY); // adicionando as cordenadas Y do mouse a ArrayList
    r.add(0); // Adicionando o angulo de rotação igual a zero à ArrayList
}
    
    
void draw(){
    background(156); // Determinando a cor cuja qual toda a tela será pintada 
    
    qX.set(0, mouseX); // Modificando o valor do primeiro elemento da ArrayList para o X do mouse.
    qY.set(0, mouseY); // Modificando o valor do primeiro elemento da ArrayList para o Y do mouse.
    
    
    for (int i = 0; i< r.size(); i++){ // Laço de repetição para cada elemento da Arraylist r
        pushMatrix(); // O inicio da matrix (Qualquer alteração espacial feita na matrix será revertida no final dela)
        translate(qX.get(i),qY.get(i)); // Transloca o inicio do plano(o 0,0) para as cordenadas do elemento i das Arraylists qY e qX
        rotate(radians(r.get(i))); // Transforma o valor do elemento i da Arraylist r para radiano e então gira a tela no valor resultante
        rect(0, 0, 40, 40); // Desenha um retangulo cujo centro está nas cordenadas (0,0) com 40 de altura e largura
        r.set(i,r.get(i)+2); // Adiciona +2 ao elemento i da ArrayList r
        popMatrix();// Término da matrix
        
    }    
}    
    
void mouseReleased(){ // Método que é chamado quando o um botão do mouse deixa de ser pressionado;

    qX.add(mouseX); // adicionando as cordenadas X do mouse a ArrayList
    qY.add(mouseY); // adicionando as cordenadas Y do mouse a ArrayList
    r.add(r.get(0));// Adiciona o valor para rotação igual ao primeiro valor da Arraylist r
    //r.add((int)random(150));// Adiciona um valor aleatorio entre 0.0 e 149.9 convertido para um valor inteiro
}
