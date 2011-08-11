module Packrat
  module ViewHelpers

    def packrat_css(&block)
      c = capture(&block)
      premailer = Premailer.new(StringIO.new(c), :local_file => false)
      inlined = premailer.to_inline_css

      if Rails::VERSION::MAJOR == 2
        concat(inlined)
      elsif Rails::VERSION::MAJOR == 3
        inlined.html_safe
      else
        puts "Sorry, Packrat only works with Rails 2.x and Rails 3.x"
      end

    end

  end
end