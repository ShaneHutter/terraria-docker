#!/usr/bin/env python3
"""Terraria config for container"""

from os     import environ
from sys    import argv

env_prefix = "terrconf_"
config_path = argv[ 1 ]

if __name__ == '__main__':
    config = ""
    for env in environ:
        if env.lower().startswith( env_prefix ):
            config += f"{env.lower()[len(env_prefix):]}={environ.get(env)}\n"
    with open( config_path , "w" ) as config_file:
        config_file.write( config )