close all;
clear all;
load('bies.dat')

r_Theory = [1:0.5:10];
E_theory = 1.745;
dr_Theory = E_theory ./ r_Theory;

r = bies47(:,1);
Y = mean(bies47(:,2:4),2);

S_factor = 51.53 / E_theory;

delta_r = Y .* r;
X = S_factor * E_theory ./ (r.^2);
X1 = [ones(size(X),1) X];
[beta1 sigma1] = ols(Y, X1);
m1 = beta1(2); q1 = beta1(1);

% Alternative approaches?
%
%[mq S ] = polyfit(X,Y,1);
%m1 = mq(1); q1 = mq(2);
%
%[m1 q1] = TheilSen([X, Y]);

m1, q1
E_estimated = m1 * E_theory


plot(X,Y, '^r', "markerfacecolor", "red");
set (gca, "xaxislocation", "origin");
set (gca, "yaxislocation", "origin");
axis ([-2 6 -2 6])
hold on;
xr = X;
yr = m1 .* xr + q1;
plot(xr, yr, '-');


figure()
ye = (delta_r ./ S_factor) - q1 .* r / S_factor;
xe = r;
plot(xe, ye, '*');
hold on;
plot(r_Theory, dr_Theory, '-r')
return
