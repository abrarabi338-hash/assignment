import json
# with open("abu.json","r") as f:
#     student=json.load(f)
#     print("ID:",student["id"])
#     print("Name:",student["name"])
#     print("Age:",student["age"])
#     print("course:",student["course"])
#     print("City:",student["city"])



student={
        "id": 101,
        "name": "arjun",
        "age": 22,
        "course":"python",
        "city":"kochi"  
        }
with open("abu.json","w")as file:
        json.dump(student,file,intent=4)

