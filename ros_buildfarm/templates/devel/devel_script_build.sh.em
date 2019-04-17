# run all build steps
@{
import os
import re
section_id = 0
}@
@[for i, script in enumerate(scripts)]@
echo "Build step @(i + 1)"
@[  for j, line in enumerate(script.splitlines())]@
@[    if os.environ.get('TRAVIS') == 'true']@
@[      if line.startswith('echo "# BEGIN SECTION: ')]@
@{section_id += 1}@
TRAVIS_START_TIME=$(date +%s%N)
echo "travis_fold:start:devel-build-section@(section_id)"
echo "travis_time:start:devel-build-section@(section_id)"
@[      end if]@
@[    end if]@
@line
@[    if os.environ.get('TRAVIS') == 'true']@
@[      if line == 'echo "# END SECTION"']@
TRAVIS_END_TIME=$(date +%s%N)
TIME_ELAPSED_SECONDS=$(( ($TRAVIS_END_TIME - $TRAVIS_START_TIME)/1000000000 ))
echo "travis_time:end:devel-build-section@(section_id):start=$TRAVIS_START_TIME,finish=$TRAVIS_END_TIME,duration=$(($TRAVIS_END_TIME - $TRAVIS_START_TIME))"
echo "travis_fold:end:devel-build-section@(section_id)"
@[      end if]@
@[    end if]@
@[  end for]@
echo ""

@[end for]@
