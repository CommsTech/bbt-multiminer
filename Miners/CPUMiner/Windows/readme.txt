The following optimised builds are contained within the download. All are 64-bit, they
will not function on a 32-bit version of Windows.

Test each one to see what speed you get, the closer to your actual processor should result
in better performance. 

unitus_cpuminer-x64-generic.exe = Generic, will work anywhere

unitus_cpuminer-x64-core2.exe = Core2
unitus_cpuminer-x64-nehalem.exe = 1st generation Core processor microarchitecture
unitus_cpuminer-x64-sandybridge.exe = 2nd generation Core processor microarchitecture
unitus_cpuminer-x64-ivybridge.exe = 3rd generation Core processor microarchitecture
unitus_cpuminer-x64-haswell.exe = 4th generation Core processor microarchitecture
unitus_cpuminer-x64-broadwell.exe = 5th generation Core processor microarchitecture

unitus_cpuminer-x64-athlon64.exe = AMD K8 / Athlon 64
unitus_cpuminer-x64-athlon64-sse3.exe = AMD K8 / Athlon 64 + SSE3
unitus_cpuminer-x64-amdfam10.exe = AMD K10 / Phenom / Athlon II
unitus_cpuminer-x64-bdver1.exe = AMD K15 / Bulldozer
unitus_cpuminer-x64-bdver2.exe = AMD K15 / Piledriver
unitus_cpuminer-x64-bdver3.exe = AMD K15 / Steamroller
unitus_cpuminer-x64-bdver4.exe = AMD K15 / Excavator

Suggested options:

unitus_cpuminer-x64-core2.exe -a yescrypt -o stratum+tcp://us.nutty.one:16064 -O UisALPQCQYLfmxXZDo8NxSzGwq2RxVxZzG:x

or

unitus_cpuminer-x64-core2.exe -a argon2d -o stratum+tcp://us.nutty.one:15064 -O UisALPQCQYLfmxXZDo8NxSzGwq2RxVxZzG:x

Replace the Unitus address with YOUR wallet address (or I'll earn your rewards :-)

You can limit the number of CPU cores it uses by appending '-t x' to the command line, where 'x' is the number of
cores to use.



Usage: unitus_cpuminer [OPTIONS]
Options:
  -a, --algo=ALGO       specify the algorithm to use
                          argon2d   Argon2d
                          lyra2rev2 Lyra2re V2
                          skein     Skein
                          x11       X11
                          yescrypt  Yescrypt (default)
  -o, --url=URL         URL of mining server
  -O, --userpass=U:P    username:password pair for mining server
  -u, --user=USERNAME   username for mining server
  -p, --pass=PASSWORD   password for mining server
      --cert=FILE       certificate for mining server using SSL
  -x, --proxy=[PROTOCOL://]HOST[:PORT]  connect through a proxy
  -t, --threads=N       number of miner threads (default: number of processors)
  -r, --retries=N       number of times to retry if a network call fails
                          (default: retry indefinitely)
  -R, --retry-pause=N   time to pause between retries, in seconds (default: 30)
  -T, --timeout=N       timeout for long polling, in seconds (default: none)
  -s, --scantime=N      upper bound on time spent scanning current work when
                          long polling is unavailable, in seconds (default: 5)
      --coinbase-addr=ADDR  payout address for solo mining
      --coinbase-sig=TEXT  data to insert in the coinbase when possible
      --no-longpoll     disable long polling support
      --no-getwork      disable getwork support
      --no-gbt          disable getblocktemplate support
      --no-stratum      disable X-Stratum support
      --no-redirect     ignore requests to change the URL of the mining server
  -q, --quiet           disable per-thread hashmeter output
  -D, --debug           enable debug output
  -P, --protocol-dump   verbose dump of protocol-level activities
      --benchmark       run in offline benchmark mode
  -c, --config=FILE     load a JSON-format configuration file
  -V, --version         display version information and exit
  -h, --help            display this help text and exit