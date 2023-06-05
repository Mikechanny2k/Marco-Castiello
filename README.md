# IL progetto del gioco Prato Crescita Fiore
"Prato crescita fiore" è un gioco di strategia per 1-4 giocatori, dove ognuno di loro ha un prato che deve curare e far fiorire il più possibile. Il gioco consiste nel coltivare il proprio prato, acquistando i semi, innaffiando le piante e prendendosi cura delle piante per farle crescere. Ogni volta che una pianta fiorisce, il giocatore guadagna punti in base al tipo di pianta. Il gioco finisce quando un giocatore raggiunge il punteggio massimo o quando non ci sono più semi disponibili.
I giocatori acquistano semi, innaffino il loro prato e prendano cura delle piante per farle crescere. Innaffiare il prato e prendersi cura delle piante sono azioni necessarie per far crescere le piante e farle fiorire, e quindi guadagnare punti. Piantare i semi è l'azione iniziale per iniziare a coltivare il proprio prato.
Per vincere, sarà quella di acquistare sempre i semi più costosi per ottenere piante con un punteggio più alto, o di coltivare una grande quantità di piante per aumentare le possibilità di ottenere punti.
Si perde se non si hanno più semi disponibili o si raggiunge il punteggio massimo.
Inoltre, non innaffiare il prato o non prendersi cura delle piante porta a perdere le piante e non guadagnare punti.
Nel gioco multigiocatore: in modalità singola, un giocatore può giocare da solo utilizzando un solo computer. In modalità multigiocatore, più giocatori possono giocare insieme utilizzando lo stesso computer o in modalità online, dove i giocatori possono connettersi e giocare insieme attraverso una connessione internet. In entrambi i casi, ciascun giocatore gestirà il proprio prato e cercherà di guadagnare il più possibile di punti.
In modalità online, verrà richiesto di creare un sistema di login o un account per accedere al gioco e giocare con gli amici.

La prima parte è stata sviluppata in 8GG con una piccola bozza del progetto. 


I file sono stati caricati dal (1 parte) "17 Maggio", con rispettivi file: Index.html, Style.css,shop.html e script.js per la parte client e la parte della Login e config in PHP per parte server, sono stati pubblicati nella seconda release (3GG) il 17 Maggio 2023
Il capo progetto ha pubblicato 2 file .png, e contengono il modello concettuale e logico del rispettivo ordine di valutazione, durata 1GG il 14 maggio 2023
Quello fisico, con SQL e richieste HTTP al lato Server, gli chiederà più tempo (max 8gg).

La release "finale" del gioco (Durata7GG) per le 4°Inf/a e per il capo progetto.
Questa release sarà compressa da un archivio (.zip), con tutto il progetto seguente:
HTML: index.html, shop.html, login.html e registrazione.html
CSS: Style.css
JS: script.js
PHP: Login, Registrazione Config, Dati Acquisto e LetturaDati
SQL: DATABASE/Prato_crescita_fiore

Gli sviluppatori hanno creato un sistema di shop e un sistema di come giocare con delle regole specifiche, rispettando quelle delle mie.
Documentazione in JSDOC 2GG 28_05_2023

/**
 * @typedef {Object} Giocatore
 * @property {string} nome - Il nome del giocatore.
 * @property {number} punteggio - Il punteggio attuale del giocatore.
 * @property {number} semiDisponibili - Il numero di semi disponibili per il giocatore.
 */
 
 /**
 * @typedef {Object} Pianta
 * @property {string} tipo - Il tipo di pianta.
 * @property {number} punteggio - Il punteggio associato al tipo di pianta.
 * @property {boolean} fiorita - Indica se la pianta è fiorita.
 */
 
 /**
 * @typedef {Object} Gioco
 * @property {number} punteggioMassimo - Il punteggio massimo che può essere raggiunto per vincere il gioco.
 * @property {number} semiDisponibili - Il numero totale di semi disponibili nel gioco.
 * @property {Array.<Giocatore>} giocatori - Gli oggetti dei giocatori partecipanti al gioco.
 * @property {Array.<Pianta>} piante - Gli oggetti delle piante disponibili nel gioco.
 * @property {boolean} loginRichiesto - Indica se è richiesto il login per giocare in modalità online.
 */
  
 /**
 * Acquista semi per un determinato giocatore.
 * @param {Gioco} gioco - L'oggetto del gioco corrente.
 * @param {Giocatore} giocatore - L'oggetto del giocatore che acquista i semi.
 * @param {number} quantita - La quantità di semi da acquistare.
 * @returns {boolean} Indica se l'acquisto dei semi è stato effettuato con successo.
 */
  /**
 * Effettua il login dell'utente per accedere alla modalità online del gioco.
 * @param {string} username - L'username dell'utente.
 * @param {string} password - La password dell'utente.
 * @returns {boolean} Indica se il login è stato effettuato con successo.
 */

  function Login(username, password) {
  
}

/**
 * il logout 
 */
function Logoutt() {

}

Questo progetto si concluderà, con scadenza il [1 Giugno 2023 23:59]

