
/* ************************************************************************** */

import punto.MioPunto;

/* ************************************************************************** */

public class TestMioPunto {
  public static void main(String[] args) {

    // costruzione di due punti
    MioPunto inizio = new MioPunto();
    MioPunto fine = new MioPunto();

    // assegno coordinate
    inizio.x = 10;
    inizio.y = 10;
    fine.x = 20;
    fine.y = 30;

    // stampa dei punti senza usare il metodo toString
    System.out.println("Punto iniziale: [" + inizio.x + "," + inizio.y + "]");
    System.out.println("Punto finale:   [" + fine.x + "," + fine.y + "]" + "\n");

    // dichiaro e assegno un altro riferimento a fine;
    MioPunto altro = fine;

    // stampo i punti altro e fine
    System.out.println("Un altro punto: " + altro.toString());
    System.out.println("Punto finale:   " + fine.toString() + "\n");

    // cambio cordinate di altro
    altro.x = 12;
    altro.y = 23;

    // ristampo altro e fine
    System.out.println("Un altro punto: " + altro.toString());
    System.out.println("Punto finale:   " + fine.toString() + "\n");

  }
}

/* ************************************************************************** */
