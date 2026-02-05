# Teoria
```dataview
TABLE 
WHERE (chapter = "1" or chapter = "Any") and contains(tags, "evergreen")
```
# Known
```dataview
TABLE
WHERE (chapter = "1" or chapter = "Any") and known = "True"
```
# Unknown
```dataview
TABLE 
WHERE (chapter = "1" or chapter = "Any") and known = "False"
```
# Esercizi
```dataview
LIST
WHERE chapter = "1" and contains(tags, "esercizio")
```

