// Deixar um circulo centrado na posição do mouse ao ser clicado
// O tamanho e cor dos circulos devem mudar de acordo com a
// posição do mouse

ArrayList<Integer> circulosX = new ArrayList<Integer>();// Declaração da ArrayList que manterá os valores dos Xs
ArrayList<Integer> circulosY = new ArrayList<Integer>();//Declaração da ArrayList que manterá os valores dos Ys

void setup(){
    size(400,400);// Tamanho da tela
}    
void draw(){
    background(253);// Cor (0 = preto, 255 = branco) que toda a tela vai ser pintada
    float raio = mouseX*50.0/400.0; // Calculo para definir o raio do circulo
    int cor = (int)(mouseY*(255.0/400.0));// Conversão (do resultado do calculo para a cor) para um inteiro  
    
    
    for (int i =0; i< circulosX.size(); i++){// laço de repetição para cade elemento de circulosX
        ellipseMode(CENTER);// Definir que as cordenadas passadas para o metodo ellipse será para o centro do desenhoda elipse
        fill(cor);// Definição da cor de preenchimento para o valor da variavel 'cor'
        ellipse(circulosX.get(i),circulosY.get(i),raio,raio);// Desenho da ellipse cor as cordenadas de posição 'i' das arraylists com raio igual ao valor da variável raio
    }

}
void mouseReleased(){
    circulosX.add(mouseX);// Adicionar o valor x da cordenada do mouse para o arraylist circulosY
    circulosY.add(mouseY);// Adicionar o valor y da cordenada do mouse para o arraylist circulosY
}
