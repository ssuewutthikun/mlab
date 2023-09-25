import sys
#gobal parameter
result=[]
resultRound=[] #result of Round
advisor_list = ['T6', 'T2', 'T1', 'T4', 'T3', 'T5'] # ผลการจัดเรียงมาจาก SQL Random
project_list = ['G2', 'G4', 'G7', 'G1', 'G5', 'G3', 'G6']# ผลการจัดเรียงมาจาก SQL Random
setting = [
    ['T6', 1, 2],
    ['T2', 2, 1],
    ['T1', 1, 1],
    ['T4', 1, 3],
    ['T3', 2, 2],
    ['T5', 1, 2]
]# T1 คือชื่อที่ปรึกษา, จำนวนกลุ่มที่ปรึกษา, จำนวนกรรมการที่รับ

def searchresultRound(GroupSearch,AdvisorSearch):
    try:
        if(resultRound[0]==GroupSearch):
            if(resultRound[1]==AdvisorSearch):
                return True
            elif(resultRound[2]==AdvisorSearch):
                return True
            elif(resultRound[3]==AdvisorSearch):  
                return True
            else:
                return False 
        else:
            return False
    except (IndexError):
        return False
def searchsetting(AdvisorCommitSearch,position): #position 0=Advisor    position 1=Commitee
    for settingItem in setting:
        if settingItem[0] == AdvisorCommitSearch:
            if(settingItem[1]>0 and position==1): #เป็นที่ปรึกษาได้ 
                return True
            elif(settingItem[2]>0 and position==2):
                return True
            else:
                return False
    return False
def updatesetting_adviser(keyUpdate):
    for item in setting:
        if item[0] == keyUpdate:
            item[1] = int(item[1])-1
            break
def updatesetting_committee(keyUpdate):
    for item in setting:
        if item[0] == keyUpdate:
            item[2] = int(item[2])-1
            break



for projItem in project_list:
    #'G2', 'G4', 'G7', 'G1', 'G5', 'G3', 'G6'
    resultRound.append(projItem)
    for advisorItem in advisor_list: #add adviser
        sresult =searchresultRound(projItem,advisorItem)
        if(not(sresult)):
            if(searchsetting(advisorItem,1)):#add ที่ปรึกษา
                resultRound.append(advisorItem) 
                updatesetting_adviser(advisorItem)
                break 

    for advisorItem in advisor_list: #add commitee-1
        sresult =searchresultRound(projItem,advisorItem)
        if(not(sresult)):
            if(searchsetting(advisorItem,2)):#add commitee-1
                resultRound.append(advisorItem) 
                updatesetting_committee(advisorItem)
                break  

    for advisorItem in advisor_list: #add commitee-2
        sresult =searchresultRound(projItem,advisorItem)
        if(not(sresult)):
            if(searchsetting(advisorItem,2)):#add commitee-2
                resultRound.append(advisorItem) 
                updatesetting_committee(advisorItem)
                print(resultRound)
                result.append(resultRound)
                resultRound =[]
                break                 


# print(result)
print(setting)
exit()
