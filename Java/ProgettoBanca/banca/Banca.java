
/* ************************************************************************** */

package banca;

/* ************************************************************************** */

public class Banca {

  // Attributi
  private static int MAX_CLIENTI = 10;
  private int numClienti = 0;
  private Cliente [] clienti;

  /* ************************************************************************ */

  // Defualt constructor
  public Banca() {
    clienti = new Cliente [MAX_CLIENTI];
  }

  // Aggiunge un cliente alla Banca
  public void addCliente(String nome, String cognome) {
    clienti[numClienti++] = new Cliente(nome, cognome);
  }

  // Restitusce i dati di un determinato Cliente
  public Cliente getCliente(int indice) {
    return clienti[indice];
  }

  // Restituisce il numero di clienti attuali
  public int getNumClienti() {
    return numClienti;
  }

  /* ************************************************************************ */

}

/* ************************************************************************** */
