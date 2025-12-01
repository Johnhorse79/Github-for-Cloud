# Week 1 Day 2 Commands

git checkout -b feature/day2-branching
echo "This is Week 1 Day 2 – learning branches!" >> hello.txt
git add hello.txt
git commit -m "Update hello.txt with Day 2 branching message"
git push -u origin feature/day2-branching
git checkout main
git pull origin main
