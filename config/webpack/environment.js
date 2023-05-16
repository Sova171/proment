const { environment } = require('@rails/webpacker')

module.exports = environment

environment.entry.set('application', './app/javascript/application')
