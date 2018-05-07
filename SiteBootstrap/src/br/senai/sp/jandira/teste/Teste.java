package br.senai.sp.jandira.teste;

public class Teste {

	public static void main(String[] args) {
		int registros = 15;
		int paginas = registros / 3;
		
		if (registros % 3 == 0){
			paginas = registros / 3;
		} else {
			paginas = Math.abs(registros / 3) + 1;
		}

		System.out.println("Páginas: " + paginas);
		
	}

}
