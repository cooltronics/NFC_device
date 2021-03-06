##
# This file is part of the libndef project.
#
# Copyright (C) 2009, Emanuele Bertoldi (Card Tech srl).
# Copyright (C) 2011, Romuald Conty
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
# more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>
##

TEMPLATE = subdirs

# Needed to ensure that things are built right, which you have to do yourself :(
CONFIG += ordered

# All the projects in your application are sub-projects of your solution
SUBDIRS = libndef \
          tools	\
		  app

# Use .depends to specify that a project depends on another.
tools.depends = libndef

