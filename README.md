# 9 Hands-On Labs for Bash Scripting Lecture

These 9 labs are designed to reinforce the concepts from your lecture. They progress from beginner to intermediate, building on each other where possible.

Each lab includes:

- **Objectives:** What students will learn/practice.
- **Tasks:** Step-by-step instructions (students create scripts from scratch).
- **Requirements:** Simple (just a terminal; no external dependencies).
- **Estimated Time:** 20–45 minutes each.
- **Bonus Challenge:** For students to reach intermediate level.

Test thoroughly, add comments, and use `set -x` for debugging. You can share scripts for review.

---

## Lab 1: Hello World and Script Basics

**Objectives:** Understand script creation, shebang, execution, and basic output.

**Tasks:**

1. Create a file `hello.sh`.
2. Add the correct shebang.
3. Use `echo` to print "Hello, World!" and the current date (`date` command).
4. Make it executable and run it in different ways (`./hello.sh`, `bash hello.sh`).

**Expected Output:** Greeting + current date.

**Estimated Time:** 20 min.

**Bonus:** Add your name and hostname (`hostname`).

---

## Lab 2: Variables and Basic Operations

**Objectives:** Declare/use variables, quoting, basic arithmetic.

**Tasks:**

1. Create `variables.sh`.
2. Declare variables: `NAME="YourName"`, `AGE=25`, `CONSTANT=42` (uppercase).
3. Print messages using variable expansion (e.g., `"Hello $NAME, you are $AGE"`).
4. Perform arithmetic: `SUM=$((AGE + 10))` and print it.

**Estimated Time:** 25 min.

**Bonus:** Use parameter expansion `${NAME:-Default}` for fallback.

---

## Lab 3: User Input and Interaction

**Objectives:** Read user input, handle secrets.

**Tasks:**

1. Create `greeter.sh`.
2. Use `read -p` to ask for name and age.
3. Use `read -s` for a "password" (just echo it back safely).
4. Greet the user with their input: `"Welcome, $NAME! You are $AGE years old."`

**Estimated Time:** 25 min.

**Bonus:** Validate age is a number (use conditional check).

---

## Lab 4: Command-Line Arguments

**Objectives:** Handle positional parameters, count args.

**Tasks:**

1. Create `args.sh`.
2. Print script name (`$0`), all args (`$@`), and count (`$#`).
3. Require exactly 2 arguments (name and city); else print usage: `"Usage: ./args.sh <name> <city>"`.
4. Print `"Hello $1 from $2!"`.

**Estimated Time:** 30 min.

**Bonus:** Use `shift` to process more than 2 args in a loop.

---

## Lab 5: Working with Arrays

**Objectives:** Indexed and associative arrays, looping.

**Tasks:**

1. Create `arrays.sh`.
2. Declare an indexed array of 5 favorite fruits.
3. Declare an associative array (e.g., capitals: UK=London, France=Paris).
4. Print array length, all elements, and loop to display `"Fruit X: item"`.

**Estimated Time:** 35 min.

**Bonus:** Add user input to append to the array.

---

## Lab 6: Conditional Statements

**Objectives:** `if/elif/else`, `case`, file/string tests.

**Tasks:**

1. Create `checker.sh`.
2. Accept a filename as an argument.
3. Check if the file exists (`-f`), is a directory (`-d`), or readable.
4. Use `case` for a number input (1–3) to print "Low/Medium/High".
5. Add age check: `<18` minor, else adult.

**Estimated Time:** 40 min.

**Bonus:** Nested `if` for permission checks (`-r`, `-w`, `-x`).

---

## Lab 7: Loops

**Objectives:** `for`, `while`, `until`, `break/continue`.

**Tasks:**

1. Create `loops.sh`.
2. For loop: print numbers 1–10, skip multiples of 3 (`continue`).
3. While loop: countdown from user-input number.
4. Use `select` to create a simple menu (options: Hello, Date, Exit).

**Estimated Time:** 40 min.

**Bonus:** Read a file line-by-line (create a test file with names).

---

## Lab 8: Redirection, Pipes, and Debugging

**Objectives:** I/O redirection, error handling, debugging.

**Tasks:**

1. Create `io_debug.sh`.
2. Redirect stdout to `output.log`, stderr to `errors.log`.
3. Chain commands with pipes (e.g., `ls | grep .sh | wc -l`).
4. Add `set -euo pipefail` for strict mode.
5. Intentionally cause errors and debug with `set -x`.

**Estimated Time:** 30 min.

**Bonus:** Use `trap` for cleanup on exit.

---

## Lab 9: Comprehensive Project - Interactive System Tool

**Objectives:** Combine everything into a practical script (inspired by eBook real-life examples).

**Tasks:**

1. Create `sys_tool.sh`.
2. Build an interactive menu (using `select/case`) with options:
   - Greet user (input name).
   - Show system info (`uptime`, disk usage `df -h`).
   - Simple backup: copy a user-specified file to `backup_$(date +%F)/`.
   - Password generator (use `$RANDOM`, length from input).
   - Exit.
3. Use functions for each option, handle args/input, add error checks.

**Estimated Time:** 45 min.

**Bonus:** Add logging (redirect menu actions to a log file) and make it robust (validate inputs).

---

## Lab-to-Lecture Mapping

These labs directly map to your slide sections:

| Labs | Lecture Section |
|---|---|
| Labs 1–3 | Part 1: Basics |
| Labs 4–5 | Arguments/Arrays |
| Labs 6–7 | Control Flow |
| Lab 8 | Functions/Debugging/Redirection |
| Lab 9 | Practical Scripts |
