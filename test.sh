#!/bin/bash

T_DIR=tests/swagger.io

# Reporting dir: start fresh
R_DIR=/tmp/report
rm -rf ${R_DIR} > /dev/null 2>&1
mkdir -p ${R_DIR}

/bin/rm -f ${T_DIR}/test-plan.jtl ${T_DIR}/jmeter.log  > /dev/null 2>&1

./run.sh -Dlog_level.jmeter=DEBUG \
	-n -t ${T_DIR}/petstore.swagger.io.jmx -l ${T_DIR}/petstore.swagger.io.jtl -j ${T_DIR}/jmeter.log \
	-e -o ${R_DIR}
