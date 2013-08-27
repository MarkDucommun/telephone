# TDD Telephone

In this exercise you will be writing tests to drive development by another team. You'll be writing Rspec tests -- the other team will be writing code. The final result should be a working Ruby application with full test coverage. At the same time, you will also be writing code for the other team's tests. You and the other team will be ping-ponging back and forth over Github/Hipchat.

Some rules:
- You are not allowed to verbally communicate with the other team
- You cannot write code that goes beyond the test (don't try to "guess" what the code should be)
- You cannot deliver code with failing tests

## Todo List

#### Description:
Create classes modeling a basic todo list app.

#### Requirements:
- A task should have attributes `title`, `description`, `status` (either incomplete or complete), and a `created_at` timestamp
- A task's default status is "incomplete"
- A task's created_at timestamp should be automatically set on initialization
- A task should have a method `mark_as_complete!` which sets its status to complete
- A task should have a method `mark_as_incomplete!` which sets its status to incomplete
- A task should have a method `complete?` which returns a boolean indicating whether or not it has been completed
- A todo list should have a title
- A todo list has many tasks
- Tasks can be added to the todo list using a method `add_task(task)`
- A todo list has a method `complete_all!` which marks all of its tasks as complete
- A todo list has a method `complete?` which returns a boolean indicating whether or not all of its tasks have been completed
- A todo list has a method `completed_tasks` which returns an array of its completed tasks
- A todo list has a method `incomplete_tasks` which returns an array of its incompleted tasks