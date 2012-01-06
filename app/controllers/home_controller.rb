# encoding: utf-8

class HomeController < ApplicationController
  def index
    @open_workshops = OPEN_WORKSHOPS
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
      redirect_to(root_path, :notice => 'Pronto, agora você receberá notícias sobre o curso')
    rescue
      redirect_to(root_path, :error => 'Não foi possível cadastrar você para receber notificações')
    end
  end

end
