#!/bin/sh
### START: Environment variables ###
export PATH="$HOME/.local/bin:$PATH"
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
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export OMNISHARPHOME="$XDG_CONFIG_HOME/omnisharp"
export DOTNET_CLI_HOME="${XDG_DATA_HOME}/dotnet"
export NUGET_PACKAGES="${XDG_CACHE_HOME}/NuGetPackages"
export PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"
export ANDROID_USER_HOME="${XDG_DATA_HOME}/android"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export XCURSOR_PATH="/usr/share/icons:${XDG_DATA_HOME}/icons"
### END: Environment variables ###

id_like=$(grep -e "^ID_LIKE=" /etc/os-release | sed 's/ID_LIKE="\(.*\)"/\1/g')
id=$(grep -e "^ID=" /etc/os-release | sed 's/ID="\(.*\)"/\1/g')
is_android=$(test -x "/data/data/com.termux/files/usr/bin/bash")

echo "Gitlab personal access token: "
read -r TOKEN

if [ "$id" = "Arch" ] || [ "$id" = "arch" ] || [ "$id_like" = "Arch" ] || [ "$id_like" = "arch" ]; then
	pacman -Qn ansible 2>/dev/null 1>&2 || sudo pacman -Syu ansible --noconfirm --needed
	pacman -Qn git 2>/dev/null 1>&2 || sudo pacman -Syu git --noconfirm --needed
elif [ "$id" = "Fedora" ] || [ "$id" = "fedora" ] || [ "$id_like" = "Fedora" ] || [ "$id_like" = "fedora" ]; then
	dnf list installed ansible 2>/dev/null 1>&2 || dnf install -y ansible
	dnf list installed git 2>/dev/null 1>&2 || dnf install -y git
elif $is_android; then
    # from: https://github.com/nicenemo/termux-setup/blob/master/termux-install-ansible.sh
    # by: nicenemo
    # with MIT license
	yes | pkg upgrade
	yes | pkg install \
		python \
		python-dev \
		libffi \
		libffi-dev \
		openssl \
		openssl-dev \
		libsodium \
		clang \
		cmake
	# Install the latest Python package manager.
	# The version of pip that comes with Python may be outdated.
	pip install --upgrade pip
	pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U
	# The pynacl dependency originally did not install because it gave problems building dependencies
	pip install --upgrade pynacl
	pip install --upgrade ansible
else
	echo "Unsupported system" >&2
	echo "Supported Systems are:" >&2
	echo "      - Fedora Linux" >&2
	echo "      - Arch Linux or Arch based distros" >&2
	echo "      - Android (wip)" >&2
fi

mkdir -p "$HOME/Source/personal/dotfiles"
git clone "https://oauth2:${TOKEN}@gitlab.com/davido264/dotfiles.git" "$HOME/Source/personal/dotfiles"
cd "$HOME/Source/personal/dotfiles"

# ansible thing
ansible-galaxy install -r requirements.yml
if ! $is_android; then
    ansible-playbook -K local.yml
else
    echo "Android version still on development"
fi

# git clone git@github.com:Davido264/random-wallpapers.git ~/Pictures/wallpapers

git remote set-url origin git@gitlab.com:davido264/dotfiles.gi
