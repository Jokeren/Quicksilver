hpcrun -o hpctoolkit-qs-measurements -e gpu=nvidia ./qs
hpcstruct --gpucfg yes hpctoolkit-qs-measurements
hpcstruct ./qs
hpcrun -o hpctoolkit-qs-measurements -e gpu=nvidia,sanitizer@100 -ck HPCRUN_SANITIZER_BUFFER_POOL_SIZE=1000 ./qs
hpcprof -S ./qs.hpcstruct hpctoolkit-qs-measurements 
