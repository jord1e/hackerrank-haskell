from collections import Counter

n = int(input())
x = [int(num) for num in input().split()]


def mean(data: [int]) -> float:
    return sum(data) / len(data)


def median(data: [int]) -> float:
    data = sorted(data)
    if len(data) % 2 == 0:
        mid = len(data) // 2
        return (data[mid - 1] + data[mid]) / 2
    else:
        return data[len(data) // 2]


def mode(data: [int]) -> int:
    data = Counter(data)
    get_mode = dict(data)
    mode = min([k for k, v in get_mode.items() if v == max(list(data.values()))])
    return mode


# print(mode(x))
print('{:.1f}\n{:.1f}\n{:d}'.format(mean(x), median(x), mode(x)))
