# Teoria
```dataview
TABLE 
WHERE (chapter = "5" or chapter = "Any") and contains(tags, "evergreen")
```
```dataview
TABLE
WHERE (chapter = "5" or chapter = "Any") and known = "True"
```
```dataview
TABLE 
WHERE (chapter = "5" or chapter = "Any") and known = "False"
```



# Esercizi
```dataview
LIST
WHERE chapter = "5" and contains(tags, "esercizio")
```

