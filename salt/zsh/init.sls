git:
  pkg:
    - installed

git-core:
  pkg:
   - installed
# Install ZShell

zsh:
  pkg:
    - installed

# Clone oh-my-zsh

oh_my_zsh:
 cmd.run:
  - name: 'wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh'
  - require:
    - pkg: git
    - pkg: git-core
    - pkg: zsh
