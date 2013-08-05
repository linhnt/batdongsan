module ApplicationHelper

  def if_blank object, method, substitute = "", decoration_proc = nil
    if object.blank? || (return_value = object.send(method)).blank?
      if substitute.is_a? Proc
        substitute.call return_value
      else
        substitute
      end
    else
      if decoration_proc.is_a? Proc
        decoration_proc.call return_value
      else
        return_value
      end
    end
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
end
