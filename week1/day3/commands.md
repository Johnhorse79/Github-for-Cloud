# Week 1 Day 3 Commands

git checkout -b feature/day3-iac-setup
mkdir -p iac
nano iac/main.tf
git status
git add iac/main.tf
git commit -m "Add basic Terraform config for Day 3 IaC practice"
git push -u origin feature/day3-iac-setup
git checkout main
git pull origin main
