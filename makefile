all:	compile run_test

compile:
	erlc *.erl

run_test:
	erl -eval 'eunit:test(make_change_test).' \
	-s init stop

play_game:
	erl -noshell -pa ebin \
	-env ERL_LIBS deps/ \
	-eval "game_runner:call()." \
	-s init stop

clean:
	rm -rf *.beam
	rm -rf erl_crash.dump