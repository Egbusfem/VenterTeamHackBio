def hamming_distance(myusername, mytwitter_handle):
    # Start with a distance of zero, and count up
    distance = 0
    # Loop over the indices of the string
    L = len(myusername)
    for i in range(L):
        # Add 1 to the distance if these two characters are not equal
        if myusername[i] != mytwitter_handle[i]:
            distance += 1
    # Return the final count of differences
    return distance








def personal_details():
 name, email,slackusername,biostack,twitter_handle, = "muntaha","muntaha.bsbi589@iiu.pk","@muntaha","drug_developement_and_genomics","@muntaha111"

 example_dist = hamming_distance("@muntaha", "@munplmg")

 
 print(name,email, slackusername,biostack,twitter_handle,example_dist)


personal_details()
