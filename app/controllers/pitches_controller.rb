class PitchesController < ApplicationController
  before_action :set_demo, only: [:new, :create, :edit, :update]
  before_action :set_pitch, only: [:edit, :update, :destroy]

  def dashboard
    @pitches = Pitch.all
    @personas = Persona.all
    @pitch = Pitch.new
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.demo_id = Demo.find(params[:demo_id]).id

    if @pitch.save
      # redirect_to new_demo_persona_path(pitch: @pitch.id), notice: 'Kitty: Yay! 🎉 You create your pitch.'
      if params[:commit].include? 'Add'
        demo_id = params[:demo_id]
        redirect_to new_demo_persona_path(demo_id, pitch: @pitch.id) #, notice: 'Yay! 🎉 Your pitch was successfully updated. Check it out 👇'
      else
        redirect_to dashboard_path #, notice: 'Yay! 🎉 Your pitch was successfully updated. Check it out 👇'
      end
    else
      render :new
    end
  end

  def edit; end

  def update
    @pitch.update(pitch_params)
    @pitch.demo = @demo

    if @pitch.save
      if params[:commit].include? 'New'
        demo_id = params[:demo_id]
        redirect_to new_demo_persona_path(demo_id) #, notice: 'Yay! 🎉 Your pitch was successfully updated. Check it out 👇'
      elsif params[:commit].include? 'Edit'
        demo_id = params[:demo_id]
        persona_id = params[:persona_id]
        redirect_to edit_demo_persona_path(demo_id, persona_id) #, notice: 'Yay! 🎉 Your pitch was successfully updated. Check it out 👇'
      else
        redirect_to dashboard_path #, notice: 'Yay! 🎉 Your pitch was successfully updated. Check it out 👇'
      end
    else
      render :partial => 'modal-pitch'
    end
  end

  def show
    @pitches = Pitch.all
    @personas = Persona.all
  end

  def destroy
    if @pitch.destroy
      redirect_to dashboard_path #, notice: 'Yay! ❌ Your pitch was successfully deleted.'
    else
      render :show
    end
  end

  private

  def set_pitch
    @pitch = Pitch.find(params[:id])
  end

  def set_demo
    @demo = Demo.find(params[:demo_id])
  end

  def pitch_params
    params.require(:pitch).permit(:demo_id, :pain, :target, :solution) # --> not sure
  end

  def find_user
    @user = current_user
  end
end
