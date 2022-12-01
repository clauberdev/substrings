def substrings(str, dict)
    listsubstr = Hash.new(0)
    arr = str.downcase.split()
    for i in dict
        for j in arr 
            if j.include?(i) == true 
                listsubstr[i] += 1
                next
            end
        end
    end
    return listsubstr
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
