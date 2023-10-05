function coordinates = Untitled2(x, y, z, l)
    a1 = [x, y - l/4, z];
    a2 = [x + (l/4), y + (sqrt(3) * l/4), z];
    a3 = [x - (l/4), y + (sqrt(3) * l/4), z];
    
    % Combine the three points into a 3x3 matrix
    coordinates = [a1; a2; a3];
end
