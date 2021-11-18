#! /usr/bin/python
def certificate(Workshop_List):
  if(checkCredits(Workshop_List) and checkDates(Workshop_List)) :
    print("True")
  else:
    print("False")

def checkDates(Workshop_List):
  for i in range(len(Workshop_List)):
    for j in range(len(Workshop_List[i])) :
      if ((i != j) and (Workshop_List[i][1] == Workshop_List[j][1])):
        if((Workshop_List[i][3] <= Workshop_List[j][4]) and (Workshop_List[i][3] >= Workshop_List[j][3])):
          return False
  return True

def checkCredits(Workshop_List):
  count = 0
  for i in range(len(Workshop_List)) :
    count += Workshop_List[i][2]
  return count >= 5