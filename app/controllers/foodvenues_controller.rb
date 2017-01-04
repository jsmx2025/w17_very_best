class FoodvenuesController < ApplicationController
  def index
    @foodvenues = Foodvenue.all

    render("foodvenues/index.html.erb")
  end

  def show
    @foodvenue = Foodvenue.find(params[:id])

    render("foodvenues/show.html.erb")
  end

  def new
    @foodvenue = Foodvenue.new

    render("foodvenues/new.html.erb")
  end

  def create
    @foodvenue = Foodvenue.new

    @foodvenue.food_id = params[:food_id]
    @foodvenue.venue_id = params[:venue_id]

    save_status = @foodvenue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/foodvenues/new", "/create_foodvenue"
        redirect_to("/foodvenues")
      else
        redirect_back(:fallback_location => "/", :notice => "Foodvenue created successfully.")
      end
    else
      render("foodvenues/new.html.erb")
    end
  end

  def edit
    @foodvenue = Foodvenue.find(params[:id])

    render("foodvenues/edit.html.erb")
  end

  def update
    @foodvenue = Foodvenue.find(params[:id])

    @foodvenue.food_id = params[:food_id]
    @foodvenue.venue_id = params[:venue_id]

    save_status = @foodvenue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/foodvenues/#{@foodvenue.id}/edit", "/update_foodvenue"
        redirect_to("/foodvenues/#{@foodvenue.id}", :notice => "Foodvenue updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Foodvenue updated successfully.")
      end
    else
      render("foodvenues/edit.html.erb")
    end
  end

  def destroy
    @foodvenue = Foodvenue.find(params[:id])

    @foodvenue.destroy

    if URI(request.referer).path == "/foodvenues/#{@foodvenue.id}"
      redirect_to("/", :notice => "Foodvenue deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Foodvenue deleted.")
    end
  end
end
