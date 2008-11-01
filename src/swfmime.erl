-module(swfmime).
-export([getmime/1]).

getmime(<<"CWS", _/binary>>) -> swf;
getmime(<<"FWS", _/binary>>) -> swf;
getmime(<<X:16/unsigned-integer-little, 46:16/unsigned-integer-little, _/binary>>) when X =:= 16; X =:= 15; X =:= 14 -> abc;
getmime(<<>>) -> empty;
getmime(X) when is_binary(X) -> unknown.