/*
 * JOSÉ PRETO · ADVOGADO — JavaScript mínimo
 *
 * Só faz duas coisas:
 *   1. abre e fecha o menu no telemóvel;
 *   2. atualiza o ano no rodapé.
 * O site funciona sem JavaScript: o menu fica sempre visível e o ano
 * mostra o valor escrito no HTML.
 * Não usa cookies, não guarda dados e não comunica com nenhum serviço.
 */
document.documentElement.classList.add("js");

document.addEventListener("DOMContentLoaded", function () {
  var ano = String(new Date().getFullYear());
  document.querySelectorAll("[data-ano]").forEach(function (el) {
    el.textContent = ano;
  });

  var botao = document.querySelector(".botao-menu");
  var menu = document.getElementById("menu-principal");
  if (!botao || !menu) return;

  function fechar(devolverFoco) {
    menu.classList.remove("aberta");
    botao.setAttribute("aria-expanded", "false");
    if (devolverFoco) botao.focus();
  }

  botao.addEventListener("click", function () {
    var aberto = botao.getAttribute("aria-expanded") === "true";
    if (aberto) {
      fechar(false);
    } else {
      menu.classList.add("aberta");
      botao.setAttribute("aria-expanded", "true");
    }
  });

  document.addEventListener("keydown", function (evento) {
    if (evento.key === "Escape" && botao.getAttribute("aria-expanded") === "true") {
      fechar(true);
    }
  });
});
