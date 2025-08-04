# Parameters
$sourceFolder = "C:\Users\alish\OneDrive - University of Glasgow\GenAI\Workshops\Augmented Academia\Workbooks\Workshop 1\Practical files\Renaming"
$rubricTemplate = Join-Path $sourceFolder "rubric_template.docx"
$courseCode = "ABC123"
$assignmentName = "Assignment1"
$courseName = "CourseName"

# Get all essay files
$essayFiles = Get-ChildItem -Path $sourceFolder -Filter "*_*_Essay.docx"

foreach ($file in $essayFiles) {
    # Extract Surname and ID
    $parts = $file.BaseName -split "_"
    $studentID = $parts[1]

    # Create target folder
    $targetFolder = Join-Path -Path $sourceFolder -ChildPath "${studentID}_${courseName}"
    if (-not (Test-Path $targetFolder)) {
        New-Item -Path $targetFolder -ItemType Directory | Out-Null
    }

    # Rename and move essay
    $newEssayName = "${courseCode}_${studentID}_${assignmentName}.docx"
    $newEssayPath = Join-Path -Path $targetFolder -ChildPath $newEssayName
    Move-Item -Path $file.FullName -Destination $newEssayPath

    # Copy and rename rubric
    $newRubricName = "${courseCode}_${studentID}_Rubric.docx"
    $newRubricPath = Join-Path -Path $targetFolder -ChildPath $newRubricName
    Copy-Item -Path $rubricTemplate -Destination $newRubricPath
}

Write-Host "✅ All files processed successfully."
