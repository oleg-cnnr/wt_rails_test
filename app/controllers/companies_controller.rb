class CompaniesController < ApplicationController
  protect_from_forgery prepend: true
  def index
    render json: Company.all
  end

  def create
    company = Company.new(resource_params)
    if company.save
      render(json: company.to_json)
    else
      render(json: company.errors, status: 422)
    end
  end

  private

  def resource_params
    params.require(:company).permit(:name)
  end
end
