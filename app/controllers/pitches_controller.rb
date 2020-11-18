class PitchesController < ApplicationController
  before_action :set_demo, only: [:new, :create]
  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.demo_id = Demo.find(params[:demo_id]).id

    if @pitch.save
      redirect_to new_demo_persona_path, notice: 'Kitty: Yay! 🎉 You create your pitch.'
    else
      render :new
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
end
