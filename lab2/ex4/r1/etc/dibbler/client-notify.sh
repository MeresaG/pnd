#!/bin/bash

# for each downlink interface...
ifn=0
prefix1=`printenv PREFIX1`
prefix2=`printenv PREFIX2`
prefix1len=`printenv PREFIX1LEN`
prefix2len=`printenv PREFIX1LEN`
#echo ${prefix%?}
#prefix=${prefix}
ip -6 addr flush dev eth1 scope global
ip -6 addr flush dev eth2 scope global
ip addr add "${prefix1}1/${prefix1len}" dev eth1
ip addr add "${prefix2}1/${prefix2len}" dev eth2

echo -e "\n\n \n ifn 1 prefix1 $prefix1 prefix1len $prefix1len addr ${prefix1}1/${prefix1len}"
echo -e "\n\n \n ifn 2 prefix2 $prefix2 prefix2len $prefix2len addr ${prefix2}1/${prefix2len}"

#for iface in eth1 eth2
#do
 #   ifn=$(( $ifn + 1 ))

   # echo -e "\n\n \n ifn $ifn prefix $prefix prefixlen $prefixlen addr ${prefix}${ifn}::1/${prefixlen} "
    # remove all global ipv6 addresses on the iface
   # ip -6 addr flush dev $iface scope global

   # ip addr add "${prefix}${ifn}:${ifn}::1/" dev $iface
   # echo "interface $iface"
#done