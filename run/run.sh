#! /bin/bash

sed -e "s/%RaftEnabled%/${RAFT}/; s/%ListenAddress%/${PORT}/; s/%RaftBind%/${BIND}/; s/%RaftNode1%/${NODE1}/; s/%RaftNode2%/${NODE2}/; s/%RaftNode3%/${NODE3}/" orchestrator-template-sqlite.conf.json > orchestrator.conf.json

cat orchestrator.conf.json

./orchestrator http
