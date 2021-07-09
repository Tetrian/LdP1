
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

  /* ************************************************************************ */

  // Versione 1 di deposita e preleva

  // // Aggiunge una somma al saldo corrente
  // public void deposita(double val) {
  //   saldo = saldo + val;
  // }
  //
  // // Sottrae una somma dal saldo corrente
  // public void preleva(double val) {
  //   saldo = saldo - val;
  // }

  /* ************************************************************************ */

  // Versione 2 di deposita e preleva

  // Aggiunge una somma al saldo corrente
  public boolean deposita(double val) {
    if (val > 0) {
      saldo = saldo + val;
      return true;
    }
    else {
      return false;
    }
  }

  // Sottrae una somma dal saldo corrente
  public boolean preleva(double val) {
    if (saldo >= val) {
      saldo = saldo - val;
      return true;
    }
    else {
      return false;
    }
  }

  /* ************************************************************************ */

}

/* ************************************************************************** */
