def add_sub(n1, n2):
    add = n1 + n2
    sub = n1 - n2
    return (add, sub)


def main():
    (a, b) = add_sub(3,4)
    print((a,b))

if __name__ == "__main__":
    main()

