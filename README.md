# assure-toi d'être à jour sur main
git switch main
git pull --rebase

ajoute dans le fichier html
<h1>Doliprane</h1>


Branche A — SEO (change le titre & le H1)

git switch -c feature/seo
# Édite index.html :
#   <title>Doliprane</title>       -> <title>Doliprane | Site officiel</title>
#   <h1>Doliprane</h1>             -> <h1>Doliprane – Site officiel</h1>

git add index.html
git commit -m "feat(seo): titre & h1 optimisés (site officiel)"
git push -u origin feature/seo


Branche B — Design (change LA MÊME LIGNE différemment)
git switch main
git switch -c feature/design
# Édite index.html (même lignes, autre version) :
#   <title>Doliprane</title>       -> <title>Doliprane • v1</title>
#   <h1>Doliprane</h1>             -> <h1 class="title">Doliprane App</h1>

git add index.html
git commit -m "feat(ui): nouveau h1 stylé + titre v1"
git push -u origin feature/design

3) Fusionner A puis B dans main → conflit garanti
git switch main

# 3.1 Merge de la branche SEO (devrait passer en fast-forward)
git merge feature/seo
git push

# 3.2 Merge de la branche Design (⚠️ conflit)
git merge feature/design
# Git s'arrête et t'indique un conflit sur index.html

