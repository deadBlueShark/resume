class PortfoliosController < ApplicationController
  before_action :load_portfolio, except: [:index, :new, :create]
  def index
    @portfolios = Portfolio.all
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
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
    params.require(:portfolio).permit(:title, :subtitle, :body).merge(
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
    )
  end

  def load_portfolio
    @portfolio = Portfolio.find_by(id: params[:id])
  end
end
