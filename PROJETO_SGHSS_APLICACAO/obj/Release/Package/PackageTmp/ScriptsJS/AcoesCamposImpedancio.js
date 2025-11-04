function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (
        (charCode >= 48 && charCode <= 57) || // Números de 0 a 9
        (charCode === 44 && evt.target.value.indexOf(',') === -1) || // Vírgula (,) permitida somente se não houver outra vírgula no campo
        charCode === 43 || // Sinal de mais (+)
        charCode === 45 // Sinal de menos (-)
    ) {
        return true;
    }
    return false;
}

function validateInput(input) {
    var value = input.value;
    if (!/\d/.test(value)) {
        //Primeira deglutição
        document.getElementById('errorMsgODp').style.display = 'block';
        document.getElementById('errorMsgODc').style.display = 'block';
        document.getElementById('errorMsgODf').style.display = 'block';
        document.getElementById('errorMsgOEp').style.display = 'block';
        document.getElementById('errorMsgOEc').style.display = 'block';
        document.getElementById('errorMsgOEf').style.display = 'block';
        document.getElementById('errorMsgODgrad').style.display = 'block';
        document.getElementById('errorMsgODvol').style.display = 'block';
        document.getElementById('errorMsgODtom').style.display = 'block';
        document.getElementById('errorMsgOEgrad').style.display = 'block';
        document.getElementById('errorMsgOEvol').style.display = 'block';
        document.getElementById('errorMsgOEtom').style.display = 'block';

        //Segunda deglutição
        document.getElementById('errorMsgODpSeg').style.display = 'block';
        document.getElementById('errorMsgODcSeg').style.display = 'block';
        document.getElementById('errorMsgODfSeg').style.display = 'block';
        document.getElementById('errorMsgOEpSeg').style.display = 'block';
        document.getElementById('errorMsgOEcSeg').style.display = 'block';
        document.getElementById('errorMsgOEfSeg').style.display = 'block';

        //Terceira deglutição
        document.getElementById('errorMsgODpTer').style.display = 'block';
        document.getElementById('errorMsgODcTer').style.display = 'block';
        document.getElementById('errorMsgODfTer').style.display = 'block';
        document.getElementById('errorMsgOEpTer').style.display = 'block';
        document.getElementById('errorMsgOEcTer').style.display = 'block';
        document.getElementById('errorMsgOEfTer').style.display = 'block';

        //para curva tipo D
        document.getElementById('errorMsgPressaoPico_1od').style.display = 'block';
        document.getElementById('errorMsgComplPico_1od').style.display = 'block';
        document.getElementById('errorMsgPressaoPontoMedioCurvaDod').style.display = 'block';
        document.getElementById('errorMsgComplPontoMedioCurvaDod').style.display = 'block';
        document.getElementById('errorMsgPressaoPico_2od').style.display = 'block';
        document.getElementById('errorMsgComplPico_2od').style.display = 'block';
        document.getElementById('errorMsgFechaCurvaDod').style.display = 'block';

        document.getElementById('errorMsgPressaoPico_1oe').style.display = 'block';
        document.getElementById('errorMsgComplPico_1oe').style.display = 'block';
        document.getElementById('errorMsgPressaoPontoMedioCurvaDoe').style.display = 'block';
        document.getElementById('errorMsgComplPontoMedioCurvaDoe').style.display = 'block';
        document.getElementById('errorMsgPressaoPico_2oe').style.display = 'block';
        document.getElementById('errorMsgComplPico_2oe').style.display = 'block';
        document.getElementById('errorMsgFechaCurvaDoe').style.display = 'block';

    } else {
        //Primeira deglutição
        document.getElementById('errorMsgODp').style.display = 'none';
        document.getElementById('errorMsgODc').style.display = 'none';
        document.getElementById('errorMsgODf').style.display = 'none';
        document.getElementById('errorMsgOEp').style.display = 'none';
        document.getElementById('errorMsgOEc').style.display = 'none';
        document.getElementById('errorMsgOEf').style.display = 'none';
        document.getElementById('errorMsgODgrad').style.display = 'none';
        document.getElementById('errorMsgODvol').style.display = 'none';
        document.getElementById('errorMsgODtom').style.display = 'none';
        document.getElementById('errorMsgOEgrad').style.display = 'none';
        document.getElementById('errorMsgOEvol').style.display = 'none';
        document.getElementById('errorMsgOEtom').style.display = 'none';

        //Segunda deglutição
        document.getElementById('errorMsgODpSeg').style.display = 'none';
        document.getElementById('errorMsgODcSeg').style.display = 'none';
        document.getElementById('errorMsgODfSeg').style.display = 'none';
        document.getElementById('errorMsgOEpSeg').style.display = 'none';
        document.getElementById('errorMsgOEcSeg').style.display = 'none';
        document.getElementById('errorMsgOEfSeg').style.display = 'none';

        //Terceira deglutição
        document.getElementById('errorMsgODpTer').style.display = 'none';
        document.getElementById('errorMsgODcTer').style.display = 'none';
        document.getElementById('errorMsgODfTer').style.display = 'none';
        document.getElementById('errorMsgOEpTer').style.display = 'none';
        document.getElementById('errorMsgOEcTer').style.display = 'none';
        document.getElementById('errorMsgOEfTer').style.display = 'none';

        //para curva tipo D
        document.getElementById('errorMsgPressaoPico_1od').style.display = 'none';
        document.getElementById('errorMsgComplPico_1od').style.display = 'none';
        document.getElementById('errorMsgPressaoPontoMedioCurvaDod').style.display = 'none';
        document.getElementById('errorMsgComplPontoMedioCurvaDod').style.display = 'none';
        document.getElementById('errorMsgPressaoPico_2od').style.display = 'none';
        document.getElementById('errorMsgComplPico_2od').style.display = 'none';
        document.getElementById('errorMsgFechaCurvaDod').style.display = 'none';

        document.getElementById('errorMsgPressaoPico_1oe').style.display = 'none';
        document.getElementById('errorMsgComplPico_1oe').style.display = 'none';
        document.getElementById('errorMsgPressaoPontoMedioCurvaDoe').style.display = 'none';
        document.getElementById('errorMsgComplPontoMedioCurvaDoe').style.display = 'none';
        document.getElementById('errorMsgPressaoPico_2oe').style.display = 'none';
        document.getElementById('errorMsgComplPico_2oe').style.display = 'none';
        document.getElementById('errorMsgFechaCurvaDoe').style.display = 'none';
    }
}