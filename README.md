# habit: Break bad habits in the terminal

This is a script to help you break bad habits when using the terminal. Upon
running a command with `habit`, you will be prompted to see if you have addressed
all possible concerns/prerequisites before the command is executed.

## Installing

```shell
sudo make install
```

## Usage

Habit is mainly designed to be used in Bash aliases. After installing, put
something like the following in `~/.config/habits.csv`:

```csv
COMMAND,MESSAGE
git,Make sure you are on the right branch
git,Make sure your commit message is descriptive
git,Make sure your code works
rm,Make sure you really want to remove these files!
```

Modify your `.bashrc`:

```bash
alias git="habit git"
alias rm="habit rm"
```

```bash
$ git commit
 - Make sure you are on the right branch
 - Make sure your commit message is descriptive
 - Make sure the project builds
Did you address these concerns? (y/n):
```

## License

Copyright (c) 2025 Ben O'Neill <ben@oneill.sh>. This work is released under the
terms of the MIT License. See [LICENSE](LICENSE) for the license terms.
