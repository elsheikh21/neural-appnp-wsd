for BST_EXP_MDL in prova_ares/checkpoint_val_f1=0.7165_epoch=004.ckpt test_freeze_synset_embeddings/checkpoint_val_f1=0.7099_epoch=008.ckpt; do
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
