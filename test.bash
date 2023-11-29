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
[ "$?" = 1 ]      || ng ${LINENO}
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

### CALCULATOR TEST ###
out=$(echo "1 + 1" | ./calculator)
[ "${out}" = "Result: 2" ] || ng ${LINENO}

out=$(echo "7 + 3" | ./calculator)
[ "${out}" = "Result: 10" ] || ng ${LINENO}

out=$(echo "5 - 4" | ./calculator)
[ "${out}" = "Result: 1" ] || ng ${LINENO}

out=$(echo "6 * 8" | ./calculator)
[ "${out}" = "Result: 48" ] || ng ${LINENO}

out=$(echo "9 / 2" | ./calculator)
[ "${out}" = "Result: 4.5" ] || ng ${LINENO}

out=$(echo "a + 1" | ./calculator)
[ "${out}" = "Input Error: 不明な入力です。" ] || ng ${LINENO}

out=$(echo "1 + a" | ./calculator)
[ "${out}" = "Input Error: 不明な入力です。" ] || ng ${LINENO}

out=$(echo "1 a 1" | ./calculator)
[ "${out}" = "Error: その演算子は無効です。 適切な演算子 +, -, *, / を入力してください。" ] || ng ${LINENO}

out=$(echo "1 + 1 + 1" | ./calculator)
[ "${out}" = "Error: 無効な式です。 適切な式は 1 + 2 のように入力してください。" ] || ng ${LINENO}

out=$(echo "1 / 0" | ./calculator)
[ "${out}" = "Error: ゼロでの割り算は無効です。" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
