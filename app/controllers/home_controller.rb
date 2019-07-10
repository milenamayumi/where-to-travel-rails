class HomeController < ApplicationController

  CONTINENTS = ['América', 'Europa', 'África', 'Ásia', 'Oceania', 'Antártida']

  def destination
    render json: { destination: CONTINENTS.sample }
  end

  def index
    if request.post?
      @feedback = params['answer'] == 'yes' ? 'Eba!' : 'Que pena!'
      render :action => 'thankyou'
    end

    @destination = CONTINENTS.sample
  end

  # def list
  # end
  #
  # def show
  # end
  #
  # def new
  # end
  #
  # def create
  # end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  # def delete
  # end
end
