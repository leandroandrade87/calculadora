# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

module Login
  module Pages
    def salario
      Login::Pages::LoginPage.new
    end
  end
end
