Patcon's Workstation
====================

Inspired by [Pivotal Labs' workstation management
efforts][pivotal_workstation], I'm attempting to get my system
configuration captured in Chef recipes, so that I'm always only an hour
away from a fresh system when something goes awry.

Usage
-----

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

To Do
-----

  - Investigate how [Apple Orchard CI][apple-orchard] can help later.

<!-- Links -->
   [apple-orchard]:       https://github.com/pivotalexperimental/apple_orchard#readme
   [pivotal_workstation]: https://github.com/pivotal/pivotal_workstation#readme
