function population = population_generator(N,str_len)

    for i=1:N
        population(i,:) = randi([0 1],1,str_len);
    end

end