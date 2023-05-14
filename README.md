Presentation based on my repos (https://github.com/ValeryAndreevichPushkarev)

### Structure


designs - directory with OpenLane projects (copy content to OpenLane/designs)

	Run synthesis:
	(
		./flow.tcl -design Selector_test
		./flow.tcl -design Selector_test -synth_explore 
	)
	Run testbenches:

	iverilog *.v
	vvp a.out - only for windows

	there are 1 project:
	1) Selector test - test of characteristics of selector based on positional encoding


results - synthesis results for all types of projects

	With synthesis log, metrics and -synth_explore.
### Short analysis of the result

		1)Best area: 2189 Best Gate Count: 339 Best Delay : 978
		2)Best area: 2174 Best Gate Count: 337 Best Delay : 1037
		3)Best area: 2184 Best Gate Count: 340 Best Delay : 993

Analysis of results:
1) Fastest 8 bit selector based on ucdavis presentation (https://www.ece.ucdavis.edu/~bbaas/281/notes/Handout.verilog6.pdf) (selector_test_4)
2) Fastest selector based on a tree with fixed branching factor (FO-4) (selector_test_5)
3) Fastest selector based on a tree with fixed branching factor (FO-16) (selector_test_6)

For (3) we have **20% less area** for smallest delay compared with (1) and (2). Also, results for **best area and delay is the same for (3)**.

Check why I dont have FO-16 synthesis in arithmetic cores.

### Testbenches:
	Smoke test (select first lane)
  	User test (select N lane)
	10 self-check tests with random numbers (and check lines nearby)
