-module(fast_key).

-export([get/2]).
-export([get/3]).
-export([set/3]).

get(Key, Proplist) ->
  get(Key, Proplist, undefined).

get(Key, Map, Default) when is_map(Map) ->
  case maps:find(Key, Map) of
    {ok, Value} ->
      Value;
    _ ->
      Default
  end;
get(Key, Proplist, Default) when is_list(Proplist) ->
  case lists:keyfind(Key, 1, Proplist) of
    false -> Default;
    {_, Value} -> Value
  end.

set(Key, Value, Map) when is_map(Map) ->
  maps:put(Key, Value, Map);
set(Key, Value, Proplist) when is_list(Proplist) ->
  lists:keystore(Key, 1, Proplist, {Key, Value}).
