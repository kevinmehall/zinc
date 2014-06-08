# Zinc, the bare metal stack for rust.
# Copyright 2014 Vladimir "farcaller" Pouzanov <farcaller@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

test :doesnt_parse_empty_pt, should_fail: true do
  ''
end

test :doesnt_parse_node_with_no_body, should_fail: true do
  'node@root'
end

test :doesnt_parse_node_with_no_path, should_fail: true do
  'node@ {}'
end

test :doesnt_parse_node_with_broken_path, should_fail: true do
  'node@::root::::blah {}'
end

test :doesnt_parse_trailing_garbage, should_fail: true do
  'node@root {} node@root {}'
end
