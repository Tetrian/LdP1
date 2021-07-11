package banca.rapporti;

import banca.dominio.*;

public class RapportoClienti {

  public void generaRapporto() {

    Banca   banca = Banca.getBanca();
    Cliente cliente;

    System.out.println("\t\t\tRAPPORTO CLIENTI");
    System.out.println("\t\t\t================");

    for (int i=0; i < banca.getNumClienti(); i++) {
      cliente = banca.getCliente(i);

      System.out.println();
      System.out.println("Cliente: "
             + cliente.getNome() + " "
             + cliente.getCognome());

      for (int j=0; j < cliente.getNumConti(); j++) {
        Conto conto = cliente.getConto(j);
        String tipo_conto = "";

        // Determina il tipo di conto
        if ( conto instanceof LibrettoRisparmio ) {
          tipo_conto = "libretto di risparmio";
        }
        else if ( conto instanceof ContoCorrente ) {
          tipo_conto = "conto corrente";
        }
        else {
          tipo_conto = "conto sconosciuto";
        }

        // Stampa il saldo del conto j-esimo
        System.out.println("\tSaldo del " + tipo_conto + ": "
             + conto.getSaldo());
      }
    }
  }

}
