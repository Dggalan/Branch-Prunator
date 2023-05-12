# Git Branch Pruner Script

This is a simple bash script that automatically prunes git branches that have been deleted remotely. The script iterates over all directories within the current directory and if a directory contains a git repository, it checks for and deletes any local branches that are no longer present on the remote repository.

## How to Use

1. Download the `git-branch-pruner.sh` script.
2. Open your terminal and navigate to the directory containing the script.
3. Run `chmod +x git-branch-pruner.sh` to make the script executable.
4. Run `./git-branch-pruner.sh` to start the script.
5. The script will iterate over all directories within the current directory and prune any deleted remote branches in each git repository.

## Features

- Automatically detects git repositories within the current directory and iterates over them.
- Checks if the directory is a git repository before pruning branches.
- Checks for and deletes any local branches that have been deleted remotely.
- Outputs the number of pruned branches at the end of the script.

## Contributing

Contributions are welcome! If you find any bugs or have any suggestions, please open an issue or a pull request on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
