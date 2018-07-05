#encoding: UTF-8

def format_link str
  uri = URI.parse(URI.encode(str.strip))
  return uri
end

def visit_url url
  if url == ""
    visit_main_page
  else
      visit format_link(url)
  end
end

def visit_main_page
  begin
    visit ''
  rescue Timeout::Error
    visit ''
  end
end

def visit_qwertee_main_page
  begin
    visit 'https://www.qwertee.com'
  end
end

def visit_9gag_main_page
  begin
    visit 'https://www.9gag.com'
  end
end

def set_wait_time seconds
  Capybara.default_max_wait_time = seconds.to_i
end

def revert_to_default_wait_time
  Capybara.default_max_wait_time = $default_wait_time
end

