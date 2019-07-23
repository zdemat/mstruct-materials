function [y] = stats_lognorm_pdf(x,sigma)
%------------------------------------------------------------
% STATS_LOGNORM_PDF  Calculates probability distribtion
%                    function for the log-normal distribution.
%
% [y] = stats_lognorm_pdf(x,sigma)
%
% x     - a vector of points where the log-normal PDF will
%         be calculated
% sigma - shape parameter of the log-normal distribution
% 
% y - calculated values of the log-normal PDF
%
% note: Returns distribution with median M = 1.
% 
% note: If a scaled PDF for a distribution with median M
%       is calculated, remember to normalize the result
%       dividing by M.
%  
% example: Distribution with median M=3.5 and sigma=0.45
%
%           M = 3.5; sigma = 0.45;
%           x = logspace(log10(0.1),log10(20.0),200);
%           p = stats_lognorm_pdf(x/M,sigma) / M; 
%           plot(x,p)
%
% version 1.0, 24.7.2019, (c) Zdenek Matej, FreeBSD License
%------------------------------------------------------------
y = exp(-log(x).^2./(2.*sigma^2))./x/sigma/sqrt(2.*pi);
end
