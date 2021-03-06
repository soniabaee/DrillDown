#!/bin/bash
set -x
set -e
export PYTHONUNBUFFERED="True"

LOG="experiments/train_logs/train_HRE_1280.txt.`date +'%Y-%m-%d_%H-%M-%S'`"
exec &> >(tee -a "$LOG")
echo Logging output to "$LOG"

###############################################################
# Arguments:
# use_txt_context: use context encoder or not
# tirg_rnn: actually almost the same as GRU
###############################################################

time python ./tools/train_image.py --cuda --use_txt_context=True --num_workers=1 --n_feature_dim=1280 --tirg_rnn=False --exp_name=vg_HRE_1280