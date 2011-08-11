require 'yaml'
require 'open-uri'
require 'hpricot'
require 'css_parser'
require 'active_support'

require File.dirname(__FILE__) + "/premailer/html_to_plain_text"
require File.dirname(__FILE__) + "/premailer/premailer"

module Packrat
  
  class << self
    def enable
      enable_actionpack
    end
    
    def enable_actionpack
      return if ActionView::Base.method_defined? :packrat_css
      require 'packrat/view_helpers'
      ActionView::Base.send :include, ViewHelpers
    end    
  end

end

if defined? Rails
  Packrat.enable_actionpack if defined? ActionController
end