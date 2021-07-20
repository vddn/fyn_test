<!DOCTYPE html>
<html lang="en">

<head>
    <title>MCQ</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
        <h2>MCQ Result</h2>
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                 <div class="col-md-12">
                    <label for="">Your Score Is :</label>
                    {{ $score }}
                 </div>
                
                </div>
            </div>
            <div class="col-md-12">
                <a href="{{ route('client.home') }}">Home</a>
            </div>
        </div>
    </div>

</body>

</html>
