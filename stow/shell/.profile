export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-${HOME}/.local/state}"

export GOBIN="${XDG_DATA_HOME}/go/bin"
export GOPATH="${XDG_DATA_HOME}/go"

export WINEPREFIX="${XDG_DATA_HOME}/wine"

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
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"

export ANDROID_USER_HOME="${XDG_DATA_HOME}/android"
export ANDROID_SDK_ROOT="${XDG_DATA_HOME}/android-sdk"
export ANDROID_HOME="${ANDROID_SDK_ROOT}"
export ANDROID_EMULATOR_HOME="${XDG_DATA_HOME}/android-emulator"
export ANDROID_NDK="${ANDROID_SDK_ROOT}/ndk"
export ANDROID_NDK_HOME="${ANDROID_NDK}"

export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"

# export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_CONFIG_HOME}/java"
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export XCURSOR_PATH="/usr/share/icons:${XDG_DATA_HOME}/icons"

export NODE_REPL_HISTORY="${XDG_DATA_HOME}/node_repl_history"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/config"
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm"
export NPM_CONFIG_TMP="${XDG_RUNTIME_DIR}/npm"

export FZF_DEFAULT_OPTS="--delimiter=\t --exit-0 --select-1 --bind=ctrl-z:ignore,btab:up,tab:down --tabstop=1 --height=50% --layout=reverse"
export TMUX_PLUGIN_MANAGER_PATH="$XDG_DATA_HOME/tmux/plugins"
export TMUXIFIER="$TMUX_PLUGIN_MANAGER_PATH/tmuxifier"
export TMUXIFIER_LAYOUT_PATH="$XDG_DATA_HOME/tmuxifier"
export PATH="$HOME/.local/bin:$PATH:$GOBIN:$TMUXIFIER/bin"
