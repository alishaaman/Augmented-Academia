# Publishing to GitHub - Step by Step Instructions

## Prerequisites
1. Install Git: https://git-scm.com/download/win
2. Install GitHub Desktop: https://desktop.github.com/

## Steps to Publish

### Method 1: Using GitHub Desktop (Easiest)
1. Open GitHub Desktop
2. Click "Add an Existing Repository from your Hard Drive"
3. Choose this folder: `c:\Users\alish\OneDrive - University of Glasgow\GenAI\Workshops\augmented-academia-workbook`
4. Click "create a repository" when prompted
5. Fill in repository details:
   - Name: `augmented-academia-workbook`
   - Description: `Interactive workshop companion for University of Glasgow GenAI training`
6. Click "Publish repository" 
7. Choose to make it public or private
8. Click "Publish Repository"

### Method 2: Using Command Line (After installing Git)
Open PowerShell in this directory and run these commands:

```powershell
# Initialize git repository
git init

# Add all files
git add .

# Make initial commit
git commit -m "Initial commit: Augmented Academia Workbook"

# Add your GitHub repository as remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/augmented-academia-workbook.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## What will be published:
- index.html (your main workbook file)
- README.md (project documentation)
- .gitignore (git ignore rules)

## After Publishing:
Your repository will be available at: `https://github.com/YOUR_USERNAME/augmented-academia-workbook`

You can also enable GitHub Pages to host it as a website:
1. Go to repository Settings
2. Scroll to "Pages" section
3. Select "Deploy from a branch"
4. Choose "main" branch
5. Your site will be available at: `https://YOUR_USERNAME.github.io/augmented-academia-workbook`
