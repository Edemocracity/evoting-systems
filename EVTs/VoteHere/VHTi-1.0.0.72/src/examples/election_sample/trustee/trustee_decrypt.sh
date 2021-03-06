#!/bin/bash
# 
# This material is subject to the VoteHere Source Code Evaluation
# License Agreement ("Agreement").  Possession and/or use of this
# material indicates your acceptance of this Agreement in its entirety.
# Copies of the Agreement may be found at www.votehere.net.
# 
# Copyright 2004 VoteHere, Inc.  All Rights Reserved
# 
# You may not download this Software if you are located in any country
# (or are a national of a country) subject to a general U.S. or
# U.N. embargo or are deemed to be a terrorist country (i.e., Cuba,
# Iran, Iraq, Libya, North Korea, Sudan and Syria) by the United States
# (each a "Prohibited Country") or are otherwise denied export
# privileges from the United States or Canada ("Denied Person").
# Further, you may not transfer or re-export the Software to any such
# country or Denied Person without a license or authorization from the
# U.S. government.  By downloading the Software, you represent and
# warrant that you are not a Denied Person, are not located in or a
# national of a Prohibited Country, and will not export or re-export to
# any Prohibited Country or Denied Party.
set -e 

# Usage
if test $# -lt 3 ; then
   echo "Usage: trustee_decrypt.sh TRUSTEE_ID ELECTION_ID PRECINCT_ID"
   exit 2
fi
tid=$1
eid=$2
pid=$3

# Find last raw ballot box
nshuffles=$(ls ../transcript/precinct_$eid-$pid/tabulation/raw_ballot_box* | grep -c '')
rbb=../transcript/precinct_$eid-$pid/tabulation/raw_ballot_box_`expr $nshuffles - 1`.xml

# Partial decrypt of raw ballot box
echo "TRUSTEE $tid: partially decrypting raw_ballot_box_`expr $nshuffles - 1` ... "
vhti_call partial_decrypt \
   $rbb \
   ../transcript/precinct_$eid-$pid/config/blank_ballot_signed.xml \
   ../transcript/config/public_key_leo.xml \
   ../transcript/config/committed_trustee_$tid.xml \
   ./secret_share_trustee_$tid.xml \
   ./random_state.xml \
   ./_tpd.xml ./random_state.xml 
perl ../perl/append_to.pl \
   ./_tpd.xml \
   ../transcript/precinct_$eid-$pid/tabulation/trustee_partial_decrypts.xml \
   "AuthorityPartialDecrypts"
rmdir transcript  # BUGBUG: for some reason, unsnarf drops a directory, unnecessarily
rmdir precinct_$eid-$pid  # BUGBUG: for some reason, unsnarf drops a directory, unnecessarily
rmdir tabulation # BUGBUG: for some reason, unsnarf drops a directory, unnecessarily
echo "... done partially decrypting ballot box."

# Check partial decrypt of raw ballot box
echo -n "TRUSTEE $tid: checking partially decrypted raw_ballot_box_`expr $nshuffles - 1` ... "
vhti_call check_partial_decrypt \
   $rbb \
   ./_tpd.xml \
   ../transcript/precinct_$eid-$pid/config/blank_ballot_signed.xml \
   ../transcript/config/public_key_leo.xml \
   ./_result.xml
if test "$(cat _result.xml)" != "<CheckResults>0:Success</CheckResults>" ; then
   echo -n "FAILED: "
   cat _result.xml
   exit 2
fi
echo "done."

# Clean-up
rm -f ./_*
