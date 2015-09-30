# Sample Code

## Instructions:

    > A task object has 3 variables.
    >
    > * id : the identifier for the task
    > * duration : an int variable with the time units it will take to complete this task
    > * dependency_id : the identifier of the task that this task is dependent on. Null if no dependencies
    >
    > So if I have 3 task objects :
    > Task 1 with vars (id=1, duration=5, dependency_id=null)
    > Task 2 with vars (id=2, duration=2, dependency_id=1)
    > Task 3 with vars (id=3, duration=6, dependency_id=null)
    >
    > I need to find the max time to execute all tasks. Answer for data above : It would take 7 units for all of these tasks to complete (the max of any individual task).
    > Details of why the answer is 7.
    > Task 1 takes 5
    > Task 2 takes 7 (2 + 5)
    > Task 3 takes 6
    >
    > Please write the code in Ruby with a test case with the above data and email it back to me when complete. Please also make a note of any assumptions you make as part of the solution.
    >
    > cheers and good luck!

## To Run the Specs:

Just run

```
$> ruby task_test.rb && ruby task_timer_test.rb
```

from the root directory.

## Assumptions
  * Enforcing uniqueness of task id's is out of scope of this exercise

## Wrapping Up

Thanks again for your time, I can be contacted at justin@igrowbeards.com or by phone at 903-920-9514. I hope to hear from you soon.


