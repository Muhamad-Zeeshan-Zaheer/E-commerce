# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "popper", to: "popper.js", preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "axios" # @1.8.4
pin "#lib/adapters/http.js", to: "#lib--adapters--http.js.js" # @1.8.4
pin "#lib/platform/node/classes/FormData.js", to: "#lib--platform--node--classes--FormData.js.js" # @1.8.4
pin "#lib/platform/node/index.js", to: "#lib--platform--node--index.js.js" # @1.8.4
pin "hello_alert", to: "hello_alert.js"
