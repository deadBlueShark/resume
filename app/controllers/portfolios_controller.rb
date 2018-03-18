class PortfoliosController < ApplicationController
  before_action :load_portfolio, except: [:index, :new, :create]
  def index
    @portfolios = Portfolio.all
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
    params.require(:portfolio).permit(:title, :subtitle, :body,
      technologies_attributes: [:name]).merge(main_image: image_generator(600, 400),
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
