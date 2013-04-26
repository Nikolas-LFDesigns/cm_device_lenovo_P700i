import struct
import sys
from subprocess import call

usage = "usage: mkramdisk.py <file> <header>"

if len(sys.argv)<3:
    print usage
    exit()
f = open(sys.argv[1], "rb")
data = f.read()
f.close()
flen = len(data)

f = open(sys.argv[2], "rb")
data = f.read()
f.close()
length = struct.pack("<I", flen)
ulength = struct.unpack("BBBB", length)
print "injecting", hex(ulength[0]), hex(ulength[1]), hex(ulength[2]),hex(ulength[3])
dataout = data[:4] + length + data[2*4:]
udump = struct.unpack("BBBBBBBBBBBB", dataout[0:3*4])
strdump = ""
for e in udump:
    strdump+=" "+str(hex(e))
print "dump of first 12 bytes:", strdump
f = open(sys.argv[2]+".alt", "wb")
f.write(dataout)
f.close()

call("mv "+sys.argv[2]+".alt "+sys.argv[2], shell=True)
call("dd if=./"+sys.argv[1]+" >> ./"+sys.argv[2], shell=True)
call("mv "+sys.argv[2]+" "+sys.argv[1], shell=True)
