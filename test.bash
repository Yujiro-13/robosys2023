#!/bin/bash
# SPDX-FileCopyrightText: 2023 Yujiro Shito
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	ret=1
}

ret=0

### I/O TEST ###
out=$(echo 0 | ./plus)
[ "${out}" = 0 ] || ng ${LINENO}

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(seq -5 | ./plus)
[ "${out}" = "Error" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo a | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Error" ] || ng ${LINENO}

out=$(echo A | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Error" ] || ng ${LINENO}

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Error" ] || ng ${LINENO}

out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "Error" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
