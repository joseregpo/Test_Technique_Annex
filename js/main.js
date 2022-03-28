const URL_API = "http://test_technique_annexx.test/php/api/read.php";
let LesGardes

const xhr = new XMLHttpRequest();
    xhr.open("get", URL_API);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const object = JSON.parse(xhr.response);
            LesGardes = object.body
            LesGardes.forEach(UneGarde => {
                ShowGarde(UneGarde);
            });
        };
    }
    xhr.send();
function ShowGarde(UneGarde){
    let ComptAdr ="";
    if(UneGarde.ComplementAdresse){
        ComptAdr = UneGarde.ComplementAdresse;
    }
    document.querySelector("#LesCards").innerHTML += "<article class=\"card\"><h5 class=\"card-header\">"+UneGarde.Nom+"</h5><section class=\"card-body\"><div class=\"card-text\"><div class=\"Adr\"><p>"+UneGarde.Rue+"</p><p>"+UneGarde.CodePostale+" "+UneGarde.Ville+"</p><p>"+ComptAdr+"</p></div><p>Tél. <span class=\"NroTel\">"+UneGarde.Telephone+"</span></p><p>Horaires des bureaux: "+UneGarde.Horaires+"</p></section></article>"
}

document.querySelector("#SearchGarde").addEventListener('keyup',function(k){
    const Keyword = document.querySelector("#SearchGarde").value;
    document.querySelector("#LesCards").innerHTML = ""
    LesGardes.forEach(UneGarde => {
        let ComptAdr ="";
        if(UneGarde.ComplementAdresse){
            ComptAdr = UneGarde.ComplementAdresse;
        }
        if (UneGarde.Nom.toLowerCase().includes(Keyword.toLowerCase()) || UneGarde.Rue.toLowerCase().includes(Keyword.toLowerCase()) || UneGarde.Ville.toLowerCase().includes(Keyword.toLowerCase()) || UneGarde.CodePostale.toLowerCase().includes(Keyword) || ComptAdr.toLowerCase().includes(Keyword.toLowerCase())){
            console.log(UneGarde)
            ShowGarde(UneGarde);
        }
    });
});
document.querySelector("#dropDownMenuLink").addEventListener("click",function(){
    if(document.querySelector("#MenuMobile").classList.contains('show')){
        document.querySelector("#MenuMobile").classList.remove('show');
    }else{
        document.querySelector("#MenuMobile").classList.add('show');
    }
});
