
/* ************************************************************************** */

// Questa classe contiene il programma per provare le classi del pacchetto banca.

/* ************************************************************************** */

import banca.*;

/* ************************************************************************** */

// Test per Classe conto

public class TestBanca {

  public static void main(String[] args) {
    Conto conto;

    // Crea un conto con saldo 500.00
    System.out.println("Creazione di un conto con un saldo di 500.00");
    conto = new Conto(500.00);

    System.out.println("Prelievo 150.00");
    conto.preleva(150.00);

    System.out.println("Deposito 22.50");
    conto.deposita(22.50);

    System.out.println("Prelievo 47.62");
    conto.preleva(47.62);

    // Stampa il saldo finale
    System.out.println("Il conto ha attualmente un saldo di " + conto.getSaldo());
  }
}

/* ************************************************************************** */
