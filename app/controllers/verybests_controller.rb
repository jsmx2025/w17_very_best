class VerybestsController < ApplicationController
  def index
    @verybests = Verybest.all

    render("verybests/index.html.erb")
  end

  def show
    @verybest = Verybest.find(params[:id])

    render("verybests/show.html.erb")
  end

  def new
    @verybest = Verybest.new

    render("verybests/new.html.erb")
  end

  def create
    @verybest = Verybest.new

    @verybest.user_id = params[:user_id]
    @verybest.foodvenue_id = params[:foodvenue_id]

    save_status = @verybest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/verybests/new", "/create_verybest"
        redirect_to("/verybests")
      else
        redirect_back(:fallback_location => "/", :notice => "Verybest created successfully.")
      end
    else
      render("verybests/new.html.erb")
    end
  end

  def edit
    @verybest = Verybest.find(params[:id])

    render("verybests/edit.html.erb")
  end

  def update
    @verybest = Verybest.find(params[:id])

    @verybest.user_id = params[:user_id]
    @verybest.foodvenue_id = params[:foodvenue_id]

    save_status = @verybest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/verybests/#{@verybest.id}/edit", "/update_verybest"
        redirect_to("/verybests/#{@verybest.id}", :notice => "Verybest updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Verybest updated successfully.")
      end
    else
      render("verybests/edit.html.erb")
    end
  end

  def destroy
    @verybest = Verybest.find(params[:id])

    @verybest.destroy

    if URI(request.referer).path == "/verybests/#{@verybest.id}"
      redirect_to("/", :notice => "Verybest deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Verybest deleted.")
    end
  end
end
