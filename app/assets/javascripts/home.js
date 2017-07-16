$(document).ready(function(){
var chats=document.getElementById("chats")






inputBox=document.getElementById("tweet_content");
spanTag=document.getElementById("span_tag");
submitButton=document.getElementById("submit_to");
inputBox.addEventListener("input",function(){
spanTag.innerHTML=inputBox.textLength;
if (inputBox.textLength>140) {
spanTag.style.color="red";
submitButton.disabled=true;
}
else{
 spanTag.style.color="black"; 
 submitButton.disabled=false;
}
});


});
