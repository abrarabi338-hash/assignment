# Hidden Pattern – Duplicate & Position Logic

Data=[12,7,12,5,7,9,5,12,9,7,15]

counts={}
for value in Data:
    counts[value]=counts.get(value,0)+1
print("Duplicate Values:")
for value,count in counts.items():
    if count > 1:
        print(f"{value}->{count}times")




# Missing Number Logic

id=[1, 2, 3, 4, 5, 7, 8, 9, 10]

expected_sum=sum(range(1,11))
missing_id=expected_sum - sum(id)

print("Missing ID:",missing_id)