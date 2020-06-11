def process_headers(headers)
  header_index = []

  headers.each do |header|
    title = header[:title].capitalize
    heading_level = header[:heading_level] 
    
    header_index = header_index[0..heading_level]

    heading_level.times do |i|
      header_index[i] ||= 1
    end

    header_index[heading_level] = header_index[heading_level].to_i + 1

    header_text = ''
    (heading_level + 1).times do |i|
      header_text += header_index[i].to_s + '.'
    end
 
    indent = "  " * heading_level.to_i
    print "#{indent}#{header_text} #{title}\n"
    # p "header_index: #{header_index}"

  end
end 


headers =[{ id: 1, title: "heading1", heading_level: 0 }, 
{ id: 2, title: "heading2", heading_level: 2 }, 
{ id: 3, title: "heading3", heading_level: 1 }, 
{ id: 4, title: "heading4", heading_level: 1 }]

 process_headers(headers)

 p "----------------------------"

 headers = [
  { id: 1, title: "heading1", heading_level: 0 },
  { id: 2, title: "heading2", heading_level: 3 },
  { id: 3, title: "heading3", heading_level: 4 },
  { id: 4, title: "heading4", heading_level: 1 },
  { id: 5, title: "heading5", heading_level: 0 },
  { id: 1, title: "heading1", heading_level: 0 },
  { id: 2, title: "heading2", heading_level: 3 },
  { id: 3, title: "heading3", heading_level: 4 },
  { id: 4, title: "heading4", heading_level: 1 },
  { id: 5, title: "heading5", heading_level: 0 }
]
process_headers(headers)

