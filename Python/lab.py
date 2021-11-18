#! /usr/bin/python
#Kyle Evangelisto

def past_tense(word):

    #Special Cases First
    if (word == "run"):
        return "ran"
    if (word == "buy"):
        return "bought"

    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = ['b', 'd', 'f', 'g', 'h', 'i', 'j',  'l',
            'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'z']
    word_array = [char for char in word]

    #Check for past tenses by seeing what last char in the string is
    if(word_array[-1] in consonants and word_array[-2] in vowels):
        return word + word_array[-1] + "ed"
    if(word_array[-2] in consonants and word_array[-1] == 'y'):
        return word[:-1] + "ied"
        return word[:-1] + "ied"
    if(word_array[-1] == 'e'):
        return word + "d"
    if(word_array[-1] == 'c'):
        return word + "ked"

    return word + "ed"

print(past_tense("jump"))
print(past_tense("laugh"))
print(past_tense("run"))
print(past_tense("plan"))
print(past_tense("shop"))
print(past_tense("buy"))
print(past_tense("follow"))
print(past_tense("agree"))
print(past_tense("change"))
print(past_tense("decide"))
print(past_tense("copy"))
print(past_tense("study"))
print(past_tense("panic"))
print(past_tense("attack"))
print(past_tense("play"))
print(past_tense("mimic"))
