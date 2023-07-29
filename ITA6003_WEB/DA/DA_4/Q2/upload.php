<?php
    function isValidFileExtension($fileName) {
        $allowedExtensions = array('doc', 'docx', 'pdf');
        $fileExtension = pathinfo($fileName, PATHINFO_EXTENSION);
        return in_array($fileExtension, $allowedExtensions);
    }

    function isValidFileSize($fileSize, $maxSize) {
        return $fileSize <= $maxSize;
    }

    function isFileAlreadyUploaded($fileName, $targetDirectory) {
        $filePath = $targetDirectory . $fileName;
        return file_exists($filePath);
    }

    function showError($errorMessage) {
        echo "<p class='error'>$errorMessage</p>";
    }

    function showSuccess($successMessage) {
        echo "<p class='success'>$successMessage</p>";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>22MCA0223 - J Component File Upload</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            flex-direction: column;
            row-gap: 20px;
            justify-content: center;
            align-items: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .upload-form {
            max-width: 300px;
            background-color: #fff;
            padding: 20px;
            border: 5px double black;
        }

        .upload-form input[type="file"] {
            padding: 10px;
            margin-bottom: 10px;
            width: 100%;
        }

        .upload-form input[type="submit"] {
            background-color: white;
            color: black;
            padding: 10px 20px;
            border: 1px solid black;
            width: 100%;
        }

        .error {
            color: red;
            margin-top: 10px;
        }

        .success {
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="upload-form">
        <h2>Upload J Component File</h2>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
            <input type="file" name="file" id="file">
            <input type="submit" name="submit" value="Upload">
        </form>
    </div>

    <div class="error-space">
        <?php
        if ($_SERVER["REQUEST_METHOD"] === "POST") {
            $targetDirectory = "uploads/";
            $maxFileSize = 10 * 1024 * 1024;
        
            if (isset($_FILES["file"]) && $_FILES["file"]["error"] === UPLOAD_ERR_OK) {
                $fileName = $_FILES["file"]["name"];
                $fileSize = $_FILES["file"]["size"];
                $fileTmpName = $_FILES["file"]["tmp_name"];
        
                if (!isValidFileExtension($fileName)) {
                    showError("Invalid file extension. Only .doc, .docx, and .pdf files are allowed.");
                } elseif (!isValidFileSize($fileSize, $maxFileSize)) {
                    showError("File size exceeds the maximum limit of 10 MB.");
                } elseif (isFileAlreadyUploaded($fileName, $targetDirectory)) {
                    showError("File with the same name already exists. Please upload a different file.");
                } elseif (move_uploaded_file($fileTmpName, $targetDirectory . $fileName)) {
                    showSuccess("File uploaded successfully.");
                } else {
                    showError("Error uploading the file.");
                }
            } else {
                showError("Please select a valid file.");
            }
        }
        ?>
    </div>
</body>
</html>