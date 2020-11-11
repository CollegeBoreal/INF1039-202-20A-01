#!/bin/bash

bash .scripts/participation.sh > .scripts/Participation.md 2>&1
bash .scripts/execution.sh > .scripts/Execution.md 2>&1
bash .scripts/notation.sh >> .scripts/Participation.md 2>&1
