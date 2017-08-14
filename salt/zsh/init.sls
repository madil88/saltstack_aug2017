git:
  pkg:
    - installed

# Install ZShell

zsh:
  pkg:
    - installed

# Clone oh-my-zsh

oh_my_zsh:
  git.latest:
    - name: git://github.com/robbyrussell/oh-my-zsh.git
    - target: /home/vagrant/.oh-my-zsh
    - require:
      - pkg: .git
      - pkg: .zsh


