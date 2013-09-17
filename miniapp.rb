#encoding utf-8

require 'sinatra'
require 'sinatra/reloader'
require_relative 'item.rb'
#Lista de la compra
lista = [Item.new("pan",2), Item.new("aceite")]

get '/hi' do
  "Hello World!"
end

get '/lista' do
  #resultado = "<html> <head> <title>Lista de la compra </title> </head> <body> <ul>"
  # lista.each do |i|
  #  resultado += "<li> #{i.nombre} </li>"
  #end
  #resultado += "</ul> </body> </html>"
  @lista = lista
  erb :lista
end

get '/addItem' do
  nuevoItem = Item.new(params[:nombre],params[:cantidad])
  lista << nuevoItem
  "Añadido #{nuevoItem.nombre} a la lista"
end