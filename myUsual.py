#!/usr/bin/python3
# -*- coding: utf8 -*-

from pprint import pprint


class VerboseOutput:

    def __init__(self, verbosity):
        self.verbosity = verbosity

    def prnt(self, message, verbosity=1, **args):
        ''' Print message if verbosity x '''
        try:
            message = '{0}\n{1}\n{0}'.format(args['sep'], message)
        except:
            pass
        if self.verbosity >= verbosity:
            print(message)

    def pprnt(self, obj, verbosity=1):
        ''' PPrint object if verbosity x '''
        if self.verbosity >= verbosity:
            pprint(obj)


if __name__ == '__main__':
    pass
