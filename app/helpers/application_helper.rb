module ApplicationHelper
  
  def labelize(field)
    raw t(:labelize, :field => t(field).capitalize)
  end
  
  def show_errors_for(model)
    html = ""
    if model.errors.any?
      html = content_tag(:div, :class => "box box-error") do
        t "layout.form.error"
      end
      messages = ""
      model.errors.full_messages.each do |message|
        messages << content_tag(:li, raw(message))
      end
      puts messages
      html << content_tag(:div, :class => "box box-error-msg") do
        content_tag(:ol, raw(messages))
      end
      html = content_tag :fieldset, html
    end
    raw html
  end

end
