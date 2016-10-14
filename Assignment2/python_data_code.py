import csv

f = open("/Users/gracematuszyk/Downloads/Jail_Population_1997.csv","r")

#replaces the word jail for penitentiary and CF for Correctional Facility using a dictionary key
CORRECTION = {"Jail" : "Peniteniary", "CF" : "Correctional Facility"}

#for each line in the data file
for lines in f:
    
    #split the lines by commas
    words = lines.split(",")

    #create an empty list to hold changed words
    new_list =[]
    
    #searches for the key (Jail and CF) and replaces it with the new word if it is found
    for word in words:
        for key in CORRECTION.keys():
            if key in word:
                word = word.replace(key, CORRECTION[key])
        new_list.append(word)
        
    #reassembles the string and prints the new data
    new_data = " ".join(new_list)
    print(new_data)


