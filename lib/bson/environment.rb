# Copyright (C) 2009-2014 MongoDB Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module BSON

  # Provides static helper methods around determining what environment is
  # running without polluting the global namespace.
  #
  # @since 2.0.0
  module Environment
    extend self

    # Determine if we are using JRuby or not.
    #
    # @example Are we running with JRuby?
    #   Environment.jruby?
    #
    # @return [ true, false ] If JRuby is our vm.
    #
    # @since 2.0.0
    def jruby?
      defined?(JRUBY_VERSION)
    end

    # Determin if we are using Rubinius or not.
    #
    # @example Are we running with Rubinius?
    #   Environment.rubinius?
    #
    # @return [ true, false ] If Rubinius is our vm.
    #
    def rubinius?
      (defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby') == 'rbx'
    end
  end
end
