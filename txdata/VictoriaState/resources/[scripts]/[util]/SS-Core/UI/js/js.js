var PRODUCTS = null;

function populateScripts(products) {
    $("#bottom-section").html("");
    const bottomSection = document.getElementById('bottom-section');
if (products) {

	Object.entries(products).forEach(([key, value]) => {
        
        const scriptContainer = document.createElement('div');
        scriptContainer.classList.add('script-container');

        const scriptName = document.createElement('div');
        scriptName.classList.add('script-name');
        scriptName.innerText = value.script +" - (v"+ value.version+")";

        // Element pentru status
        const scriptStatus = document.createElement('div');
        scriptStatus.classList.add('script-status');
        scriptStatus.innerText = '';  // Inițial gol

        const scriptButtons = document.createElement('div');
        scriptButtons.classList.add('script-buttons');

		updateScriptStatus(scriptStatus, value.status);
        // Adaugă butoanele în containerul lor
        //scriptButtons.appendChild(startButton);
        //scriptButtons.appendChild(stopButton);
        //scriptButtons.appendChild(restartButton);

        // Adaugă numele scriptului, statusul și butoanele în containerul principal
        scriptContainer.appendChild(scriptName);
        scriptContainer.appendChild(scriptStatus);  // Adăugăm statusul între nume și butoane
        scriptContainer.appendChild(scriptButtons);

        // Adaugă containerul principal în secțiunea inferioară scrollable
        bottomSection.appendChild(scriptContainer);
    });
}
}

// Funcție pentru a actualiza statusul
function updateScriptStatus(statusElement, initialMessage) {
    if (initialMessage) {
        statusElement.innerText = initialMessage;

        // Verifică dacă mesajul începe cu "OK"
        if (initialMessage.startsWith("OK")) {
            statusElement.style.color = "green"; // Verde pentru status OK
        } else {
            statusElement.style.color = "red"; // Roșu pentru celelalte mesaje
        }
    }
}

$(document).ready(function(){
	window.addEventListener('message', function( event ) {
        var action = event.data.action;
        var products = event.data.products;
        var online = event.data.online;
		if (action == 'open') {
            PRODUCTS = products
			updateStatus(online, products);
            populateScripts(products);
            $("#MAIN").show();
		}
	})
})

function updateStatus(isOnline, products) {
    const statusIndicator = document.getElementById('status-indicator');
    const statusText = document.getElementById('status-text');
    
    if (isOnline) {
        statusIndicator.style.backgroundColor = 'green';  // Cambia il colore in verde
        
        // Verifica se products è un oggetto e conta le sue chiavi
        if (products && typeof products === 'object') {
            const numberOfProducts = Object.keys(products).length;
            statusText.innerText = `ONLINE - ${numberOfProducts} SS Assets are available!`;
        } else {
            statusText.innerText = 'ONLINE - No products available!';
        }
    } else {
        statusIndicator.style.backgroundColor = 'red';  // Cambia il colore in rosso
        statusText.innerText = 'Offline - You are not connected!';
    }
}

$(document).keyup(function(e) {
    if (e.keyCode == 27) {
		$("#bottom-section").html("");
		$("#MAIN").hide();
		$.post('https://SS-Core/escape', JSON.stringify({}));
    }
});

// Filtrare scripturi în funcție de căutare
document.getElementById('search-input').addEventListener('input', function() {
    const searchQuery = this.value.toLowerCase();

    // Transformăm obiectul PRODUCTS într-un array de [key, value] și aplicăm filtrarea
    const filteredScripts = Object.entries(PRODUCTS).filter(([key, value]) =>
        key.toLowerCase().includes(searchQuery) ||   // Verifică dacă cheie conține termenul căutat
        value.script.toLowerCase().includes(searchQuery) ||   // Verifică numele scriptului
        value.version.toLowerCase().includes(searchQuery)     // Verifică versiunea
    );

    // Afișează scripturile filtrate
    populateScripts(Object.fromEntries(filteredScripts));  // Reconstruiește un obiect și trece-l la populateScripts
});

/* Afișarea ferestrei de ajutor când se apasă pe butonul "?"
const helpButton = document.getElementById('help-button');
const closehelp = document.getElementById('help-button');
if (helpButton && closehelp) {
    document.getElementById('help-button').addEventListener('click', function() {
        document.getElementById('help-window').style.display = 'block';
        document.getElementById('MAIN').style.display = 'none';  // Ascunde MAIN cât timp fereastra Help e deschisă
    });

    // Închiderea ferestrei de ajutor și revenirea la pagina principală
    document.getElementById('close-help').addEventListener('click', function() {
        document.getElementById('help-window').style.display = 'none';
        document.getElementById('MAIN').style.display = 'block';  // Afișează din nou MAIN
    });
}*/