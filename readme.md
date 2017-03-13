In this version of "Bot saves princess", Princess Peach and bot's position are randomly set. Can you save the princess?

git clone https://github.com/vivdash/bot_saves_princess2.git

cd bot_saves_princess2/lib

ruby main.rb

Input Format

The first line of the input is N (<100), the size of the board (NxN). The second line of the input contains two space separated integers, which is the position of the bot.

The position of the princess is indicated by the character 'p' and the position of the bot is indicated by the character 'm' and each cell is denoted by '-' (ascii value: 45).

Output Format

Output only the next move you take to rescue the princess. Valid moves are LEFT, RIGHT, UP or DOWN

Sample Input

5
2 3
-----
-----
p--m-
-----
-----
Sample Output

LEFT
Resultant State

-----
-----
p-m--
-----
-----
Explanation: As you can see, bot is one step closer to the princess.
Scoring

Task

Complete the function nextMove which takes in 4 parameters - an integer N, integers r and c indicating the row & column position of the bot and the character array grid - and outputs the next move the bot makes to rescue the princess.

Testing

File lib/bot_saves_princess.rb wraps logic of lib/saves_princess.rb into a class to enable testing.

File spec/bot_saves_princess.rb tests that logic using Rspec by extending the Kernel module to capture the puts output of the next_move method.

Run tests with the command:

git clone https://github.com/vivdash/bot_saves_princess2.git
cd bot_saves_princess2
rspec spec/bot_saves_princess.rb
