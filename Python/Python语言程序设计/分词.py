
#CalHamletV1.py

def getText():
    txt = open(r"D:\books\Tools\Python\Hamlet.txt","r").read()
    txt = txt.lower()
    for ch in '!@"#$%^&()*+,-./:;<=>?@[]{}~':
        txt = txt.replace(ch," ")
    return txt 

hamletTxt = getText()
# print(hamletTxt)
words = hamletTxt.split()
# print(words)
counts = {}
for word in words:
    counts[word] = counts.get(word,0) + 1
items = list(counts.items())
# print(items)
items.sort(key = lambda x:x[1],reverse=True)  #reverse = True 标识有大到小排序

for i in range(10):
    word,count = items[i]
    print("{0:<10}{1:>5}".format(word,count))
