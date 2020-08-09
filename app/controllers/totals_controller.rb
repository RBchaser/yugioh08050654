class TotalsController < ApplicationController
    def show_total
        @totals=where(" ? =< attack + defence AND attack + defence =< ?", params[:ttl_min], params[:ttl_max])
    end
end

