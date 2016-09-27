number_of_trials_max = 10000;
trial_result = zeros(number_of_trials_max,1);
p = zeros(366,1);

tic;
for n = 2:366 %Start with a group of size n people
  for trial_iteration = 1 : number_of_trials_max
    x = randi([1,365],n,1);  %bdays of all the people in this trial
    x = sort(x);            %Arrange in ascending order
    
    flag = 0;              %Until we find a matching pair, assume there isn't one.
    for i = 2:length(x)  %search for two that are equal.
      if x(i-1) == x(i)  %If two values are equal, then they have the same bday.
        flag = 1; %We found a pair.
        break;  %We only need it to be true once. We are looking for prob that there exists a pair. We can stop searching
      end
    end %Search for pairs
    trial_result(trial_iteration) = flag;
  end %Monte Carlo Iterations
  p(n) = sum(trial_result)/number_of_trials_max;  %Expiermental Probability. Number of times there was at least 1 pair over numer of trials
  
end %Change in group size
toc;
plot(p)
