#!/bin/sh
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

cd "$( dirname $( dirname "${BASH_SOURCE[0]}" ))"

docker build . -f scripts/open-saves-builder-base.Dockerfile -t open-saves-builder-base:latest
docker tag open-saves-builder-base:latest gcr.io/triton-for-games-dev/open-saves-builder-base:testing