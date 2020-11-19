class DemosController < ApplicationController
  before_action :find_user
  before_action :find_demo, except: %i[dashboard new create]

  def dashboard
    @demos = Demo.all
    @personas = Persona.all
    @demo = Demo.new
    @valid = true
  end

  def new
    # Added by Vasco
    session[:demo_params] ||= {}
    @demo = Demo.new(session[:demo_params])
    @demo.current_step = session[:demo_step]
  end

  def create
    @demos = Demo.all
    # @demo = Demo.new(demo_params)
    @demo.user = current_user

    # if @demo.save
    #   @valid = @demo.valid?
    #   redirect_to new_demo_pitch_path(@demo), notice: 'Yay! 🎉 Your demo was successfully added. Check it out 👇'
    # else
    #   @valid = @demo.valid?
    #   render :dashboard
    #   #render 'modal-demo'
    # end

    # Added by Vasco
    session[:demo_params].deep_merge!(params[:demo]) if params[:demo]
    @demo = Demo.new(session[:demo_params])
    @demo.current_step = session[:demo_step]
    if @demo.valid?
      if params[:back_button]
        @demo.previous_step
      elsif @demo.last_step?
        @demo.save if @demo.all_valid?
      else
        @demo.next_step
      end
      session[:demo_step] = @demo.current_step
    end
    if @demo.new_record?
      render "new"
    else
      session[:demo_step] = session[:demo_params] = nil
      flash[:notice] = "Progress saved!"
      redirect_to @demo
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
