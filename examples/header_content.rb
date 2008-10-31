Prawn::Document.generate("header_content.pdf") do

  data = []
  50.times { data.push ['Foo','Bar'] }
  table data
    
  content = add_header_content do
    text "This is in the header"
    text "This is as well."
  end
  
  table data

  span bounds.width, :position => 100 do
    table data
  end
  
  remove_header_content(content)
  
  table data
end