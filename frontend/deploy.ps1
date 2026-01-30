# Zerodha Clone - Quick Deploy Script
# This script builds and prepares the frontend for deployment

Write-Host "================================" -ForegroundColor Cyan
Write-Host "Zerodha Clone - Build & Deploy" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Clean previous build
Write-Host "[1/5] Cleaning previous build..." -ForegroundColor Yellow
if (Test-Path "build") {
    Remove-Item -Recurse -Force build
    Write-Host "✓ Previous build cleaned" -ForegroundColor Green
} else {
    Write-Host "✓ No previous build found" -ForegroundColor Green
}
Write-Host ""

# Step 2: Install dependencies
Write-Host "[2/5] Checking dependencies..." -ForegroundColor Yellow
if (!(Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Yellow
    npm install
    Write-Host "✓ Dependencies installed" -ForegroundColor Green
} else {
    Write-Host "✓ Dependencies already installed" -ForegroundColor Green
}
Write-Host ""

# Step 3: Run production build
Write-Host "[3/5] Building production bundle..." -ForegroundColor Yellow
npm run build
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Build completed successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ Build failed!" -ForegroundColor Red
    exit 1
}
Write-Host ""

# Step 4: Display build info
Write-Host "[4/5] Build Information:" -ForegroundColor Yellow
$buildSize = (Get-ChildItem -Path build -Recurse | Measure-Object -Property Length -Sum).Sum / 1MB
Write-Host "  Total Size: $([math]::Round($buildSize, 2)) MB" -ForegroundColor Cyan
$fileCount = (Get-ChildItem -Path build -Recurse -File).Count
Write-Host "  Total Files: $fileCount" -ForegroundColor Cyan
Write-Host ""

# Step 5: Deployment options
Write-Host "[5/5] Deployment Options:" -ForegroundColor Yellow
Write-Host "  1. Local Preview: npm install -g serve && serve -s build" -ForegroundColor Cyan
Write-Host "  2. Vercel: vercel --prod" -ForegroundColor Cyan
Write-Host "  3. Netlify: netlify deploy --prod --dir=build" -ForegroundColor Cyan
Write-Host "  4. GitHub Pages: npm install -g gh-pages && gh-pages -d build" -ForegroundColor Cyan
Write-Host ""

Write-Host "================================" -ForegroundColor Green
Write-Host "Build Ready for Deployment! 🚀" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""
Write-Host "Build location: $(Get-Location)\build" -ForegroundColor Cyan
Write-Host "Read BUILD_GUIDE.md for detailed deployment instructions" -ForegroundColor Cyan
