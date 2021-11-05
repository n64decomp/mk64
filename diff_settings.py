#!/usr/bin/env python3

def add_custom_arguments(parser):
    group = parser.add_mutually_exclusive_group(required=False)
    group.add_argument('-u', dest='lang', action='store_const', const='us',
            help="Set version to US.")

def apply(config, args):
    lang = args.lang or 'us'
    config['mapfile'] = f'build/{lang}/mk64.{lang}.map'
    config['myimg'] = f'build/{lang}/mk64.{lang}.z64'
    config['baseimg'] = f'baserom.{lang}.z64'
    config['makeflags'] = [f'VERSION={lang}']
    config['source_directories'] = ['.']


