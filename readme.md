# Containerized Emacs programming environments

## Installation

### 1. Create definition

Create a directory DIR_NAME and populate with definition files:

- container.def
- dot-emacs
- pepare.sh

Prepared examples:

- [Emacs 30.1 with R 4.5](r45)

- [Emacs 30.1 with Python 3.12](py312) 

- [Emacs 30.1 with Python 3.12 and R 4.5](pyr2026) 


### 2. Build container image

Uses DIR_NAME/container.def to create an apptainer container.

```
bash scripts/build.sh DIR_NAME
```

### 3. Install config files and packages 

Runs DIR_NAME/prepare.sh in the container and creates a script 
for running emacs in the container.

```
bash scripts/prepare.sh DIR_NAME
```

### 4. Run emacs in the container

```
bash DIR_NAME/out/run-emacs.sh 
```

### 5. Copilot

#### Sources:

* https://github.com/copilot-emacs/copilot.el
* https://github.com/chep/copilot-chat.el

#### Steps:

1. When running emacs for the first time:
	a. Run `M-x package-refresh-contents`
	b. Run `M-x copilot-install-server` 
	c. Restart emacs

2. Run `M-x copilot-login` to login

3. Run `M-x copilot-chat` for chat

#### Copilot key reference

| key | command | 
+-----+---------+
| `<tab>`   | copilot-accept-completion | 
| `C-<tab>` | copilot-accept-completion-by-word | 

#### Copilot chat reference

* `(copilot-chat-hide)` hide chat 
* `(copilot-chat-set-model)` select AI model
* `(copilot-chat-save)` save chat to a file
* `(copilot-chat-load)` load chat from a file
* `(copilot-chat-send-to-buffer)` send a code block to a buffer
* `(copilot-chat-list)` open buffer list
* `(copilot-chat-explain/review/doc/fix/optimize/test)` explain/... selected code

#### Copilot chat key reference

| key | command |
+-----+---------+
| `C-c C-c` | send prompt |
| `C-c C-l` | `(copilot-chat-list)` |

#### Copilot chat buffer list

| key | command |
+-----+---------+
| `<ret>` | (de)select buffer |
| `C-c C-c` | clear buffer list |
| `g` | refresh buffer list |

### Troubleshooting

#### `ERROR  : Installation issue: starter-suid doesn't have setuid bit set`

If `run-emacs.sh` fails with this error,
then apptainer may need the `--fakeroot` option to run successfully.

```
apptainer run --fakeroot -B ... 
```

#### `Error (use-package): Failed to install copilot: https://melpa.org/packages/...`

In emacs, try running `M-x package-refresh-contents`, this will update the melpa file list.
