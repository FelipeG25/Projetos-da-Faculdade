var quebrada = false;

function mudaLampada(tipo) {
    if (tipo == 1) {
        arquivo = "img/lpAcessa.png";
    }
    if (tipo == 2) {
        arquivo = "img/lpApagada.png";
    }
    if (tipo == 3) {
        arquivo = "img/lpQuebrada.png";
    }
    if (!quebrada) {
        document.getElementById("lamp").src = arquivo;
        if (tipo == 3) {
            quebrada = true;
        }
    }
}

function reiniciar() {
    document.location.reload(true);
}