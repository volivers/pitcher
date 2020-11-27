class PersonasController < ApplicationController
  before_action :set_demo, except: [:destroy]
  before_action :set_persona, only: [:edit, :update]

  def new
    @persona = Persona.new

    if params[:pitch].present?
      @pitch = Pitch.find(params[:pitch])
    else
      @pitch = @demo.pitches.first
    end
  end

  def create
    @persona = Persona.new(persona_params)
    @persona.demo_id = Demo.find(params[:demo_id]).id
    @pitch = Pitch.find(params[:pitch])
    if @persona.save
      # TODO: redirect to path depending on the clicked button || will we need to create different routes/methods?
      redirect_to new_demo_userjourney_path(persona_id: @persona.id) #, notice: 'Yay! 🎉 Your persona was successfully updated. Check it out 👇'
    else
      render :new
    end
  end

  def edit
    # but here it reads... params[:from] is nil……why?!
  end

  def update
    @persona.update(persona_params)
    @persona.demo_id = Demo.find(params[:demo_id]).id
    # params[:from] is nil……why?!
    if @persona.save
      if params[:commit].include? 'Add'
        redirect_to new_demo_userjourney_path(persona_id: @persona.id) #, notice: 'Yay! 🎉 Your persona was successfully updated. Check it out 👇'
      elsif params[:commit].include? 'Edit'
        redirect_to edit_demo_userjourney_path(@demo, journey)
      else
        redirect_to dashboard_path #, notice: 'Yay! 🎉 Your pitch was successfully updated. Check it out 👇'
      end
    else
      render :new
    end
  end

  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy
    redirect_to dashboard_path #, notice: 'Yay! 🎉 Your persona was successfully removed.'
  end

  private

  def persona_params
    params.require(:persona).permit(:name, :age, :bio, :nationality, :location, :job, :relationship_status, :income, :demo_id)
  end

  def set_persona
    @persona = Persona.find(params[:id])
  end

  def set_demo
    @demo = Demo.find(params[:demo_id])
  end
end
