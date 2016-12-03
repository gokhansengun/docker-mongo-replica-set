## Introduction

Creates a MongoDB Replica Set with 3 nodes using Docker.

## Usage

### Creating Replica Set

Run `make all` to create one primary and two slave nodes. This command will also form the MongoDB replica set.

### Importing a Sample Dataset

Run `make load-dataset` to load a dataset of +25K documents.

### Querying the Replica Set Status 

Run `make query-replica` to query the replica set.

## Todo

- Enhance `make all` and instead of sleeping for 5 seconds, query the nodes' status to take further actions
- Add sharding support 