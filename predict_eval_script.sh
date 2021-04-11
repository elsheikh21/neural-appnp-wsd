for BST_EXP_MDL in eacl_baseline_0/checkpoint_val_f1=0.7121_epoch=009.ckpt eacl_baseline_1/checkpoint_val_f1=0.6945_epoch=008.ckpt eacl_baseline_5/checkpoint_val_f1=0.6857_epoch=011.ckpt eacl_baseline_10/checkpoint_val_f1=0.6725_epoch=008.ckpt ewiser_eacl_baseline_0/checkpoint_val_f1=0.7209_epoch=008.ckpt ewiser_eacl_baseline_1/checkpoint_val_f1=0.7011_epoch=009.ckpt ewiser_eacl_baseline_5/checkpoint_val_f1=0.6989_epoch=010.ckpt ewiser_eacl_baseline_10/checkpoint_val_f1=0.6967_epoch=008.ckpt ewiser_baseline_10_alpha/checkpoint_val_f1=0.7143_epoch=003.ckpt ewiser_baseline_10_no_adj_train/checkpoint_val_f1=0.7143_epoch=008.ckpt exp10/checkpoint_val_f1=0.7407_epoch=005.ckpt exp11_1/checkpoint_val_f1=0.7363_epoch=002.ckpt; do
    for test_set in all senseval2 senseval3 semeval2007 semeval2013 semeval2015; do
        echo Testing model ${BST_EXP_MDL} on ${test_set} test-set
        CKPT_DIR="${BST_EXP_MDL%%/*}"
        echo ${CKPT_DIR}
        python predict.py --processor checkpoints/${CKPT_DIR}/processor_config.json \
            --model checkpoints/${BST_EXP_MDL} \
            --model_input data/preprocessed/${test_set}/${test_set}.json \
            --model_output output.txt
        python evaluate.py --processor checkpoints/${CKPT_DIR}/processor_config.json \
            --model checkpoints/${BST_EXP_MDL} \
            --model_input data/preprocessed/${test_set}/${test_set}.json \
            --model_output output.gold.txt \
            --evaluation_input data/original/${test_set}/${test_set}.gold.key.txt
    done
done
