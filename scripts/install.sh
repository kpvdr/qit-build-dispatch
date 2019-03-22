#! /bin/bash

. ./scripts/common.sh

DEFAULT_CONFIG_PATH="${CMAKE_INSTALL_PREFIX}/etc/qpid-dispatch"

cd ${BUILD_DIR}
make install

# Config files
# We need 3:
# One for standalone node
# Two for 2-node
# All are based on default config file
cp ${DEFAULT_CONFIG_PATH}/qdrouterd.conf ${DEFAULT_CONFIG_PATH}/qdrouterd.conf.bak
cp ${DEFAULT_CONFIG_PATH}/qdrouterd.conf ${DEFAULT_CONFIG_PATH}/qdrouterd.node1.conf
cp ${DEFAULT_CONFIG_PATH}/qdrouterd.conf ${DEFAULT_CONFIG_PATH}/qdrouterd.node2.conf
sed -f ${JOB_DIR}/dispatch.sed -i ${DEFAULT_CONFIG_PATH}/qdrouterd.conf
sed -f ${JOB_DIR}/dispatch.node1.sed -i ${DEFAULT_CONFIG_PATH}/qdrouterd.node1.conf
sed -f ${JOB_DIR}/dispatch.node2.sed -i ${DEFAULT_CONFIG_PATH}/qdrouterd.node2.conf

