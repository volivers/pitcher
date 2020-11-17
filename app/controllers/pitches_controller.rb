class PitchesController < ApplicationController

  def new
    @pitch = Pitch.new
    @demo = Demo.find(params[:demo_id])
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.demo_id = Demo.find(params[:hobby_id]).id
    @demo = Demo.find(params[:hobby_id])
    if @pitch.save!
      redirect_to personas_new, notice: 'Kitty: Yay! 🎉 You create your pitch.'
    else
      render :new
    end
  end

  private

  def set_pitch
    @pitch = Pitch.find(params[:id])
  end
  def pitch_params
    params.require(:pitch).permit(:demo_id, :pain, :target, :solution) # --> not sure
  end
end

