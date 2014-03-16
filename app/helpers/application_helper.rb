module ApplicationHelper

    def full_title(page_title)
        base_title = "CS232 Ruby on Rails Development"
        if page_title.empty?
           base_title
        else
           "#{base_title} | #{page_title}"
        end
    end
end
