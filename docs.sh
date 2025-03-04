#!/bin/bash

set -e

# Setup:
#
#     # Install OTP 24, then:
#     mix escript.install github elixir-lang/ex_doc

rebar3 compile
rebar3 as docs edoc
version=0.2.0
ex_doc "aws_signature" $version "_build/default/lib/aws_signature/ebin" \
  --source-ref v${version} \
  --config docs.config
