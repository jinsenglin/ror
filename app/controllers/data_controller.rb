class DataController < ApplicationController
  def index
    data = {
        "draw": 1,
        "recordsTotal": 2,
        "recordsFiltered": 2,
        "data": [
            ["Airi", "Satou", "Accountant", "Tokyo", "28th Nov 08", "$162,700"],
            ["Angelica", "Ramos", "Chief Executive Officer (CEO)", "London", "9th Oct 09", "$1,200,000"]
        ]
    }
    render :json => data
  end
end
