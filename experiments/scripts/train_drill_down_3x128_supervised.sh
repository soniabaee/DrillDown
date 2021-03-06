#!/bin/bash
set -x
set -e
export PYTHONUNBUFFERED="True"

LOG="experiments/train_logs/train_drill_down_3x128_sl.txt.`date +'%Y-%m-%d_%H-%M-%S'`"
exec &> >(tee -a "$LOG")
echo Logging output to "$LOG"


###############################################################
# Arguments:
# use_txt_context: use context encoder or not 
###############################################################

time python ./tools/train_region.py --cuda --use_txt_context=True --num_workers=1 --instance_dim=3 --n_feature_dim=128 --exp_name=vg_sl_pretrained_f128_i3
