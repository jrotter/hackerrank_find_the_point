# Initialize the line count
line_count = 0
parameter_count = 0

# Read the user input line by line
STDIN.each_line do |line|

    line_count += 1

    if line_count == 1

      # Read in the number of lines that are coming
      line =~ /\s*(\d+)\s+/
      parameter_count = $1.to_i

    else

      if (line_count - 1) <= parameter_count
        # Read in a line of data
        line =~ /\s*(-?\d+)\s+(-?\d+)\s+(-?\d+)\s+(-?\d+)\s*/
        px = $1.to_i
        py = $2.to_i
        qx = $3.to_i
        qy = $4.to_i
  
        # Rotation of px,py around qx,qy will just be the deltas between each coordinate in the other direction
        rx = qx + (qx-px)
        ry = qy + (qy-py)

        # Print the resulting point
        puts "#{rx} #{ry}"
      end
    end
    
end
