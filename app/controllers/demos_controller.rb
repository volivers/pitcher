class DemosController < ApplicationController
  before_action :find_user
  before_action :find_demo, except: %i[dashboard new create]

  def dashboard
    @demos = Demo.all
    @personas = Persona.all
    @demo = Demo.new
  end

  def new
  end

  def create
    @demos = Demo.all
    @demo = Demo.new(demo_params)
    @demo.user = current_user

    if @demo.save
      redirect_to new_demo_pitch_path(@demo), notice: 'Yay! 🎉 Your demo was successfully added. Check it out 👇'
    else
      render :dashboard
      #render :partial => 'modal-demo'
    end
  end

  def show
    @personas = Persona.all
  end

  def edit
  end

  def update
  end

  def destroy
    if @demo.destroy
      redirect_to dashboard_path, notice: 'Yay! 🎉 Your demo was successfully deleted.'
    else
      render :show
    end
  end

  private

  def demo_params
    params.require(:demo).permit(:name, :url, :current_user)
  end

  def find_user
    # @task = Task.find(params[:id])
    @user = current_user
    # @restaurant = Restaurant.find(params[:id])
  end

  def find_demo
    # @task = Task.find(params[:id])
    @demo = Demo.find(params[:id])
    # @restaurant = Restaurant.find(params[:id])
  end
end
