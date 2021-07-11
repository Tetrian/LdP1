
/* ************************************************************************** */

package banca.dominio;

/* ************************************************************************** */

public class ContoCorrente extends Conto {

  // Attributi
  private double scoperto; // permette il conto negativo

  /* ************************************************************************ */

  // Costruttore specifico (senza scoperto)
  public ContoCorrente(double saldo) {
    super(saldo);
    scoperto = 0;
  }

  // Costruttore specifico
  public ContoCorrente(double saldo, double scoperto) {
    super(saldo);
    this.scoperto = scoperto;
  }

  /* ************************************************************************ */

  // Override di metodo preleva
  public boolean preleva(double somma) {
    if (somma <= saldo + scoperto) {
      saldo -= somma; // modifica il saldo fino ad un minimo valore
      return true;    // negativo di modulo uguale allo scoperto
    }
    else {
      return false;
    }
  }

}

/* ************************************************************************** */
