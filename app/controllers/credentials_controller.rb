class CredentialsController < ApplicationController
  def index
    @credentials = Credential.all.sort_by { |c| -c.weaknesses.length }
  end

  def create
    Credential.create(credentials_params)
  end

  def delete_all
    Credential.destroy_all
    redirect_to credentials_path
  end

  private

  def credentials_params
    params.require(:credential).permit(:name, :email, :password)
  end
end
