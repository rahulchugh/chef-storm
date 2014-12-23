name             "storm"
maintainer       "Rahul Chugh"
maintainer_email "rahul.chugh@gmail.com"
license          "Apache v2"
description      "Installs/Configures storm"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.1"

depends          "ark"
depends          "java"
depends          "runit", ">= 1.0.0"
depends          "zeromq"
