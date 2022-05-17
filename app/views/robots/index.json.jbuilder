json.array! @robots do |robot|
    json.id robot.id    
    json.name robot.name
    json.email robot.email
    json.title robot.title
    json.city robot.city
    json.address robot.address
    json.avatar robot.avatar
end