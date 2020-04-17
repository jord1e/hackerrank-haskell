def main():
    input()
    x = [int(_) for _ in input().split()]
    w = [int(_) for _ in input().split()]
    numerator = sum([xx * ww for xx, ww in zip(x, w)])
    wm = numerator / sum(w)
    print('{:.1f}'.format(wm))


if __name__ == '__main__':
    main()
