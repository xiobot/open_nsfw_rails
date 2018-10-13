threads 0, 5
workers 160

port        ENV.fetch("PORT") { 3000 }

environment ENV.fetch("RAILS_ENV") { "development" }

preload_app!
plugin :tmp_restart
