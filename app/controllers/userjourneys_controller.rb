class UserjourneysController < ApplicationController
  before_action :set_userjourney, only: [:show, :edit, :destroy, :update]
  before_action :set_demo, except: [:destroy]
  before_action :set_persona, only: [:new]

  def index
  end

  def new
    @userjourney = Userjourney.new
    # @persona = Persona.find(params[:persona_id])
  end

  def create
    @userjourney = Userjourney.new(userjourney_params)
    @userjourney.demo = @demo
    @userjourney.persona = Persona.find(params[:userjourney][:persona_id])
    @persona = Persona.find(params[:userjourney][:persona_id])
    @persona.name = @userjourney.persona.name
    if @userjourney.save
      redirect_to demo_userjourney_path(@demo, @userjourney), notice: 'Yay! 🎉 Your [Persona Name] User journey was successfully saved. Check it out 👇'
    else
      render :new
    end
  end

  def show
    @steps = Step.all
  end

  def edit
    @persona = Persona.find(params[:persona_id])
    @persona.name = @userjourney.persona.name
    #@userjourney.persona = Persona.find(params[:userjourney][:persona_id])
  end

  def update
    @userjourney.update(userjourney_params)
    @userjourney.demo = @demo
    @userjourney.persona = @persona
    if @userjourney.save
      redirect_to demo_userjourney_path(@demo, @userjourney), notice: 'Yay! 🎉 Your [Persona Name] User journey was successfully saved. Check it out 👇'
    else
      render :new
    end
  end

  def destroy
    @userjourney.destroy
    redirect_to dashboard_path, notice: 'Yay! 🎉 Your userjourney was successfully removed.'
  end

  private

  def userjourney_params
    params.require(:userjourney).permit(:name, :demo_id, :persona_id, steps_attributes: %i[id standpoint viewpoint actionpoint _destroy])
  end

  def set_userjourney
    @userjourney = Userjourney.find(params[:id])
  end

  def set_persona
    @persona = Persona.find(params[:persona_id])
  end

  def set_demo
    @demo = Demo.find(params[:demo_id])
  end
end
