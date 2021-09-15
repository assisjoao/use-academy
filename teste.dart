class Comer {
	void comer(){
		print("Comeu através da classe Comer");
	}
}

class Animal extends Comer {
	@override
	void comer() {
		print("Comeu através da classe Animal");
	}
}

class Pessoa extends Comer {
	@override
	void comer() {
		super.comer(); // Saída será "Comeu através da classe Comer"
	}
}