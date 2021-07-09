
/* ************************************************************************** */

package banca;

/* ************************************************************************** */

public class Conto {

  // Attributi
  private double saldo;

  /* ************************************************************************ */

  // Costruttore specifico
  public Conto(double val) {
    saldo = val;
  }

  /* ************************************************************************ */

  // Restituisce il valore del saldo corrente
  public double getSaldo() {
    return saldo;
  }
  // Aggiunge una somma al saldo corrente
  public void deposita(double val) {
    saldo = saldo + val;
  }

  // Sottrae una somma dal saldo corrente
  public void preleva(double val) {
    saldo = saldo - val;
  }

  /* ************************************************************************ */

}

/* ************************************************************************** */
