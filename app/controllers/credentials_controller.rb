class CredentialsController < ApplicationController
  def create
    Credential.create(credentials_params)
  end

  private

  def credentials_params
    params.require(:credential).permit(:name, :email, :password)
  end
end
