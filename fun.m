function y=fun(x1,x2)

    temp = x1 +x2 - 2*x1^2 - x2^2 + x1*x2;
    
    %%% convert to maximization %%%
    
    y = 1/(1+temp);

end