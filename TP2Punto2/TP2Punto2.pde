//Punto 2
// Declaración de variables
ArrayList<Integer> results = new ArrayList<>(); // Lista para almacenar los resultados
Dice dice; // Objeto dado D6 único

// Clase abstracta GameObject
abstract class GameObject {
    abstract void display();
}

// Clase Dice que hereda de GameObject
class Dice extends GameObject {
    int dado;

    Dice() {
        roll(); // Inicializa el dado lanzándolo
    }

    void roll() {
        // Genera un número aleatorio entre 1 y 6
        dado = (int) random(1, 7);
    }

    void display() {
        // Muestra el dado grande en el centro de la pantalla
        int size = 200; // Tamaño del dado grande
        int x = (width - size) / 2; // Posición x del dado (centrado)
        int y = (height - size) / 2; // Posición y del dado (centrado)

        // Establece el color naranja para el dado
        fill(255, 165, 0); // Color naranja
        rect(x, y, size, size); // Dibuja el dado

        // Dibuja los puntos del dado según su valor
        fill(0); // Color negro para los puntos
        int dotRadius = 25; // Radio de los puntos
        
        // Define las posiciones de los puntos dentro del dado
        int[][] dotPositions = {
            {x + size / 2, y + size / 2}, // Centro del dado
            {x + size / 4, y + size / 4}, // Arriba a la izquierda
            {x + size * 3 / 4, y + size * 3 / 4}, // Abajo a la derecha
            {x + size / 4, y + size * 3 / 4}, // Abajo a la izquierda
            {x + size * 3 / 4, y + size / 4}, // Arriba a la derecha
            {x + size / 4, y + size / 2}, // Izquierda del centro
            {x + size * 3 / 4, y + size / 2}, // Derecha del centro
        };

        // Dibuja los puntos basándose en el valor del dado
        switch (dado) {
            case 1:
                ellipse(dotPositions[0][0], dotPositions[0][1], dotRadius, dotRadius);
                break;
            case 2:
                ellipse(dotPositions[1][0], dotPositions[1][1], dotRadius, dotRadius);
                ellipse(dotPositions[2][0], dotPositions[2][1], dotRadius, dotRadius);
                break;
            case 3:
                ellipse(dotPositions[1][0], dotPositions[1][1], dotRadius, dotRadius);
                ellipse(dotPositions[0][0], dotPositions[0][1], dotRadius, dotRadius);
                ellipse(dotPositions[2][0], dotPositions[2][1], dotRadius, dotRadius);
                break;
            case 4:
                ellipse(dotPositions[1][0], dotPositions[1][1], dotRadius, dotRadius);
                ellipse(dotPositions[3][0], dotPositions[3][1], dotRadius, dotRadius);
                ellipse(dotPositions[2][0], dotPositions[2][1], dotRadius, dotRadius);
                ellipse(dotPositions[4][0], dotPositions[4][1], dotRadius, dotRadius);
                break;
            case 5:
                ellipse(dotPositions[1][0], dotPositions[1][1], dotRadius, dotRadius);
                ellipse(dotPositions[3][0], dotPositions[3][1], dotRadius, dotRadius);
                ellipse(dotPositions[0][0], dotPositions[0][1], dotRadius, dotRadius);
                ellipse(dotPositions[2][0], dotPositions[2][1], dotRadius, dotRadius);
                ellipse(dotPositions[4][0], dotPositions[4][1], dotRadius, dotRadius);
                break;
            case 6:
                ellipse(dotPositions[1][0], dotPositions[1][1], dotRadius, dotRadius);
                ellipse(dotPositions[5][0], dotPositions[5][1], dotRadius, dotRadius);
                ellipse(dotPositions[3][0], dotPositions[3][1], dotRadius, dotRadius);
                ellipse(dotPositions[6][0], dotPositions[6][1], dotRadius, dotRadius);
                ellipse(dotPositions[2][0], dotPositions[2][1], dotRadius, dotRadius);
                ellipse(dotPositions[4][0], dotPositions[4][1], dotRadius, dotRadius);
                break;
        }

        // Muestra el valor numérico en la esquina superior derecha de la pantalla
        fill(0); // Color negro para el texto
        textSize(20);
        text("Valor: " + dado, width - 100, 30);
    }
}

// Configura el tamaño de la ventana
void setup() {
    size(600, 500);
    // Establece el color de fondo celeste
    background(135, 206, 250); // Color celeste
    // Inicializa el dado único
    dice = new Dice();
}

// Dibuja en cada iteración del programa
void draw() {
    // No es necesario agregar nada aquí ya que la acción principal se realiza en keyPressed
}

// Maneja los eventos de los botones
void keyPressed() {
    // Si se presiona la tecla 'r', lanza el dado
    if (key == 'r') {
        // Lanza el dado único
        dice.roll();
        results.add(dice.dado); // Almacena el resultado
        
        // Limpia la ventana antes de mostrar el dado grande en el centro
        background(135, 206, 250); // Color de fondo celeste
        
        // Muestra el número lanzado y su valor
        println("Rolled a " + dice.dado);
        dice.display();
    }

    // Si se presiona la tecla 'q', muestra todos los resultados almacenados en la consola
    else if (key == 'q') {
        println("Todos los resultados de los lanzamientos:");
        for (int result : results) {
            println(result);
        }
    }
}
