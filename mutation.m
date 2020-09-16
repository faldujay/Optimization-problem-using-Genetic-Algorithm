function final_population = mutation(children_population,N,pm,str_len)

    for i=1:N;
        for j=1:str_len
            n=rand();
            if(n<pm)
                if(children_population(i,j)==1)
                    children_population(i,j)=0;
                else
                    children_population(i,j)=1;
            end
        end
    end
    
    final_population = children_population;

end