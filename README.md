# bdd-amazon 
código cucumber


#Genfile
# frozen_string_literal: true

source "https://rubygems.org"
gem 'cucumber'
gem 'capybara'
gem 'selenium-webdriver'
gem 'pry'
gem 'rspec'


       #Env.rb
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'capybara'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end


#Bdd
#language: pt

Funcionalidade: Sendo um cliente em busca de produtos

        Cenario: Acessar pagina
        
            Dado que visita pagina
             Quando localizado o produto
             Então sou redirecionado para o produto

#Códigos de execução cucumber

Dado('que visita pagina') do
  visit "https://www.amazon.com.br"
  sleep 5 # temporario
end

Quando('localizado o produto') do
 find('#twotabsearchtextbox').click
 find('#twotabsearchtextbox').set("fones")
 find('[type="submit"]').click

  end

Então('sou redirecionado para o produto') do
visit "https://www.amazon.com.br/Fone-ouvido-Bluetooth-sem-Tranya/dp/B09MD685YB/ref=sr_1_4_sspa?keywords=fones&qid=1653616594&sr=8-4-spons&ufe=app_do%3Aamzn1.fos.db68964d-7c0e-4bb2-a95c-e5cb9e32eb12&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyTkRTTjA1VTlFMFZNJmVuY3J5cHRlZElkPUEwNDkzODk2MzRZTlBUMDlQMVg0SCZlbmNyeXB0ZWRBZElkPUEwNTExOTA3MzRBMklST0VMUUpZWSZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU="
 
end
