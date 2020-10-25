var modal = document.querySelector(".modal");
var modalOverlay = document.querySelector(".modal-overlay");

var modalApply = document.querySelector("#modal-apply");
var openApply = document.querySelector("#open-apply");
var openApply2 = document.querySelector("#open-apply-2");
var closeApply = document.querySelector("#close-apply");

var modalNominate = document.querySelector("#modal-nominate");
var openNominate = document.querySelector("#open-nominate");
var closeNominate = document.querySelector("#close-nominate");

var modalIreland = document.querySelector("#modal-ireland");
var openIreland = document.querySelector("#open-ireland");
var closeIreland = document.querySelector("#close-ireland");

openApply.addEventListener("click", function() {
    modalApply.classList.toggle("closed");
    modalOverlay.classList.toggle("closed");
});

openApply2.addEventListener("click", function() {
    modalApply.classList.toggle("closed");
    modalOverlay.classList.toggle("closed");
});

closeApply.addEventListener("click", function() {
    modalApply.classList.toggle("closed");
    modalOverlay.classList.toggle("closed");
});

openNominate.addEventListener("click", function() {
    modalNominate.classList.toggle("closed");
    modalOverlay.classList.toggle("closed");
});

closeNominate.addEventListener("click", function() {
    modalNominate.classList.toggle("closed");
    modalOverlay.classList.toggle("closed");
});

openIreland.addEventListener("click", function() {
    modalIreland.classList.toggle("closed");
    modalOverlay.classList.toggle("closed");
});

closeIreland.addEventListener("click", function() {
    modalIreland.classList.toggle("closed");
    modalOverlay.classList.toggle("closed");
});
