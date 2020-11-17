class PersonasController < ApplicationController
  before_action :set_demo, except: [:destroy]

  def new
    @persona = Persona.new
  end

  def create
    @persona = Persona.new(persona_params)

    if @persona.save
      redirect_to dashboard_path, notice: 'Yay! 🎉 Your persona was successfully added. Check it out 👇'
    else
      render :new
    end
  end

  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy
    redirect_to dashboard_path, notice: 'Yay! 🎉 Your persona was successfully removed.'
  end

  private

  def persona_params
    params.require(:persona).permit(:name, :age, :bio, :nationality, :location, :job, :relationship_status, :income, :demo_id)
  end

  def set_demo
    @demo = Demo.find(params[:demo_id])
  end
end
