module ApplicationHelper

  def format_note_text(text, max_chars=140)
    "#{text[0..(max_chars - 1)]}#{'...' if text.length > max_chars}" if text
  end

  def active_if_match(a, b)
    a == b ? 'active' : ''
  end  

end
