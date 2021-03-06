
#!/bin/bash
set -x
set -e
export PYTHONUNBUFFERED="True"

LOG="experiments/train_logs/train_R-RE_1280.txt.`date +'%Y-%m-%d_%H-%M-%S'`"
exec &> >(tee -a "$LOG")
echo Logging output to "$LOG"

###############################################################
# Some notes on the parameters:
# use_txt_context: do not use context encoder but concatenate the queries into a "paragraph"
# tirg_rnn: actually almost the same as GRU
###############################################################

python ./tools/train_region.py --cuda --use_txt_context=False --paragraph_model=True --num_workers=1 --n_feature_dim=1280 --exp_name=vg_R-RE_1280
