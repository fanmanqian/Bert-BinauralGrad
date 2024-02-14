# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

EXP_HOME=$(cd `dirname $0`; pwd)/..
cd $EXP_HOME

DATA_DIR=/home/mfm_temp/litisheng/NeuralSpeech-master/BinauralGrad/data/trainset
SAVE_DIR=/home/mfm_temp/litisheng/NeuralSpeech-master/BinauralGrad/checkpoints/stage_two
mkdir -p $SAVE_DIR
export MKL_THREADING_LAYER=GNU
export PYTHONPATH=${EXP_HOME}/src:$PYTHONPATH

CUDA_VISIABLE_DEVICES=0,1,2,3 python src/binauralgrad/train.py $SAVE_DIR $DATA_DIR --binaural-type leftright --params params_stage_two
