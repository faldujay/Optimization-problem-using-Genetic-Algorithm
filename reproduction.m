function selected_population = reproduction(fitness,N,population)

    fitness_sum = sum(fitness);
    prob_selection = fitness./fitness_sum;
    
    for i=1:N
        n = rand();
    
        comulative_prob = 0;
        for j=1:N
            comulative_prob = comulative_prob + prob_selection(j);
            if(comulative_prob > n)
                break;
            end
        end
        selected_population(i,:) = population(j,:);
    end
end
