0x05-Processes and Signals

Resources
Read or watch:

Linux PID
Linux process
Linux signal
Process management in linux
man or help:

ps
pgrep
pkill
kill
exit
trap
Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

General
What is a PID
What is a process
How to find a process’ PID
How to kill a process
What is a signal
What are the 2 signals that cannot be ignored

Tasks
0. What is my PID
mandatory
Write a Bash script that displays its own PID.
1. List your processes
mandatory
Write a Bash script that displays a list of currently running processes.
Requirements:
Must show all processes, for all users, including those which might not have a TTY
Display in a user-oriented format
Show process hierarchy
2. Show your Bash PID
mandatory
Using your previous exercise command, write a Bash script that displays lines containing the bash word, thus allowing you to easily get the PID of your Bash process
Requirements:
You cannot use pgrep
The third line of your script must be # shellcheck disable=SC2009 (for more info about ignoring shellcheck error here)
3. Show your Bash PID made easy
mandatory
Write a Bash script that displays the PID, along with the process name, of processes whose name contain the word bash.
Requirements:
You cannot use ps
4. To infinity and beyond
mandatory
Write a Bash script that displays To infinity and beyond indefinitely.
Requirements:
In between each iteration of the loop, add a sleep 2
5. Don't stop me now!
mandatory
We stopped our 4-to_infinity_and_beyond process using ctrl+c in the previous task, there is actually another way to do this.
Write a Bash script that stops 4-to_infinity_and_beyond process.
6. Stop me if you can
mandatory
Write a Bash script that stops 4-to_infinity_and_beyond process.
7. Highlander
mandatory
Write a Bash script that displays:

To infinity and beyond indefinitely
With a sleep 2 in between each iteration
I am invincible!!! when receiving a SIGTERM signal
Make a copy of your 6-stop_me_if_you_can script, name it 67-stop_me_if_you_can, that kills the 7-highlander process instead of the 4-to_infinity_and_beyond one.

Terminal #0
8. Beheaded process
mandatory
Write a Bash script that kills the process 7-highlander.
9. 9-process_and_pid_file (Advanced)
This Bash script creates the file /var/run/myscript.pid containing its PID, displays specific messages upon receiving signals, and deletes the file when receiving SIGQUIT or SIGTERM signals.

Usage: sudo ./9-process_and_pid_file

10. 10-manage_my_process (Advanced)
This Bash script manages the manage_my_process script. It starts, stops, or restarts the script and creates/deletes the PID file.

Usage: sudo ./10-manage_my_process {start|stop|restart}

11. 11-zombie (Advanced)
This C program creates 5 zombie processes and displays their PIDs.

Usage: gcc 11-zombie.c -o zombie and ./zombie

Note: The C program needs to be compiled before executing.
