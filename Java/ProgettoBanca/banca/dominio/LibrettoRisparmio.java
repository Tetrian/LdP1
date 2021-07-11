
/* ************************************************************************** */

package banca.dominio;

/* ************************************************************************** */

public class LibrettoRisparmio extends Conto {

  // Attributi
  private double tassoInteresse;

  /* ************************************************************************ */

  // Costruttore specifico
  public LibrettoRisparmio(double saldo, double tasso) {
    super(saldo);
    tassoInteresse = tasso;
  }

  /* ************************************************************************ */

}

/* ************************************************************************** */
