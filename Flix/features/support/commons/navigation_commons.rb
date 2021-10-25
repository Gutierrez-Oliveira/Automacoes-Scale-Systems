module Commons
    def scroll_to(element)
        page_height = Capybara.current_session.driver.browser.manage.window.size.page_height
        element_axis_y = element.native.location.y
        element_offset = element.native.size.height
        final_screen_axis = calcular_final_screen_axis(element_axis_y, element_offset, page_height)
        final_screen_axis = final_screen_axis >= 0 ? final_screen_axis : 0
        Capybara.current_session.driver.browser.execute_script("scrollTo(0,#{final_screen_axis})")
    end

    def calcular_final_screen_axis(element_axis_y, element_offset, page_height)
        (element_axis_y + element_offset) - page_height / 2
    end
end