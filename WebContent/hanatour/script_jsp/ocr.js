

let ocrInputID;

function progressUpdate(packet){
    var log = document.getElementById('log');

    if(log.firstChild && log.firstChild.status === packet.status){
        if('progress' in packet){
            var progress = log.firstChild.querySelector('progress')
            progress.value = packet.progress
        }
    }else{
        var line = document.createElement('div');
        line.status = packet.status;
        var status = document.createElement('div')
        status.className = 'status'
        status.appendChild(document.createTextNode(packet.status))
        line.appendChild(status)

        if('progress' in packet){
            var progress = document.createElement('progress')
            progress.value = packet.progress
            progress.max = 1
            line.appendChild(progress)
        }

        if(packet.status == 'done'){
            var pre = document.createElement('pre')
            pre.appendChild(document.createTextNode(packet.data.data.text))
            line.innerHTML = ''
            line.appendChild(pre)
            getPre(pre);            
        }

        log.insertBefore(line, log.firstChild)
    }
}

async function recognizeFile(file) {
    document.querySelector("#log").innerHTML = ''

    const lang = document.querySelector('#langsel').value
    const data = await Tesseract.recognize(file, lang, {
        logger: progressUpdate,
        workerPath: 'https://unpkg.com/tesseract.js@v4.0.1/dist/worker.min.js',
        langPath: 'https://tessdata.projectnaptha.com/4.0.0',
        corePath: 'https://unpkg.com/tesseract.js-core@v4.0.1/tesseract-core.wasm.js',
    });
    progressUpdate({ status: 'done', data });
}



let ocrPre;
let passportNumber;

function getPre(pre) {

    ocrPre = pre.innerText;

    // M + 숫자3자리 + 알파벳1자리 + 숫자4자리 :  ^M\d{3}[A-Z]\d{4}$ 
    // 여권타입 알파벳 1자리 + 숫자8자리 : ^(M|S|R|O|D)\d{8}$
    
    let ocrRegex = /\s*M\d{3}[A-Z]\d{4}\s*|\s*M\d{3}[A-Z]\d{4}$|\s*(M|S|R|O|D)\d{8}\s*/;
    let ocrMatch = ocrPre.match(ocrRegex);
    
    passportNumber = ocrMatch ? ocrMatch[0] : null;

    let passportNumberInput = document.querySelector("#passport_number1");
    passportNumberInput.value = passportNumber;
}





$(function() {

    // let inputFileID = "#passport_ocr_id3";
    // passportNumber = "123"
    // inputPassportNumber(inputFileID, passportNumber);

    // function inputPassportNumber(inputFileID, passportNumber) {
    //     $(inputFileID).closest(".airline_passenger_info").find(".airline_passenger_info_body5").children().eq(1).children().eq(0).val(passportNumber);
    // }



})






