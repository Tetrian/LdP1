
/* ************************************************************************** */

// In questo esercizio si vuole mostrare l’uso dell’incapsulazione.
// Si dovrà creare una classe Veicolo che permetta al programma di funzionare.

import pack_vec.Veicolo;

/* ************************************************************************** */

public class TestVeicolo {
	public static void main(String[] args) {
		// Crea un veicolo che possa caricare fino a 10000 kg
		System.out.println("Creazione di un veicolo con 10000 kg di carico massimo.");
		Veicolo veicolo = new Veicolo(10000.0);

		// Aggiungi alcune scatole
		System.out.println("Aggiunta della scatola #1 (500kg) : " + veicolo.addScatola(500.0));
		System.out.println("Aggiunta della scatola #2 (250kg) : " + veicolo.addScatola(250.0));
		System.out.println("Aggiunta della scatola #3 (5000kg) : " + veicolo.addScatola(5000.0));
		System.out.println("Aggiunta della scatola #4 (4000kg) : " + veicolo.addScatola(4000.0));
		System.out.println("Aggiunta della scatola #5 (300kg) : " + veicolo.addScatola(300.0));

		// Stampa il carico finale del veicolo
		System.out.println("Carico finale del veicolo: " + veicolo.getCarico() + " kg");
	}
}

/* ************************************************************************** */
