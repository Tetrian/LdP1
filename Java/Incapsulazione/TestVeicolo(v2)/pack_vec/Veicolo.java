
package pack_vec;

public class Veicolo {
  private double carico = 0;

  public Veicolo(double crc) {
    carico = crc;
  }

  public double addScatola(double sct) {
    carico = carico + sct;
    return carico;
  }

  public double getCarico() {
    return carico;
  }
}
