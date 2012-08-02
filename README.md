Patcon's Workstation
====================

Inspired by [Pivotal Labs' workstation management
efforts][pivotal_workstation], I'm attempting to get my system
configuration captured in Chef recipes, so that I'm always only an hour
away from a fresh system when something goes awry.

Requirements
------------

  - Xcode [Download][apple-devtool-download]

We no longer recommend the osx-gcc-installer from GitHub, as it lacks
some proprietary Apple headers and tools that will result in many
Homebrew packages failing to compile.

Tested on Snow Leopard with Xcode 4.2 downloaded from [this
torrent](http://isohunt.com/torrent_details/337781505/xcode+snow+leopard).

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
  - Fix Kaspersky install process (Google Drive URL with attr).
  - Host Xcode installers?
  - Add recipes for the following:
    * Balsamiq Mockups
    * Boxee 
    * Google Cloud Printer
    * Emacs 
    * Evernote
    * Filezilla 
    * Grooveshark
    * GSDesktopHelper
    * Kindle
    * LibreOffice
    * nvALT
    * Quick Search Box
    * RightZoom
    * Total Terminal
    * TweetDesk
    * UnRarX
    * Wireshark
    * Yammer

<!-- Links -->
   [apple-orchard]:          https://github.com/pivotalexperimental/apple_orchard#readme
   [pivotal_workstation]:    https://github.com/pivotal/pivotal_workstation#readme
   [apple-devtool-download]: https://developer.apple.com/downloads/index.action
   [cli-tools-snow-leopard]: http://kitcambridge.tumblr.com/post/17778742499/installing-the-xcode-command-line-tools-on-snow-leopard 
