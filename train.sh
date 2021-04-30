
nohup python3 train.py --name test_split_adj_graph use_syntag_related_graph --train_synder_for 3 > test_split_adj_graph.out &

nohup python3 train.py --name test_offline_pagerank --offline_pagerank_path data\offline_ppr\hypo+hyper+similar+anto+derivationally.ppr-0.15.top5.tsv --power_iterations 1 > test_offline_pagerank.out &

# TODO TRAIN A MODEL FIRST ON SMALL DATASET
nohup python3 train.py --name test_unfreeze_synset_embeddings --resume_from checkpoints/fresh_trail_new_machine/checkpoint_val_f1=0.7077_epoch=004.ckpt --thaw_embeddings > test_unfreeze_synset_embeddings.out & 

# TODO RUN AFTER FETCHING BEST MODEL
nohup python3 train.py --name prova_ares --synset_embeddings_path data/embeddings/ares_synset_embeddings.txt > prova_ares.out &
