class DataController < ApplicationController
  def index
    if params[:draw] == nil
        draw = 1
    else
        draw = Integer(params[:draw]) + 1
    end

    if params[:start] == nil
        start = 0
    else
        start = Integer(params[:start])
    end

    if params[:length] == nil
        length = 10
    else
        length = Integer(params[:length])
    end

    if params[:search] == nil
        search_value = ""
    else
        search_value = params[:search][:value]
    end

    data = {
        "draw": draw,
        "recordsTotal": 2,
        "recordsFiltered": 2,
        "data": [
            ["Airi", "Satou", "Accountant", search_value, "28th Nov 08", "$162,700"],
            ["Angelica", "Ramos", "Chief Executive Officer (CEO)", "London", "9th Oct 09", "$1,200,000"]
        ]
    }
    render :json => data
  end
end
