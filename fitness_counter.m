function [fitness,x1,x2] = fitness_counter(population,N,b1,b2,x1_min,x2_min,x1_max,x2_max)
    
    for i=1:N
        
        %%% decode binary string %%%
        
        D1=bin2dec(num2str(population(i,1:b1)));
        D2=bin2dec(num2str(population(i,b1+1:b1+b2)));
        
        %%% finding value of x1 and x2 by mapping %%%
        
        x1(i) = x1_min + ((x1_max - x1_min)/(2^b1 -1))*D1;
        x2(i) = x2_min + ((x2_max - x2_min)/(2^b2 -1))*D2;
        
        %%% finding fitness value %%%
        
        fitness(i,1) = fun(x1(i),x2(i));
    end
       
end