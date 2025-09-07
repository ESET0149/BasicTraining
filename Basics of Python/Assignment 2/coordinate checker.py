COORDINATES = [(1,2),(2,4),(4,2),(3,3)]

print(len(COORDINATES))
for i in range(0,4):
    print(COORDINATES[i],i)
    x = COORDINATES[i][0]
    y = COORDINATES[i][1]
    if x>y:
        print("x coordinate is greater than y")
    elif y>x:
        print("y coordinate is greater than x")
    else:
        print("both coordinates have same value")
    
