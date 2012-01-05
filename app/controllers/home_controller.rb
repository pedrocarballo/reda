# encoding: utf-8
<<<<<<< HEAD
require 'ostruct'
=======

require'ostruct'

>>>>>>> b53d8a2462f36b17d08c55f6716ae4475d50235a
class HomeController < ApplicationController
  def index
    @open_workshops = [
      { title: "Ruby1.9", subtitle: "Introdução", info: "Alguma info aqui", dates: "30/1, 1/2 e 3/2", status: [:success, "Inscrições abertas"], level: "", list_id:218864  },
      { title: "Ruby1.9", subtitle: "Orientação a Objetos", info: "", dates: "6, 8 e 10/2", status: [:success, "Inscrições abertas"], level: "", list_id: 218865},
      { title: "Rails3.1", subtitle: "MVC", info: "", dates: "13, 15 e 16/2", status: [:success, "Inscrições abertas"], level: "", list_id: 218867 },
      { title: "Rails3.1", subtitle: "Avançado", info: "", dates: "27/2, 29/2 e 2/3", status: [:success, "Inscrições abertas"], level: "", list_id:218868},
      { title: "Rspec2", subtitle: "Testando aplicações Rails", info: "", dates: "5, 7 e 9/3", status: [:success, "Inscrições abertas"], level: "", list_id:218869  },
      { title: "BackboneJS & Jasmine", subtitle: "JS de verdade para suas aplicações", info: "", dates: "12, 14 e 16/3", status: [:success, "Inscrições abertas"], level: "", list_id:218870},
      { title: "Ruby1.9", subtitle: "Metaprogramação", info: "", dates: "19, 21 e 23/3", status: [:success, "Inscrições abertas"], level: "", list_id:218871 },
      { title: "Rails3.1", subtitle: "Deployment, escalabilidade & cloud computing", info: "", dates: "26, 28 e 30/3", status: [:success, "Inscrições abertas"], level: "", list_id:218872 },
    ].map{|w| OpenStruct.new(w) }

    @next_workshops =[
      { title: "NodeJS1.6", subtitle: "WebSockets com Express Básico", info: "", dates: "2, 4 e 6/4", status: [:notice, "Aguarde"], level: "", list_id:218859 },
      { title: "NodeJS1.6", subtitle: "WebSockets com Express Avançado", info: "", dates: "2, 4 e 6/4", status: [:notice, "Aguarde"], level: "", list_id:218860 },
      { title: "JaxGL", subtitle: "WebGL para programadores Rails", info: "", dates: "9, 11 e 13/4", status: [:notice, "Aguarde"], level: "", list_id:218861 },
      { title: "Vim", subtitle: "Subtitle here!", info: "", dates: "16, 18 e 20/4", status: [:notice, "Aguarde"], level: "", list_id:218862 }
    ].map{|w| OpenStruct.new(w) }
  end

  def list_subscribe
    return redirect_to root_path unless request.post?
    raise params.inspect
    begin
      contact = Mailee::Contact.create(:email => params[:email])
      for list in params[:workshops] do
        contact.put(:subscribe, :list_id => list)
      end
      redirect_to(root_path, :notice => 'Pronto, agora você receberá notícias sobre o curso')
    rescue
      redirect_to(root_path, :error => 'Não foi possível cadastrar você para receber notificações')
    end
  end

end
