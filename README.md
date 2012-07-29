Myplanet Workstation
====================

    git clone https://github.com/patcon/patcon_workstation.git
    cd patcon_workstation
    gem install bundler
    bundle install
    gem regenerate_binstubs
    librarian-chef install
    soloist

Known Issues
------------

  - Seems to be an unresolved issue with zip\_app for Colloquy. Fails with
    this while unzipping:

        STDERR: replace __MACOSX/Colloquy.app/Contents/Resources/._verbs.plist? [y]es, [n]o, [A]ll, [N]one, [r]ename:  NULL
