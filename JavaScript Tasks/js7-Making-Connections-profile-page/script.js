// هذا الحل او الحل الذي تحت اصح ومختصر اكثر

// function Edit_Profile(element){
//     var NewName=document.querySelector('.name');
//     NewName.innerText='Fofo';    
// }


// function accept1(){
//     var a1=document.getElementById("card1");
//     a1.remove();
//     var b1=document.getElementById("badge");
//     var b2=document.getElementById("ReqNum");
//     b2.textContent--;
//     b1.textContent++;
// }

// function accept2(){
//     var a1=document.getElementById("card2");
//     a1.remove();
//     var b1=document.getElementById("badge");
//     var b2=document.getElementById("ReqNum");
//     b1.textContent++;
//     b2.textContent--;
    
// }

// function close1(){
//     var a1=document.getElementById("card1");
//     a1.remove();
//     var b1=document.getElementById("ReqNum");
//     b1.textContent--;
// }

// function close2(){
//     var a1=document.getElementById("card2");
//     a1.remove();
//     var b1=document.getElementById("ReqNum");
//     b1.textContent--;
// }

function Edit_Profile(elementId){
    var NewName=document.getElementById(elementId);
    NewName.innerText='Fofo';    
}
// مع elementId ما بلزم ""
// اما مع اسم الكلاس او اسم الاي دي بلزم
// بلزم نحدد(.) او (#) في التش تي ام ال و في الجافا ستريبت  querySelectorمع
//getElementById اما  مع ما بلزم نحدد

function AcceptAdd(elementId){
    var a1=document.getElementById(elementId);
    a1.remove();
    var b1=document.getElementById("badge");
    var b2=document.getElementById("ReqNum");
    b1.textContent++;
    b2.textContent--;   
}

function CancelAdd(elementId){
    var a1=document.getElementById(elementId);
    a1.remove();
    var b1=document.getElementById("ReqNum");
    b1.textContent--;
}