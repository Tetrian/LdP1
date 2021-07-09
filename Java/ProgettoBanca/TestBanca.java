
/* ************************************************************************** */

// Questa classe contiene il programma per provare le classi del pacchetto banca.

/* ************************************************************************** */

import banca.*;

/* ************************************************************************** */

// // Test per classe Conto
//
// public class TestBanca {
//
//   public static void main(String[] args) {
//     Conto conto;
//
//     // Crea un conto con saldo 500.00
//     System.out.println("Creazione di un conto con un saldo di 500.00");
//     conto = new Conto(500.00);
//
//     System.out.println("Prelievo 150.00");
//     conto.preleva(150.00);
//
//     System.out.println("Deposito 22.50");
//     conto.deposita(22.50);
//
//     System.out.println("Prelievo 47.62");
//     conto.preleva(47.62);
//
//     // Stampa il saldo finale
//     System.out.println("Il conto ha attualmente un saldo di " + conto.getSaldo());
//   }
// }

/* ************************************************************************** */

// Test per classe Cliente

public class TestBanca {

  public static void main(String[] args) {
    Conto conto;
    Cliente cliente;

    // Crea un conto con saldo 500.00
    System.out.println("Creazione del cliente Mario Rossi");
    cliente = new Cliente("Mario", "Rossi");
    System.out.println("Creazione del suo conto con un saldo di 500.00");
    cliente.setConto(new Conto(500.00));
    conto = cliente.getConto();

    System.out.println("Prelievo 150.00");
    conto.preleva(150.00);

    System.out.println("Deposito 22.50");
    conto.deposita(22.50);

    System.out.println("Prelievo 47.62");
    conto.preleva(47.62);

    // Stampa il saldo finale
    System.out.println("Il cliente " + cliente.getNome() + " " + cliente.getCognome() + " ha un saldo di " + conto.getSaldo());
  }
}

/* ************************************************************************** */
