#!/bin/bash
# runs a matlab script
echo "Run a matlab script"
time matlab -nodesktop -nodisplay -nosplash -r "qsmf_simulation_fft2(100); exit;"