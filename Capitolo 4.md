# Teoria
```dataview
TABLE 
WHERE (chapter = "4" or chapter = "Any") and contains(tags, "evergreen")
```
# Known
```dataview
TABLE
WHERE (chapter = "4" or chapter = "Any") and known = "True"
```
# Unknown
```dataview
TABLE 
WHERE (chapter = "4" or chapter = "Any") and known = "False"
```
# Esercizi
```dataview
LIST
WHERE chapter = "4" and contains(tags, "esercizio")
```
