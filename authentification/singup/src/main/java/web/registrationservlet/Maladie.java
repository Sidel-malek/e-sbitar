package web.registrationservlet;

public class Maladie {
	
	    private String nom;
	    private String symptome;

	    public Maladie(String nom, String symptome) {
	        this.nom = nom;
	        this.symptome = symptome;
	    }

	    public String getNom() {
	        return nom;
	    }

	    public void setNom(String nom) {
	        this.nom = nom;
	    }

	    public String getSymptome() {
	        return symptome;
	    }

	    public void setSymptome(String symptome) {
	        this.symptome = symptome;
	    }
	

}
