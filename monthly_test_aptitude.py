# 1-A
# 2-B
# 3-B
# 4-C
# 5-C
# 6-B
# 7-C
# 8-D
# 9-A
# 10-A
# 11-B
# 12-D
# 13-C
# 14-C
# 15-A
# 16-B
# 17-C
# 18-B
# 19-C
# 20-B
# 21-C
# 22-C
# 23-B
# 24-A
# 25-B

# LOGICAL TEST

size=5
for row in range(size):
	for column in range(size):
		if row == 0 or row==size-1 or column==0 or column==size-1:
			print("*",end="")
		else:
			print(" ",end="")
	print()
