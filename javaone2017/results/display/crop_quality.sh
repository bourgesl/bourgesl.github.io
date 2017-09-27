#!/bin/bash
convert longer_shared_ductus_9/test_z_625k.ser.png -crop 200x120+320+340 -sample 800x480 test_z_625k-ductus_9.png
convert longer_shared_pisces_9/test_z_625k.ser.png -crop 200x120+320+340 -sample 800x480 test_z_625k-pisces_9.png
convert longer_shared_3x3/test_z_625k.ser.png -crop 200x120+320+340 -sample 800x480 test_z_625k-marlin_9.png

