# Github-for-Cloud
DAY 1 — Install Git & First Repo
Concepts

Installing Git

Configuring username/email

What a repository is

Staging vs committing

Hands-On Assignment

Install Git.

Run:

git config --global user.name "Your Name"
git config --global user.email "you@example.com"


Create a folder: intro-git-lab

Run:

git init


Create a file hello.txt with 3 lines of text.

Stage & commit:

git add .
git commit -m "Initial commit - added hello.txt"


Run git log to confirm.

DAY 2 — Connect to GitHub
Concepts

Remote repos

SSH keys (optional)

git push / git pull

Hands-On Assignment

Create a new GitHub repo called intro-git-lab.

Connect local repo:

git remote add origin <repo-url>
git branch -M main
git push -u origin main


On GitHub, confirm your file exists.

Clone your repo into a new folder to practice:

git clone <repo-url>

DAY 3 — Branching for IaC Work
Concepts

Feature branches

Branch naming conventions

Hands-On Assignment

Create an IaC folder: iac/

Add an empty Terraform file:

main.tf


Create a branch:

git checkout -b feature/iac-setup


Add one Terraform block (dummy resource):

terraform {
  required_version = ">= 1.0.0"
}


Commit and push branch.

DAY 4 — Merge & Conflict Resolution
Concepts

Merging

Merge conflicts when two branches edit same line

Hands-On Assignment

Create two branches:

feature/update1

feature/update2

Change the same line in hello.txt on both branches.

Merge feature/update1 → main cleanly.

Merge feature/update2 → main and resolve conflict manually.

Commit conflict resolution.

DAY 5 — Logs, Diffs, and Visual Tools
Concepts

git log

git diff

GitLens + Git Graph

Hands-On Assignment

Install GitLens VS Code extension.

Install Git Graph extension.

Practice:

git log --oneline --graph --decorate --all
git diff
git diff HEAD~1 HEAD


Explore the commit graph visually.

📌 WEEK 1 MINI-PROJECT (1–2 hrs)

Create a repo with:

Terraform file(s)

Branching strategy

Merge with conflict resolution

Annotated commit history

📍 WEEK 2 — Collaboration, Issues, PRs, Forking, Rebasing

Weekly Goal: Master GitHub collaboration flow.

DAY 6 — Pull Requests (PRs)
Hands-On Assignment

Create a branch: feature/readme

Add a README.md with:

project purpose

branch strategy

Push branch.

Open a PR.

Add comments on your own PR.

Merge the PR via the UI.

DAY 7 — Revert & Reset (Undoing Mistakes)
Hands-On Assignment

Make 3 commits.

Use:

git revert <commit-id>
git reset --soft HEAD~1
git reset --hard HEAD~1


Practice recovering a deleted file using:

git checkout HEAD~1 -- filename

DAY 8 — GitHub Issues & Linking
Hands-On Assignment

Create an “Issue: typo in README”.

Create a branch: fix/readme-typo

Commit using:

git commit -m "Fix typo (#issue-number)"


Push branch & merge via PR.

Confirm issue closes automatically.

DAY 9 — Forking Workflow
Hands-On Assignment

Fork a public repo:

Suggested: sample Terraform repo

Clone your fork.

Create a small improvement.

Push branch.

Open a Pull Request to the upstream project.

DAY 10 — Interactive Rebase (Squashing Commit History)
Hands-On Assignment

Make 5 tiny commits on a feature branch.

Run:

git rebase -i HEAD~5


Squash into 1 commit.

Force-push safely:

git push --force-with-lease

📌 WEEK 2 MINI-PROJECT

Submit a PR to a public repo (even your own fork)
— with issue linking, squashed commits, and a clean history.

📍 WEEK 3 — Advanced Git, Security, Cleanup, Tags, Releases

Weekly Goal: Move from “intermediate Git user” → “DevOps-ready Git user.”

DAY 11 — Rebase vs Merge Deep Dive
Hands-On Assignment

Create two feature branches from an old commit.

Merge branch A → main.

Rebase branch B onto main.

Use GitLens to compare histories.

DAY 12 — .gitignore for IaC
Hands-On Assignment

Create a .gitignore with:

.terraform/
*.tfstate
*.tfstate.backup
*.log
.env


Test by creating ignored files and confirming they don’t appear in git status.

DAY 13 — Secrets, BFG Cleanup, GitHub Secrets
Hands-On Assignment

Accidentally commit a fake secret to simulate a mistake.

Use BFG Repo Cleaner (or git filter-repo) to remove it.

Configure GitHub Actions → Secrets.

Store a secret called MY_API_KEY.

DAY 14 — Tags & Releases
Hands-On Assignment

Create lightweight tag:

git tag v1.0.0


Create annotated tag:

git tag -a v1.1.0 -m "First release with Terraform module"


Push tags:

git push --tags


On GitHub → Create a Release based on v1.1.0.

DAY 15 — Branch Protection Rules
Hands-On Assignment

Turn on:

Require PR reviews

Disallow force push

Require status checks

Try to push to main (it should block).

Create a PR and go through required review flow.

📌 WEEK 3 MINI-PROJECT

Create a tagged release of a small Terraform module and secure the repo with branch protection.

📍 WEEK 4 — GitHub Actions (CI/CD), GitHub CLI, Final Project

Weekly Goal: Build end-to-end CI workflows used in cloud engineering.

DAY 16 — Intro to GitHub Actions
Hands-On Assignment

Create .github/workflows/hello.yml

Add:

name: Hello CI
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: echo "CI pipeline triggered!"

DAY 17 — Build Cloud CI Pipeline
Hands-On Assignment

Create a Terraform validation pipeline:

- uses: actions/checkout@v3
- uses: hashicorp/setup-terraform@v3
- run: terraform fmt -check
- run: terraform validate


Make the workflow run on all PRs.

DAY 18 — Code Reviews & Approvals
Hands-On Assignment

Create a branch modifying your IaC files.

Open a PR.

Add line-by-line review comments.

Resolve comments with commits.

Approve and merge.

DAY 19 — GitHub CLI (gh)
Hands-On Assignment

Install GitHub CLI.

Authenticate:

gh auth login


Commands:

gh repo create my-cli-repo
gh issue list
gh pr list
gh pr checkout <ID>

DAY 20 — Final Consolidation
Hands-On Assignment

Build an end-to-end DevOps workflow:

Create repo.

Add Terraform module.

Create a feature branch.

Open a PR.

Trigger GitHub Actions Terraform validation.

Fix issues and merge.

Tag release v1.0.0.

Close Issues automatically.

Export repo for your portfolio.

🎓 FINAL PROJECT (Portfolio-Grade)

Build a fully version-controlled Terraform module + CI/CD pipeline.

Requirements:

✔ Fully documented README
✔ Feature branch workflow
✔ Issue → Branch → PR → Merge
✔ Terraform module (simple infrastructure)
✔ GitHub Actions CI pipeline
✔ Tags & release
✔ Branch protection rules
✔ Clean commit history (rebased / squashed)
✔ No secrets in repo
✔ GitLens screenshot of your commit graph

This becomes a portfolio project you can link on resumes, LinkedIn, and cloud engineering applications.
