//#function post (){
//  const submit = document.getElementById("submit");
//  submit.addEventListener("click", (e) => {
//    e.preventDefault();
//    const form = document.getElementById("form");
//    const formData = new FormData(form);
//    const XHR = new XMLHttpRequest();
//    XHR.open("POST", "/rooms//messages", true);
//    XHR.responseType = "json";
//    XHR.send(formData);
//  });
//};

//window.addEventListener('load', post);


//パスに:room_idを含められないので、一旦jQueryのアプローチに変更。よってコメントアウト