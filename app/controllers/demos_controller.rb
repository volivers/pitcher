class DemosController < ApplicationController
  def dashboard
    @demos = Demo.all
    @demo = Demo.new
  end

  def new
  end

  def create
    @demo = Demo.new(demo_params)
    @demo.user = current_user

    if @demo.save
      redirect_to dashboard_path, notice: 'Yay! 🎉 Your demo was successfully added. Check it out 👇'
    else
      render :dashboard
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def demo_params
    params.require(:demo).permit(:name, :url, :current_user)
  end
end
