//Made by Di Grigoli Francesco

//Classe Padre Fiore
class Fiore{

    constructor(tempoGermogliazione,tempoAppassimento,tempoAnnaffiamento){
      this._tempoAnnaffiamento = tempoAnnaffiamento;
      this._tempoAppassimento = tempoAppassimento;
      this._tempoGermogliazione = tempoGermogliazione;
    }

    //get tempoAnnaffiamento
    get tempoAnnaffiamento(){
      return this.tempoAnnaffiamento;
    }
    
    //get tempoGermogliazione
    get tempoGermogliazione(){
      return this.tempoGermogliazione;
    }

    //get tempoAppassimento
    get tempoAppassimento(){
      return this.tempoAppassimento;
    }
}

class Margherita extends Fiore{

  constructor(tempoGermogliazione,tempoAppassimento,tempoAnnaffiamento){
    super(tempoGermogliazione,tempoAppassimento,tempoAnnaffiamento);
  }
}

//Prova
let Fiorellino = new Fiore(10000,50000,70000);
console.log(Fiorellino);
let Margheritina = new Margherita(20000,100000,60000);
console.log(Margheritina);



//Funzione per togliere la visibilità di del div cookies
function togliVisibilita() {
  let div = document.getElementById("cookies");
  if (div.style.display === "none") {
    div.style.display = "block"; // oppure "inline", "inline-block", a seconda delle tue esigenze
  } else {
    div.style.display = "none";
  }
}


function myGames(){
    let vettoreInventario = [];
    let vettoreFioriDisponivili = [];

    

}

