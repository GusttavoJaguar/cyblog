import "@hotwired/turbo-rails"

// 1. IMPORTS DOS ARQUIVOS LOCAIS (ESTES USAM OS PINS DO IMPORTMAP)
import "@popperjs/core" 
import "bootstrap" 

// 2. CÓDIGO DE REINICIALIZAÇÃO DO MENU PARA HOTWIRE/TURBO
document.addEventListener("turbo:load", function() {
  document.querySelectorAll('[data-bs-toggle="collapse"]').forEach(function (element) {
    try {
      // Isso força a reativação do menu após o Turbo carregar uma nova página
      new bootstrap.Collapse(element, { 
        toggle: false 
      });
    } catch (e) {
      console.error("Erro ao reinicializar Collapse do Bootstrap:", e); 
    }
  });
});