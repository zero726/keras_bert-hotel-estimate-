export DATA_DIR=上面自己建的语料路径
export BERT_BASE_DIR=预训练模型所在路径

python run_classifier.py \

 --task_name=mytask \

 --do_train=true \

 --do_eval=true \

 --data_dir=$DATA_DIR/ \

 --vocab_file=$BERT_BASE_DIR/vocab.txt \

 --bert_config_file=$BERT_BASE_DIR/bert_config.json \

 --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \

 --max_seq_length=128 \

 --train_batch_size=32 \

 --learning_rate=2e-5 \

 --num_train_epochs=3.0 \

 --output_dir=/output
