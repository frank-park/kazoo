%%%-------------------------------------------------------------------
%%% @copyright (C) 2011, VoIP INC
%%% @doc
%%% NoAuthN module
%%%
%%% Authenticates everyone! PARTY TIME!
%%%
%%% @end
%%% @contributors
%%%   Karl Anderson
%%%   James Aimonetti
%%%-------------------------------------------------------------------
-module(cb_noauthn).

-export([init/0
         ,authenticate/1
        ]).

-include_lib("crossbar/include/crossbar.hrl").

%%%===================================================================
%%% API
%%%===================================================================
init() ->
    crossbar_bindings:bind(<<"v1_resource.authenticate">>, ?MODULE, authenticate).

authenticate(#cb_context{req_id=ReqId}) ->
    ?LOG(ReqId, "noauthn authenticating request", []),
    true.
