LIBRARY()



SRCS(
    apply.cpp
    approx_calcer_querywise.cpp
    calc_score_cache.cpp
    ctr_helper.cpp
    cv_data_partition.cpp
    error_functions.cpp
    features_layout.cpp
    fold.cpp
    full_features.cpp
    greedy_tensor_search.cpp
    helpers.cpp
    index_calcer.cpp
    index_hash_calcer.cpp
    learn_context.cpp
    online_ctr.cpp
    online_predictor.cpp
    plot.cpp
    score_calcer.cpp
    split.cpp
    target_classifier.cpp
    tensor_search_helpers.cpp
    train.cpp
    train_one_iter_custom.cpp
    train_one_iter_log_lin_quantile.cpp
    train_one_iter_cross_entropy.cpp
    train_one_iter_map.cpp
    train_one_iter_multi_class.cpp
    train_one_iter_multi_class_one_vs_all.cpp
    train_one_iter_pair_logit.cpp
    train_one_iter_poisson.cpp
    train_one_iter_quantile.cpp
    train_one_iter_query_rmse.cpp
    train_one_iter_query_soft_max.cpp
    train_one_iter_rmse.cpp
    train_one_iter_user_per_object.cpp
    train_one_iter_user_querywise.cpp
    tree_print.cpp
    yetirank_helpers.cpp
    pairwise_leaves_calculation.cpp
    pairwise_scoring.cpp
    model_stats.cpp
)

PEERDIR(
    catboost/libs/data
    catboost/libs/eval_result
    catboost/libs/loggers
    catboost/libs/logging
    catboost/libs/metrics
    catboost/libs/model
    catboost/libs/overfitting_detector
    library/binsaver
    library/containers/2d_array
    library/containers/dense_hash
    library/digest/crc32c
    library/digest/md5
    library/dot_product
    library/fast_exp
    library/fast_log
    library/grid_creator
    library/json
    library/object_factory
    library/threading/local_executor
)

END()
