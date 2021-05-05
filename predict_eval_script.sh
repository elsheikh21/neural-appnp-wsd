for BST_EXP_MDL in  test_split_adj_graph/checkpoint_val_f1=0.XXXX_epoch=XXX.ckpt test_offline_pagerank_top10/checkpoint_val_f1=0.XXXX_epoch=XXX.ckpt test_offline_pagerank_top5/checkpoint_val_f1=0.XXXX_epoch=XXX.ckpt; do
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
