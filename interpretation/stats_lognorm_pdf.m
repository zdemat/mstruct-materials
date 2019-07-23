function y = stats_lognorm_pdf(x,sigma)
y = exp(-log(x).^2./(2.*sigma^2))./x/sigma/sqrt(2.*pi);
end
