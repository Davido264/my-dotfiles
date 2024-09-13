# TODO
- [ ] Setup waydroid

- [ ] Move android sdk and ndk stuff to asdf?
    - not posible, use sdkmanager installed manually
- [ ] Test with a fedora and arch container the size of shell_env and set caps to shell_env minimal and full
    - Mary Kondo styling? maybe styling will be just for full, but idk. I'm not going to run this on a server.


- [ ] make matugen/config.toml a template to dynamically add templates and avoiding create unnecesary directories

- [ ] Learn Reaper (3h video)

- [ ] Integrate the install script with my (future) webdav server

- [ ] S3 for backup files
    - Minecraft backup saves
    - Reaper backup configs
        - I think its best to use stow
    - Wallpapers?
        - [ ] Move the cloning of `~/Pictures/wallpapers` stuff to ansible

- [ ] Questions:
    - Shell environment and development tools are overlapping in some zones, will it be better if I merge them into one?
        - Also, they both can have the 'minimal' and 'normal' tier, but only shell environment have the 'fancy' tier
    - How do I detect on ansible that I'm running in Termux?

- [ ] Restore tabs (maybe use this to test browser usage)
    - [PiP on Top](https://github.com/Rafostar/gnome-shell-extension-pip-on-top)
        - Install extension, maybe see how to hide pip window from alt-tab

    - [Neovim workflow for Jupyter notebooks](https://www.reddit.com/r/neovim/comments/11pjj39/neovim_workflow_for_machine_learning_data/)

    - [Xournalpp Mobile](https://gitlab.com/TheOneWithTheBraid/xournalpp_mobile)
        - idk if use xournal format or create my own excallidraw client

    - [MacOS VM on docker](https://github.com/sickcodes/Docker-OSX)

    - [Full screen to new workspace](https://github.com/onsah/fullscreen-to-new-workspace?tab=readme-ov-file)
        - maybe fork it and add functionality to go to the first workspace with fullscreen window when a window is unfullscreened
    - [Capture the flag to learn](https://picoctf.org/)

    - [Cymatics downloads](https://cymatics.fm/pages/downloads-mirror)

    - [AWS Certificate Practice test results](https://app.exampro.co/student/attempts/74ff185e-49b3-4504-94a2-42c6e248f95f/review)

    - [How to make beats in Reaper](https://www.youtube.com/watch?v=lJAmSS-ndoU)

    - [REAPER Full tutorial (left on 16:15)](https://youtu.be/XRAYqWFeYR0?si=b2aZ3WuRctiy6xKD&t=975)

    - [Errors while managing time](https://www.youtube.com/watch?v=JrhO02qs5Is)



# Review
- [ ] Create README
    - Include the following command on the TODO after install:
        ```sh
        ./scripts/setup-rclone.sh
        gh auth login
        glab auth login
        ```


# Maybe?
- create queries for mcfunction

# Long term
- latex templates
- learn to latex properly
- maybe pandoc properly?
- Backup all (using cloud-drive)
- [...](file:///home/david/stuff_todo)


# Project queue
- Tetris on ncurses built with C (ongoing, waiting)
- waifu-wait-for (to explore goroutines) (waiting)
- Update cloud-sync (waiting)
    - Create a config file per directory
        - Set different providers
        - Configure encription
        - sync all directories with the config file
        - Upload to github
- Create a MFA cli for bitwarden (waiting)
    - Use bitwarden MFA field to generate codes
- alacritty-but-transparentizes-fullscreen
    - Fork alacritty and make it react to resize events to apply transparency only when full screen.
- create a playbook for `new-alma-vm` script
    - Copy all to a tmpdir
    - Remove tmpdir after execution
    - Run initial ansible with ansible-pull, set a git repository on the machine and use it as a remote repository
- Script that launches a popup (maybe rofi) and open a window layout
    - I saw a video in which a man did that on ipad OS using the shortcuts apps
        - It opened a menu, and then he chose a layout, and the windows opened
            - Example: Work:
                - A full screen terminal
                - A full screen browser
                - Full screen VSCode with a project open
                - Nautilus with a folder open
- Gnome plugin that automatically fullscreen a window when it was in split layout and the other window closes
    1. Split layout window 1 and 2
    2. Window 1 (or 2) closes
    3. The window left goes fullscreen
- Gnome plugin to consider Splitted Windows as One Window
    - There are 4 Apps open: Brave, Nautilus, Terminal and Okulus. But there are 2 Windows
    - Brave + Nautilus (splitted) is consider as one window
    - Terminal + Okulus (splitted) is consider as one window


# From Move-to-linux
idea de proyecto: waifu waiting
    waifu-wait-for <comand>
    ejecuta el comando, da un stderr y un stdout al comando en lugar de hacer que use la terminal,
    y muestra una animación en ascii art de una waifu esperando
    cuando el comando termine, se mostrará el stdout del comando, o el stderr si falla
    puedo usar go channels

# Restore web Pages:

https://github.com/overtone/overtone
https://www.youtube.com/watch?v=eUixwf64sHg (Overtone)

--------------------

https://www.youtube.com/@dataminingincae/videos
https://www.braveclojure.com/introduction/
https://github.com/vrtmrz/livesync-bridge
https://bulletjournal.com/blogs/bulletjournalist/on-stillness-with-ryan-holiday
https://repositorio.uta.edu.ec/

----- JAZZZZZZ --------
https://www.youtube.com/watch?v=yFUSp_yqo1A
https://www.youtube.com/watch?v=CH0xCGbnsgk

-----

https://developer.android.com/training/data-storage/room?hl=es-419
https://developer.android.com/codelabs/jetpack-compose-basics?hl=es-419#1
https://www.odoo.com/documentation/saas-13/howtos/backend.html#id3
https://www.gnu.org/software/coreutils/manual/coreutils.pdf


- [ ] ./roles/gaming/tasks/main.yml
    - TODO: Gaming on fedora
- [ ] ./roles/cli/tmux/tasks/main.yml
    - TODO: Install tmuxinator on fedora
- [ ] ./roles/devel/tasks/langs/flutter.yml
    - TODO: Install flutter w/o dying
- [ ] ./roles/devel/tasks/main.yml
    - TODO: Write this for Mason
- [ ] ./roles/devel/tasks/main.yml
    - TODO: Don't know, maybe first to mary kondo this
- [ ] ./roles/system/tasks/main.yml
    - TODO: Detect android/termux with ansible_facts
- [ ] ./roles/shell_env/tasks/main.yml
    - TODO: Think about this
- [ ] ./roles/desktop_env/tasks/gnome.yml
    - TODO: Install caffeine and fullscreen-to-new-workspace extensions on fedora
- [ ] ./roles/desktop_env/tasks/main.yml
    - TODO: Create a separate task for Nerd fonts to do it manually by default and using pacman in arch
- [ ] ./roles/desktop_env/tasks/main.yml
    - TODO: This requires an iso from MS Windows or a CD of Office 2007
- [ ] ./stow/neovim/.config/nvim/lua/plugins/tools/mason.lua
    - TODO: When I have the time, go for the option 4, https://github.com/nvim-treesitter/nvim-treesitter/issues/2900 had


- [ ] `L8TR`: fix `pacman`'s _Operation to slow_
    - [ ] what if I want to run the script and do other things? Can the script be resilient with this errors?
- [ ] `L8TR`: `gaming` role: make it able (or ready to be able) to run on fedora


# Notes:
`ansible_facts["architecture"]` (actualmente x86_64, con esto detecto si estoy en arm o no)
`ansible_facts["system_vendor"]` (actualmente Acer, al parecer da el fabricante)
`ansible_facts["product_name"]` (actualmente "Aspire F5-571T", el nombre del producto)

En endeavour os, mi `ansible_facts["distribution"]` da "Archlinux"
    distribuciones basadas en arch indican "Archlinux"

