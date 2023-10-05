base_length = 1;
base_coord = [0; 0; 0]; % Use square brackets for defining a vector

arml1 = 5;
arml2 = 6;

motor_coord = Untitled2(base_coord(1), base_coord(2), base_coord(3), base_length);

end_length = 0.2; % Assuming you meant to define "end_length" here

input_x = 1;
input_y = 2;
input_z = -3;

end_coord = Untitled2(input_x, input_y, input_z, end_length);

motor_angle = zeros(3, 1); % Specify the size as [3, 1] for a 3x1 vector

for i = 1:3
    d = norm(end_coord(i,:) - motor_coord(i,:));
    
    motor_angle(i) = acosd((arml2^2 + arml1^2 - d^2) / (2 * arml1 * arml2));
    
    
end

fprintf('Motor Angle %d in degrees is: %.4f degrees\n', 1, motor_angle(1));
fprintf('Motor Angle %d in degrees is: %.4f degrees\n', 2, motor_angle(2));
fprintf('Motor Angle %d in degrees is: %.4f degrees\n', 3, motor_angle(3));

