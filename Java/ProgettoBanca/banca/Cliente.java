
/* ************************************************************************** */

package banca;

/* ************************************************************************** */

public class Cliente {

  // Attributi
  private Conto conto;
  private String nome;
  private String cognome;

  /* ************************************************************************ */

  // Costruttore specifico
  public Cliente(String nom, String cogn) {
    nome = nom;
    cognome = cogn;
  }

  /* ************************************************************************ */

  // Operazioni sul Conto del Cliente (un cliente ha un solo conto)

  public void setConto(Conto new_conto) {
    conto = new_conto;
  }

  public Conto getConto() {
    return conto;
  }

  /* ************************************************************************ */

  // Operazioni su Cliente

  public String getNome() {
    return nome;
  }

  public String getCognome() {
    return cognome;
  }

  /* ************************************************************************ */
}

/* ************************************************************************** */
