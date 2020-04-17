import re
n = int(input())
nre = re.compile(r'(\d{1,3})[- ](\d{1,3})[- ](\d{4,10})')
out = [input() for _ in range(n)]
for number in out:
  final = re.sub(nre, r'CountryCode=\1,LocalAreaCode=\2,Number=\3', number)
  print(final)