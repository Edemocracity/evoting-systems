from util_test import *
from hart_ballot_test import *
from hart_ballot import *
import Ballot

reset()
const.oval_width_inches = .34
const.oval_height_inches = .2
const.dpi = 151
const.ballot_dpi = 151
const.allowed_tangent = .05
const.minimum_contest_height_inches = 1.0 
const.vote_target_horiz_offset_inches = .07
const.allowed_corner_black_inches = .185

ball = HartBallot('testdata/hart1.jpg', Ballot.Extensions())
results = ball.ProcessPages()
contests = ball.pages[0].template.contests

print "#machine generated by testdata/hart1.py and hand checked"
print "_, mg = CONCHO("
for contest in contests:
    print '    (%d, %d, %d, %d, "%s", "%s",' % (
        contest.x, contest.y,
        contest.w, contest.h,
        contest.prop, contest.description
    )
    for choice in contest.choices:
        v, w, a = (None,) * 3
        for res in results:
            x, y = res.coords
            if x == choice.x and y == choice.y:
                v, w, a = res.was_voted, res.is_writein, res.ambiguous
        print '        (%d, %d, "%s", %s, %s, %s),' % (
            choice.x, choice.y,
            choice.description,
            v, w, a
        )
    print '    ),'
print ')'