
/* ************************************************************************** */

package banca.dominio;

/* ************************************************************************** */

public class Cliente /* Versione 2 */ {

  // Attributi
  private static int MAX_CONTI = 5;
  private int numConti;
  private Conto [] conti;
  private String nome;
  private String cognome;

  /* ************************************************************************ */

  // Costruttore specifico
  public Cliente(String nome, String cognome) {
    numConti = 0;
    conti = new Conto [MAX_CONTI];
    this.nome = nome;
    this.cognome = cognome;
  }

  /* ************************************************************************ */

  // Operazioni sul Conto del Cliente

  // Restituisce i dati di un determinato Conto
  public Conto getConto(int indice) {
    return conti[indice];
  }

  // Aggiunge un conto al Cliente
  public void addConto(Conto conto) {
    conti[numConti++] = conto;
  }

  // Restituisce il numero di conti attuali
  public int getNumConti() {
    return numConti;
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

// public class Cliente /* Versione 1 */ {
//
//   // Attributi
//   private Conto conto;
//   private String nome;
//   private String cognome;
//
//   /* ************************************************************************ */
//
//   // Costruttore specifico
//   public Cliente(String nom, String cogn) {
//     nome = nom;
//     cognome = cogn;
//   }
//
//   /* ************************************************************************ */
//
//   // Operazioni sul Conto del Cliente (un cliente ha un solo conto)
//
//   public void setConto(Conto new_conto) {
//     conto = new_conto;
//   }
//
//   public Conto getConto() {
//     return conto;
//   }
//
//   /* ************************************************************************ */
//
//   // Operazioni su Cliente
//
//   public String getNome() {
//     return nome;
//   }
//
//   public String getCognome() {
//     return cognome;
//   }
//
//   /* ************************************************************************ */
//
// }

/* ************************************************************************** */
