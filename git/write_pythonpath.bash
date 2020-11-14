#!/bin/bash

D=$(realpath pynaoqi-python2.7-2.5.7.1-linux64)
cd ..
echo "export PYTHONPATH=\${PYTHONPATH}:$D/lib/python2.7/site-packages" >> devel/setup.bash
echo "export DYLD_LIBRARY_PATH=\${DYLD_LIBRARY_PATH}:$D/lib" >> devel/setup.bash
