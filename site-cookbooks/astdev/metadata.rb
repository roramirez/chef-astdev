name              'astdev'
maintainer        'Rodrigo Ramirez Norambuena'
maintainer_email  'decipher.hk@gmail.com'
license           'Apache 2.0'
description       'Installs and configures enviroment Dev for Asterisk'
version           '0.1.0'

long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

recipe 'astdev','Main configuration'
depends 'apt'
depends 'git'
depends 'postgresql'
depends 'mysql'
depends 'database'
depends 'oh_my_zsh'

supports 'debian'
supports 'ubuntu'
