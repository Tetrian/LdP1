
/* ************************************************************************** */

// Questa classe contiene il programma per provare le classi del pacchetto banca.

/* ************************************************************************** */

import banca.dominio.*;
// import banca.rapporti.RapportoClienti; // commenta per test antecedenti al singoletto

/* ************************************************************************** */

// // Test per classe Conto versione 1
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

// // Test per classe Cliente
//
// public class TestBanca {
//
//   public static void main(String[] args) {
//     Conto conto;
//     Cliente cliente;
//
//     // Crea un conto con saldo 500.00
//     System.out.println("Creazione del cliente Mario Rossi");
//     cliente = new Cliente("Mario", "Rossi");
//     System.out.println("Creazione del suo conto con un saldo di 500.00");
//     cliente.setConto(new Conto(500.00));
//     conto = cliente.getConto();
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
//     System.out.println("Il cliente " + cliente.getNome() + " " + cliente.getCognome() + " ha un saldo di " + conto.getSaldo());
//   }
// }

/* ************************************************************************** */

// // Test per classe Conto versione 2 (modifica metodi deposita e preleva)
//
// public class TestBanca {
//
//   public static void main(String[] args) {
//     Conto conto;
//     Cliente cliente;
//
//     // Crea un conto con saldo 500.00
//     System.out.println("Creazione del cliente Mario Rossi");
//     cliente = new Cliente("Mario", "Rossi");
//     System.out.println("Creazione del suo conto con un saldo di 500.00");
//     cliente.setConto(new Conto(500.00));
//     conto = cliente.getConto();
//
//     System.out.println("Prelievo 150.00: " + conto.preleva(150.00));
//     System.out.println("Deposito  22.50: " + conto.deposita(22.50));
//     System.out.println("Prelievo  47.62: " + conto.preleva(47.62));
//     System.out.println("Prelievo 400.00: " + conto.preleva(400.00));
//
//     // Stampa il saldo finale
//     System.out.println("Il cliente " + cliente.getNome() + " " + cliente.getCognome() + " ha un saldo di " + conto.getSaldo());
//   }
// }

/* ************************************************************************** */

// // Test per classe Banca (uso di array per molteplicità)
//
// public class TestBanca {
//
//   public static void main(String[] args) {
//     Banca banca = new Banca();
//
//     banca.addCliente("Carla", "Rossi");
//     banca.addCliente("Anna", "Bruni");
//     banca.addCliente("Raul", "Falchi");
//     banca.addCliente("Vale", "Bova");
//
//     for (int i=0; i < banca.getNumClienti(); i++) {
//       Cliente cliente = banca.getCliente(i);
//
//       System.out.println("Cliente n. " + (i+1) + ": "
//         + cliente.getCognome() + " " + cliente.getNome());
//     }
//   }
// }

/* ************************************************************************** */

// Test per sottoclassi di Conto

public class TestBanca {

  public static void main(String[] args) {
    Banca banca = new Banca();
    Cliente cliente;
    Conto conto;

    // Creazione dei clienti e dei loro conti

    System.out.println("Creazione del cliente Carla Rossi.");
    banca.addCliente("Carla", "Rossi");
    cliente = banca.getCliente(0);
    System.out.println("Creazione del suo Libretto di Risparmio con saldo iniziale 500.00 e interesse 3%.");
    cliente.setConto(new LibrettoRisparmio(500.00, 0.03));

    System.out.println("Creazione del cliente Anna Bruni.");
    banca.addCliente("Anna", "Bruni");
    cliente = banca.getCliente(1);
    System.out.println("Creazione del suo Conto Corrente con saldo iniziale 500.00 e senza tolleranza di scoperto.");
    cliente.setConto(new ContoCorrente(500.00));

    System.out.println("Creazione del cliente Raul Falchi.");
    banca.addCliente("Raul", "Falchi");
    cliente = banca.getCliente(2);
    System.out.println("Creazione del suo Conto Corrente con saldo iniziale 500.00 e massimo scoperto 500.00.");
    cliente.setConto(new ContoCorrente(500.00, 500.00));

    System.out.println("Creazione del cliente Vale Bova.");
    banca.addCliente("Vale", "Bova");
    cliente = banca.getCliente(3);
    System.out.println("Vale condivide il conto di suo marito Raul.");
    cliente.setConto(banca.getCliente(2).getConto());

    System.out.println();

    // Dimostrazione dei comportamenti dei vari tipi di conto

    // Test di un Libretto Risparmio
    System.out.println("Test del Libretto Risparmio di Carla Rossi.");
    cliente = banca.getCliente(0);
    conto = cliente.getConto();
    // Esegui alcune transazioni
    System.out.println("Prelievo di 150.00: " + conto.preleva(150.00));
    System.out.println("Deposito di  22.50: " + conto.deposita(22.50));
    System.out.println("Prelievo di  47.62: " + conto.preleva(47.62));
    System.out.println("Prelievo di 400.00: " + conto.preleva(400.00));
    // Stampa il saldo finale
    System.out.println("Cliente " + cliente.getNome() + " " +
                       cliente.getCognome() + " ha un saldo di " +
                       conto.getSaldo());

    System.out.println();

    // Test di un Conto Corrente senza scoperto
    System.out.println("Test del Conto Corrente di Anna Bruni.");
    cliente = banca.getCliente(1);
    conto = cliente.getConto();
    // Esegui alcune transazioni
    System.out.println("Prelievo di 150.00: " + conto.preleva(150.00));
    System.out.println("Deposito di  22.50: " + conto.deposita(22.50));
    System.out.println("Prelievo di  47.62: " + conto.preleva(47.62));
    System.out.println("Prelievo di 400.00: " + conto.preleva(400.00));
    // Stampa il saldo finale
    System.out.println("Cliente " + cliente.getNome() + " " +
                       cliente.getCognome() + " ha un saldo di " +
                       conto.getSaldo());

    System.out.println();

    // Test di un Conto Corrente con massimo scoperto
    System.out.println("Test del Conto Corrente di Raul Falchi.");
    cliente = banca.getCliente(2);
    conto = cliente.getConto();
    // Esegui alcune transazioni
    System.out.println("Prelievo di 150.00: " + conto.preleva(150.00));
    System.out.println("Deposito di  22.50: " + conto.deposita(22.50));
    System.out.println("Prelievo di  47.62: " + conto.preleva(47.62));
    System.out.println("Prelievo di 400.00: " + conto.preleva(400.00));
    // Stampa il saldo finale
    System.out.println("Cliente " + cliente.getNome() + " " +
                       cliente.getCognome() + " ha un saldo di " +
                       conto.getSaldo());

    System.out.println();

    // Test di un Conto Corrente con massimo scoperto
    System.out.println("Test del ContoCorrente di Vale Bova.");
    cliente = banca.getCliente(3);
    conto = cliente.getConto();
    // Esegui alcune transazioni
    System.out.println("Deposito di 150.00: " + conto.deposita(150.00));
    System.out.println("Prelievo di 750.00: " + conto.preleva(750.00));
    // Stampa il saldo finale
    System.out.println("Cliente " + cliente.getNome() + " " +
                       cliente.getCognome() + " ha un saldo di " +
                       conto.getSaldo());
  }
}

/* ************************************************************************** */

// // ESERCIZIO 12
//
// public class TestBanca {
//
//   public static void main(String[] args) {
//     Banca   banca = Banca.getBanca();
//     Cliente cliente;
//     RapportoClienti rapporto = new RapportoClienti();
//
//     // Crea alcuni clienti ed i loro conti
//     banca.addCliente("Carla", "Rossi");
//     cliente = banca.getCliente(0);
//     cliente.addConto(new LibrettoRisparmio(500.00, 0.05));
//     cliente.addConto(new ContoCorrente(200.00, 400.00));
//
//     banca.addCliente("Anna", "Bruni");
//     cliente = banca.getCliente(1);
//     cliente.addConto(new ContoCorrente(200.00));
//
//     banca.addCliente("Raul", "Falchi");
//     cliente = banca.getCliente(2);
//     cliente.addConto(new ContoCorrente(200.00));
//     cliente.addConto(new LibrettoRisparmio(1500.00, 0.05));
//
//     banca.addCliente("Vale", "Bova");
//     cliente = banca.getCliente(3);
//     cliente.addConto(banca.getCliente(2).getConto(0));
//     cliente.addConto(new LibrettoRisparmio(150.00, 0.05));
//
//     // Generara un rapporto
//     rapporto.generaRapporto();
//   }
// }

/* ************************************************************************** */
