clear all
clc

%% initialization of parameter %%

%%% boundry condition

x1_min = 0;     
x2_min = 0;
x1_max = 0.5;
x2_max = 0.5;

N = 6;                  %% initial population size

bit_size_1 = 5;         %% bit_size of each variable
bit_size_2 = 5;

str_len = bit_size_1 + bit_size_2;   %% string length

pc = 0.9;                %% crossover probability
pm = 0.05;               %% mutation probability

max_gen = 2000;          %% maximum generation


%% main code %%

%%% generate initial population %%%

population = population_generator(N,str_len);

for gen=1:max_gen

    %%% calculating fitness value %%%

    [fitness,x1,x2] = fitness_counter(population,N,bit_size_1,bit_size_2,x1_min,x2_min,x1_max,x2_max);
    
    %%% storing best solution %%%
    
    [best_fitness,index] = max(fitness);
    
    solution(gen,1:3)=[best_fitness x1(index) x2(index)];

    %%% roulette wheel selection %%%

    selected_population = reproduction(fitness,N,population);
        
    %%% crossover %%%

    children_population = crossover(selected_population,N,pc,str_len);

    %%% mutation %%%

    final_population = mutation(children_population,N,pm,str_len);
    
    population = final_population;
end


[final_solution,index] = max(solution(:,1));
final_solution
solution(index,2)
solution(index,3)













