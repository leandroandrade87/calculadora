require 'fileutils'
require 'without_accents'

module Helper
    
    # Custom commands
    def mouse_over(element_selector)
      element = Capybara.page.driver.browser.find_element(:css, element_selector)
      Capybara.page.driver.browser.mouse.move_to element
    end
    
    # Screenshots
    def take_screenshot(file_name, result)
      logger = Logger.new(STDOUT)
      timer_path = Time.now.strftime('%Y_%m_%d').to_s
      logger.info("Timer_path" + timer_path)
      file_path = "reports/screenshots/test_#{result}/run_#{timer_path}"
      logger.info("file_path" + file_path)
      screenshot = "#{file_path}/#{file_name}.png".without_accents
      logger.info("screenshot" + screenshot)
      screenshot = screenshot.sub! ',', ''
      screenshot = screenshot.sub! '#', ''
      page.save_screenshot(screenshot)
      embed(screenshot, 'image/png', 'SCREENSHOT')
    end
    
end
