Before do
  page.current_window.resize_to(1366, 768)
end

After do |scenario|
  time = Time.now.strftime("%Y%m%d-%H%M%S")
  page.save_screenshot("logs/print-" + time + ".png")
end
