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
        <h2>MCQ Register</h2>
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div style="color: red">
                    @if($errors->any())
                        {{ implode('', $errors->all(':message')) }}
                    @endif
                      </div>
                    <form action="{{ route('client.mcq.test') }}" method="post">
                        {{ csrf_field() }}
                        <div class="col-md-12">
                            <label for="">Name</label>
                            <input type="text" name="name" id="" class="form-control" required>
                        </div>
                        <div class="col-md-12">
                            <label for="">Email</label>
                            <input type="email" name="email" id="" class="form-control" required>
                        </div>
                        <div class="col-md-12">
                            <label for="">Mobile Number</label>
                            <input type="text" name="mobile_number" id="" class="form-control" required>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-success">GO</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
