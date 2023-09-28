# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "swiper", to: "swiper.js"
pin "add-form", to: "add-form.js"
pin "slot", to: "slot.js"
pin "preview", to: "preview.js"
pin "modal", to: "modal.js"
pin "my-page", to: "my-page.js"