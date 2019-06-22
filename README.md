# GitList

This tool clones the repository entered and fetches the list of filenames from the repo. Creates a wordlist out of those names and uses Wfuzz to find working pages in a given URL.


## Prerequisites
* Be sure to import SSH keys if you want to clone a private repository or use username:password.
* Install [Wfuzz](https://github.com/xmendez/wfuzz) beforehand for fuzzing to work
