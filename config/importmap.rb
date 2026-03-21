pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "controllers"
pin "home", to: "home.js"
pin "post", to: "post.js"
pin "event", to: "event.js"

# Mude os pins abaixo para apontar para arquivos locais:
pin "bootstrap", to: "bootstrap.min.js", preload: true 

pin "@popperjs/core", to: "popper.js", preload: true # Usaremos 'popper.js' para simplicidade