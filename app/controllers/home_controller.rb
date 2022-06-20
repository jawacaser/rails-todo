class HomeController < ApplicationController

    def trash_marked
        @trash_marked = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: "All marked challenges successfully deleted."

    end

    def trash_all
        @trash_all = List.all.destroy_all
        redirect_to lists_url, notice: "All challenges successfully deleted."
    end

end