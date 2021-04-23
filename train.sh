nohup sh -c 'python3 train.py --name prova_ares --synset_embeddings_path data/embeddings/ares_synset_embeddings.txt > prova_ares.out && python3 train.py --name test_freeze_synset_embeddings --freeze_synset_embeddings_for 20 > test_freeze_synset_embeddings.out' > synset_embeddings.out & 

# TODO: WAIT FOR MICHELE TO GIVE US VALUE OF K
nohup python3 train.py --name test_split_adj_graph use_syntag_related_graph --train_synder_for K > test_split_adj_graph.out &

# TODO: WAIT FOR MICHELE TO GIVE US THE FILE PATH pagerank_path
nohup python3 train.py --name test_offline_pagerank --power_iterations 1 > test_offline_pagerank.out &