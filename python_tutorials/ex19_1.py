def guns_and_knives(guns, knives):
    print(f"\nI have {guns} guns")
    print(f"I have {knives} knives")
    weapons = guns + knives
    print(f"In total I have {weapons} weapons\n")


guns_and_knives(8, 12)

guns_and_knives(2*(3%5), 7)

print("How many guns do you have?")
turkeys=int(input('-->'))

print("How many knives do you have?")
chickens=int(input('-->'))

#weapons = turkeys + chickens

guns_and_knives(turkeys,chickens)
