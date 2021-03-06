/*  */
/* This material is subject to the VoteHere Source Code Evaluation */
/* License Agreement ("Agreement").  Possession and/or use of this */
/* material indicates your acceptance of this Agreement in its entirety. */
/* Copies of the Agreement may be found at www.votehere.net. */
/*  */
/* Copyright 2004 VoteHere, Inc.  All Rights Reserved */
/*  */
/* You may not download this Software if you are located in any country */
/* (or are a national of a country) subject to a general U.S. or */
/* U.N. embargo or are deemed to be a terrorist country (i.e., Cuba, */
/* Iran, Iraq, Libya, North Korea, Sudan and Syria) by the United States */
/* (each a "Prohibited Country") or are otherwise denied export */
/* privileges from the United States or Canada ("Denied Person"). */
/* Further, you may not transfer or re-export the Software to any such */
/* country or Denied Person without a license or authorization from the */
/* U.S. government.  By downloading the Software, you represent and */
/* warrant that you are not a Denied Person, are not located in or a */
/* national of a Prohibited Country, and will not export or re-export to */
/* any Prohibited Country or Denied Party. */
// Copyright 2003 VoteHere Inc. All Rights Reserved.

#include "keyshare_test.h"
#include <vhti/gen_pubkey.h>
#include <stdio.h>
#include <malloc.h>
#include <support_test/test-data.h>

static void
expect_generate_pubkey (CuTest *tc,
                        const int expected_status,
                        KeyGenParameters const key_gen_parameters,
                        BroadcastValues const broadcast_values)
{
   char *public_key = 0;

   CuAssert (tc,
             (0 == expected_status ?
              "VHTI_generate_public_key should have accepted valid input"
              : "VHTI_generate_public_key should have rejected invalid input"),
             expected_status == VHTI_generate_public_key (key_gen_parameters,
             broadcast_values, &public_key));

   if (0 != expected_status)
   {
      if (public_key)
         fprintf (stderr, "Hmm: `%s'\n", public_key);
      CuAssertPtrEquals (tc, NULL, public_key);
   }
   else
   {
      CuAssertPtrNotNull (tc, public_key);
      CuAssert (tc,
                "VHTI_generate_public_key should have returned an Election Public Key.",
                0 == VHTI_validate (ELECTION_PUBLIC_KEY, public_key));
      VHTI_free (public_key);
   }
}

void
gen_pubkey_validation (CuTest *tc)
{
   expect_generate_pubkey (tc, 0, valid_key_gen_parameters, valid_broadcast_values);
   expect_generate_pubkey (tc, -1, invalid_key_gen_parameters, valid_broadcast_values);
   expect_generate_pubkey (tc, -1, valid_key_gen_parameters, invalid_broadcast_values);
}
