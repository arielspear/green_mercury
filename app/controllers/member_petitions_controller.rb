class MemberPetitionsController < ApplicationController 
  def new 
    @member_petition = MemberPetition.new
  end

  def create
    @member_petition = MemberPetition.new(member_petition_params)
    if @member_petition.save
      flash[:notice] = 'Application Submitted'
      redirect_to root_path
    else
      render 'new'
    end
  end

private

  def member_petition_params
    params.require(:member_petition).permit(:content, :user_uuid)
  end
end