python3 train.py --name ewiser_baseline_0 --loss_type cross_entropy --power_iterations 0
python3 train.py --name ewiser_baseline_1 --loss_type cross_entropy --power_iterations 1
python3 train.py --name ewiser_baseline_5 --loss_type cross_entropy --power_iterations 5
python3 train.py --name ewiser_baseline_10 --loss_type cross_entropy --power_iterations 10

python3 train.py --name eacl_baseline_0 --loss_type binary_cross_entropy --power_iterations 0
python3 train.py --name eacl_baseline_1 --loss_type binary_cross_entropy --power_iterations 1
python3 train.py --name eacl_baseline_5 --loss_type binary_cross_entropy --power_iterations 5
python3 train.py --name eacl_baseline_10 --loss_type binary_cross_entropy --power_iterations 10

python3 train.py --name ewiser_eacl_baseline_0 --loss_type binary_cross_entropy --power_iterations 0
python3 train.py --name ewiser_eacl_baseline_1 --loss_type binary_cross_entropy --power_iterations 1
python3 train.py --name ewiser_eacl_baseline_5 --loss_type binary_cross_entropy --power_iterations 5
python3 train.py --name ewiser_eacl_baseline_10 --loss_type binary_cross_entropy --power_iterations 10