theta = 0:pi/40:pi;                   % polar angle
phi = 0:pi/20:2*pi;                   % azimuth angle

[phi,theta] = meshgrid(phi,theta);    % define the grid

degree = 6;
order = 1;
amplitude = 0.5;
radius = 5;

Ymn = legendre(degree,sin(theta(:,1)));
Ymn = Ymn(order+1,:)';
yy = Ymn;

for kk = 2: size(theta,1)
    yy = [yy Ymn];
end

yy = yy.*cos(order*phi);

order = max(max(abs(yy)));
rho = radius + amplitude*yy/order;

r = rho.*sin(theta);    % convert to Cartesian coordinates
x = r.*cos(phi);
y = r.*sin(phi);
z = rho.*cos(theta);

figure
s = surf(x,y,z);

light               % add a light
lighting gouraud    % preferred lighting for a curved surface
axis equal off      % set axis equal and remove axis
view(40,30)         % set viewpoint
rotate3d on
camzoom(1.5)        % zoom into scene