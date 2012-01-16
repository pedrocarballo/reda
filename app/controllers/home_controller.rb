# encoding: utf-8

class HomeController < ApplicationController
  def index
    @workshops = OPEN_WORKSHOPS
    @open_workshops = OPEN_WORKSHOPS.find_all{|w| w["status"][0] == "success"}
    @coming_workshops = COMING_WORKSHOPS
  end

  def list_subscribe
    return redirect_to root_path unless request.post?
    #raise params.inspect
    begin
      contact = Mailee::Contact.create(name: params[:name], email: params[:email]||'')
      for list in params[:workshops] do
        contact.put(:subscribe, :list_id => list)
      end
      redirect_to(root_path, :notice => '<strong>Pronto!</strong> Assim que tivermos novidades sobre os cursos ficará sabendo por email.')
    rescue
      redirect_to(root_path, alert: '<strong>Droga.</strong> Não foi cadastrar você na newsletter. Por favor entre em contato conosco pelo workshops@engage.is.')
    end
  end

  def success
    redirect_to(root_path, notice: '<strong>Feito!</strong> Você está inscrito nos workshops. Assim que a data estiver próxima você receberá um email com mais informações.')
  end

  def error
    redirect_to(root_path, alert: '<strong>Droga.</strong> Não foi possível realizar sua inscrição. Por favor entre em contato conosco pelo workshops@engage.is.')
  end

end
