#!/bin/bash
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e
# Doesn't get sourced in a login shell, according to bash's man page and confirmed
# via experiment, so we have to source it manually.
echo "ATTEMPT TO SOURCE .bashrc"
source "/root/.bashrc"
echo "FINISHED SOURCING"
set -x
echo "ATTEMPT TO RUN PYTHON"
python owlbot.py
