// Questão: A cada clique do mouse pintar um ponto na tela, e a cada dois cliques desenhar uma linha entre os dois ultimos
// pontos.

ArrayList<Integer> linhaX = new ArrayList<Integer>();// Declaração da ArrayList que manterá os valores dos Xs *
ArrayList<Integer> linhaY = new ArrayList<Integer>();//Declaração da ArrayList que manterá os valores dos Ys

void setup(){
    size(400,400);// Tamanho da tela
}    
void draw(){
    for (int i =0; i< linhaX.size(); i++){//Laço de repetição, instruções que serão repetidas para cada elemento da ArrayList **
        strokeWeight(5);// Grossura, em pixels, da das linhas
        point(linhaX.get(i),linhaY.get(i)); // Pintar um ponto nas cordenadas de mesma posição das Arraylists
    }
    if (linhaX.size()%2==0){// Se a divisão do número de elementos de linhaX por 2 tiver resto igual a zero, então:
        for (int i = 0; i< linhaX.size(); i+=2){// Laço de repetição que será executado em um número igual a metade do numero de elementos da ArrayList LinhaX
            strokeWeight(1);// Definindo a grossura da linha
            line(linhaX.get(i),linhaY.get(i),linhaX.get(i+1),linhaY.get(i+1));// Pintando uma linha entre a  atual e a próxima cordenada.
        }
    }
}
void mouseReleased(){// Método que é chamado quando o um botão do mouse deixa de ser pressionado
    linhaX.add(mouseX);// adicionando as cordenadas X do mouse a ArrayList
    linhaY.add(mouseY);// adicionando as cordenadas Y do mouse a ArrayList
}

//** variável i = 0 que enquanto for menor que o valor do tamanho de elementos do ArrayList linhaX
// vai ter seu 1 incrementado ao seu valor a cada vez que as instruções forem repetidas
// dessa forma executando as instruções do for para cada elemento da ArrayList

//* Utilizei Arraylist pois pareceu mais simples de adicionar elementos ao fim da ArrayList(Ex.: linhaX.add(mouseX)) que de uma lista normal (?)
