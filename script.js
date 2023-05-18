//Made by Di Grigoli Francesco


let intervalId; // Variabile per memorizzare l'ID dell'intervallo
let startTime; // Variabile per memorizzare il timestamp di inizio del timer
let tempoAvviato = false; // Variabile per tenere traccia dello stato del timer

function resettaGioco(valoreIniziale) {
  let inputElement = document.getElementById('testid');
  inputElement.value = valoreIniziale;

  // Interrompi il timer se è attivo
  clearInterval(intervalId);

  // Reimposta il timer
  startTime = Math.floor(Date.now() / 1000);
  document.getElementById("tempo").textContent = 'Tempo trascorso: 0 secondi';

  // Imposta tempoAvviato su false
  tempoAvviato = false;
}

function avviaTempo() {
  console.log('Inizio misurazione del tempo...');

  startTime = Math.floor(Date.now() / 1000);

  intervalId = setInterval(function() {
    let currentTime = Math.floor(Date.now() / 1000);
    let elapsedTime = currentTime - startTime;

    document.getElementById("tempo").textContent = 'Tempo trascorso: ' + elapsedTime + ' secondi';

  }, 1000);
}

function myGames() {
  if (!tempoAvviato) {
    avviaTempo();
    tempoAvviato = true;
  }
  incrementaInput();

}


//Incrementa i soldi PROVA
function incrementaInput() {
  let inputElement = document.getElementById('testid');
  let currentValue = parseInt(inputElement.value);
  let newValue = currentValue + 1;
  inputElement.value = newValue;
}

//Questo mi serve se cambio pagina, non mi ricompare il div cookies
let click = false;
if(click == true){
  div.style.display = "block";
}


//Funzione per togliere la visibilità di del div cookies
function togliVisibilita(click) {
  let div = document.getElementById("cookies");
  if (div.style.display === "none") {
    div.style.display = "block"; // oppure "inline", "inline-block", a seconda delle tue esigenze
  } else {
    div.style.display = "none";
  }
  click = true;
  console.log(click);
}

//Funzione per tornare indietro di pagina
function goBack() {
  window.history.back();
}


