CKPT_DIR='ewiser_eacl_ppnp'
CKPT_MDL='checkpoint_val_f1=0.6791_epoch=007.ckpt'
python predict.py --processor checkpoints/${CKPT_DIR}/processor_config.json \
    --model checkpoints/${CKPT_DIR}/${CKPT_MDL} \
    --model_input data/preprocessed/all/all.json \
    --model_output output.txt;
python evaluate.py --processor checkpoints/${CKPT_DIR}/processor_config.json \
    --model checkpoints/${CKPT_DIR}/${CKPT_MDL} \
    --model_input data/preprocessed/all/all.json \
    --model_output output.gold.txt \
    --evaluation_input data/original/all/ALL.gold.key.txt