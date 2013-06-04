class WelcomeController < ApplicationController
  def index
    render text: 'welcome to our Cookbook!'    #the parameter of the render method is a hash
  end                #just saying render text but no template. render just text.
end
