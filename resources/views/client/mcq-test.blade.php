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
        <h2>MCQ Test</h2>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <form action="{{ route('client.mcq.test.submit') }}" method="post">
                        {{ csrf_field() }}
                        @php
                        $i = 1;    
                        @endphp
                        @foreach ($mcq_data['results'] as $key => $item)
                        
                        @php
                            $incorrect = $item['incorrect_answers'];
                            $correct = $item['correct_answer'];
                            array_push($incorrect,$correct);
                            // echo $item['correct_answer'];
                            shuffle($incorrect);
                            // print_r($incorrect);
                        @endphp
                        
                        <div class="col-md-12" style="    margin-bottom: 25px;">
                               {{ $i }}. {{ html_entity_decode($item['question']) }}
                        </label>

                        <div class="row">
                            @foreach ($incorrect as $ans)
                            <div class="col-md-3"> 
                                <input type="radio" name="question_{{ $key }}" id="" class="" value="{{ $ans }}"> {{ $ans }}
                            </div> 
                            @endforeach
                            
                        </div>
                        
                        </div>
                        @php
                            $i++;
                        @endphp
                       
                        @endforeach
                        <input type="hidden" name="user_id" id="" value="{{ $user_id }}">
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
