class PortfoliosController < ApplicationController
  layout "portfolio"
  access all: [:show, :index],
    user: {except: [:new, :edit, :create, :update, :destroy]}, admin: :all
  before_action :load_portfolio, except: [:index, :new, :create, :sort]

  def index
    @portfolio_items = Portfolio.sort_by_position
  end

  def sort
    order = params[:order].values
    order.each do |e|
      Portfolio.find(e[:id]).update_attributes position: e[:position]
    end
    head :ok
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
    3.times {@portfolio.technologies.build}
  end

  def create
    @portfolio = Portfolio.new portfolio_params
    if @portfolio.save
      redirect_to portfolios_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @portfolio.update_attributes(portfolio_params)
      redirect_to portfolios_path
    else
      render :edit
    end
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolios_path
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:id, :name]
                                    ).merge(
                                      main_image: image_generator(600, 400),
                                      thumb_image: image_generator(250, 200)
                                    )
  end

  def load_portfolio
    begin
      @portfolio = Portfolio.friendly.find(params[:id])
    rescue
      redirect_to portfolios_path
    end
  end
end
