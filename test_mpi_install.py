#!/usr/bin/env python

"""
Tests for checking whether MPI is installed correctly.
"""

#---------------------------------------------
# Imports
#---------------------------------------------

import os
import unittest
import sys
import nose
import nose.tools as nt
import subprocess


class TestMPIInstallation(unittest.TestCase):
    def test_mpi_install(self):
        print "in test_mpi function"       
	if os.popen("mpirun --version").read() == '':
	    print "No MPI installation found."
        else:
            print os.popen("which mpiexec").read()


if __name__ == '__main__':
   unittest.main() 
