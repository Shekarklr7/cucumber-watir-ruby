require 'watir-page-helper'

module WatirPageHelper::Google
  module HomePage
    extend WatirPageHelper::ClassMethods

    direct_url "http://www.google.com"
       text_field :search, :name => "q"

    def search_for term
      self.search = term
      self.search_text_field.respond_to?(:send_keys) ? self.search_text_field.send_keys(:enter) : @browser.send_keys('{ENTER}')
    end

    def is_search_result_in_first
      sleep(5)
      search_page = @browser.a(:xpath,"//div/ol/li/div/div/h3/a").text
      puts search_page
      if search_page.include? "Qwinix Technologies - Innovative End to End IT Solutions for ..."
        puts "  Test Passed. Found the test string:Actual Results match Expected Results."
      else
        puts "  Test Failed! Could not find: 'First Page'."
      end
    end

  end
end

