#!/usr/bin/python
# -*- coding: utf-8 -*-

#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 3 of the License, or
#       (at your option) any later version.
#       
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#       
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.

import uuid

from sys import argv

def main():
    try:
        count = int(argv[1])
    except IndexError:
        count = 1
    except ValueError:
        print "Argument must be an integer. Aborting."
        return False;

    for i in range(count):
        print uuid.uuid4().hex

if len(argv) > 2:
    print """Syntax:
    php utid4gen.py [number-of-utids]
    Generate [number-of-utids] UTIDs, default 1."""
else:
    main()
