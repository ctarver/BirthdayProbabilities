# BirthdayProbabilities
What is the probability that 2 people in a group have the same birthday? To look at this, I made a monte carlo simulator in MATLAB to expiermentally determine the answer.

We consider groups of people of different sizes from 2 people up to 366 people. For each person, we assign a pseudorandom uniformly distrubted integer in the range of 1 to 365. Consider these numbers to be the birthday. For example, 1 = Jan 1st and 365 = Dec 31. We will simply form the random birthdays and check to see if anyone has the same birthday. We then repeat this 10000 times for each group number. As we test more random groups with random birthdays, the expiermental probability should approach the theoretical by the law of large nuumbers.

The plot of the result is shown in Result.PNG. We find that with 23 people, the probability of two people sharing a birthday is 50%. By 79 people, we have a probility of 99.999%. Considering that there are 365 days in the year, this seems to be like a low number. The result is counter intuitive, but it is correct.

Intuition seems to lead people to use the pidgeon hole principle to think about this problem. Consider there to be 365 discrete holes. Put a person in a random hole. How many people do I need to make it likely that I put two people in the same hole? This principle tells us that with 366 people, all holes would be filled and 1 hole would have to have two people. This is true, but the probability of having 365 random people each born on a different day is next to impossible. 

We must look at this problem from the perspective of the number of pairs of people. For example, if there are 3 people in a group, then there are 3 pairs. Person 1 and person 2. Person 1 and person 3. Person 2 and person 3.

If there are n people, then for every person there are n-1 people that each person can be paired with. In this scenario, order does not matter. Person 1 paired with person 3 is equivalent to person 3 paired with person 1. To prevent counting every pair twice, we divide by 2. The formula for counting the number of pairs of people becomes 1/2 * n * (n-1). 

Then for 23 people, we have 23*22/2 = 253 pairs of people.

Check out these pages for more:

https://betterexplained.com/articles/understanding-the-birthday-paradox/

https://en.wikipedia.org/wiki/Birthday_problem
