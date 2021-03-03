# Question
We want to prevent a container from being able to fork other processes/services in the same container.

What ways can you think of to do this?

#### Answer:

To prevent Container in Docker, we will list out steps to limit using pam_limits(nproc) means limits number of process for a user