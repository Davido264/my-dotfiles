export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-${HOME}/.local/state}"

export GOBIN="${XDG_DATA_HOME}/go/bin"
export GOPATH="${XDG_DATA_HOME}/go"

export ASDF_DIR="${XDG_DATA_HOME}/asdf"
export ASDF_DATA_DIR="${ASDF_DIR}"
export ASDF_CONFIG_FILE="${XDG_CONFIG_HOME}/asdf/config"

export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"

export ANSIBLE_HOME="${XDG_DATA_HOME}/ansible"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"

export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

export OMNISHARPHOME="$XDG_CONFIG_HOME/omnisharp"
export DOTNET_CLI_HOME="${XDG_DATA_HOME}/dotnet"
export NUGET_PACKAGES="${XDG_CACHE_HOME}/NuGetPackages"

export PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"

export ANDROID_USER_HOME="${XDG_DATA_HOME}/android"

export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"

export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_CONFIG_HOME}/java"
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export XCURSOR_PATH="/usr/share/icons:${XDG_DATA_HOME}/icons"

export NODE_REPL_HISTORY="${XDG_DATA_HOME}/node_repl_history"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/config"
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm"
export NPM_CONFIG_TMP="${XDG_RUNTIME_DIR}/npm"

export FZF_DEFAULT_OPTS="--delimiter=\t --exit-0 --select-1 --bind=ctrl-z:ignore,btab:up,tab:down --tabstop=1 --height=50% --layout=reverse"
export PATH="$HOME/.local/bin:$PATH:$GOBIN"
