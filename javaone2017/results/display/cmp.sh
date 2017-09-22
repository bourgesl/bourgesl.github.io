#!/bin/bash
cd ./cropped/
compare -verbose -metric pae crop_8x8.png crop_0x0.png cmp_8_0.png
compare -verbose -metric pae crop_8x8.png crop_1x1.png cmp_8_1.png
compare -verbose -metric pae crop_8x8.png crop_2x2.png cmp_8_2.png
compare -verbose -metric pae crop_8x8.png crop_3x3.png cmp_8_3.png
compare -verbose -metric pae crop_8x8.png crop_4x4.png cmp_8_4.png
compare -verbose -metric pae crop_8x8.png crop_6x6.png cmp_8_6.png

