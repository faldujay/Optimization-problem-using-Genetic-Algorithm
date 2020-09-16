function children_population = crossover(selected_population,N,pc,str_len)

    num = randperm(N,N);
    
    for i=1:N
        parent_set(i,:) = selected_population(i,:);
    end
    
    for i=1:2:N
        n = rand();
        if(n<pc)    %%% checking condition for cross over %%%
            m = randperm(str_len,2);
            m1=min(m);
            m2=max(m);
            
            %%% exchange bit of middle section %%%
            
            temp = parent_set(i,m1+1:m2);
            parent_set(i,m1+1:m2) = parent_set(i+1,m1+1:m2);
            parent_set(i+1,m1+1:m2) = temp;
        end
    end
    
    children_population = parent_set;

end