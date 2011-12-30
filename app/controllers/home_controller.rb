# encoding: utf-8
class HomeController < ApplicationController
  def index
    @workshops = [
      { title: "Ruby1.9", subtitle: "Introdução", info: "Alguma info aqui", dates: "30/1, 1/2 e 3/2", status: [:success, "Inscrições abertas"], level: "" },
      { title: "Ruby1.9", subtitle: "Orientação a Objetos", info: "", dates: "6, 8 e 10/2", status: [:success, "Inscrições abertas"], level: "" },
      { title: "Rails3.1", subtitle: "MVC", info: "", dates: "13, 15 e 16/2", status: [:success, "Inscrições abertas"], level: "" },
      { title: "Rails3.1", subtitle: "Avançado", info: "", dates: "27/2, 29/2 e 2/3", status: [:success, "Inscrições abertas"], level: "" },
      { title: "Rspec2", subtitle: "Testando aplicações Rails", info: "", dates: "5, 7 e 9/3", status: [:success, "Inscrições abertas"], level: "" },
      { title: "BackboneJS & Jasmine", subtitle: "JS de verdade para suas aplicações", info: "", dates: "12, 14 e 16/3", status: [:success, "Inscrições abertas"], level: "" },
      { title: "Ruby1.9", subtitle: "Metaprogramação", info: "", dates: "19, 21 e 23/3", status: [:success, "Inscrições abertas"], level: "" },
      { title: "Rails3.1", subtitle: "Deployment, escalabilidade & cloud computing", info: "", dates: "26, 28 e 30/3", status: [:success, "Inscrições abertas"], level: "" },
      { title: "NodeJS1.6", subtitle: "WebSockets com Express Básico", info: "", dates: "2, 4 e 6/4", status: [:success, "Inscrições abertas"], level: "" },
      { title: "NodeJS1.6", subtitle: "WebSockets com Express Avançado", info: "", dates: "2, 4 e 6/4", status: [:success, "Inscrições abertas"], level: "" },
      { title: "JaxGL", subtitle: "WebGL para programadores Rails", info: "", dates: "9, 11 e 13/4", status: [:success, "Inscrições abertas"], level: "" },
      { title: "Vim", subtitle: "Subtitle here!", info: "", dates: "16, 18 e 20/4", status: [:success, "Inscrições abertas"], level: "" }
    ].map{|w| OpenStruct.new(w) }
  end

end
