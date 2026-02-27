# Tips for using copilot in emacs

## Copilot key reference

| key | command | 
|-----|---------|
| `<tab>`   | copilot-accept-completion | 
| `C-<tab>` | copilot-accept-completion-by-word | 

## Copilot chat reference

* `(copilot-chat)` open chat
* `(copilot-chat-hide)` hide chat 
* `(copilot-chat-set-model)` select AI model
* `(copilot-chat-save)` save chat to a file
* `(copilot-chat-load)` load chat from a file
* `(copilot-chat-send-to-buffer)` send a code block to a buffer
* `(copilot-chat-list)` open buffer list
* `(copilot-chat-explain/review/doc/fix/optimize/test)` explain/... selected code

## Copilot chat key reference

| key | command |
|-----|---------|
| `C-c C-c` | send prompt |
| `C-c C-l` | `(copilot-chat-list)` |

## Copilot chat buffer list reference

| key | command |
|-----|---------|
| `<ret>` | (de)select buffer |
| `C-c C-c` | clear buffer list |
| `g` | refresh buffer list |
