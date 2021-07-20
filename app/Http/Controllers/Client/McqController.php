<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\UserScore;
use Illuminate\Http\Request;

class McqController extends Controller
{
    //
    public function index(Request $request){
        $url = "https://opentdb.com/api.php?amount=10";
        $json = file_get_contents($url);
        $json_data = json_decode($json, true);
        $data['mcq_data'] = $json_data;
        $request->session()->put('mcq_data', $json_data);

        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required|unique:users',
            'mobile_number' => 'required',
        ]);

        $new_user = new UserController;
        $user_id = $new_user->add_user($validated);
        $data['user_id'] = $user_id;
        return $this->_display('client.mcq-test',$data);
    }

    public function mcq_result(Request $request){
        $reqdata = request()->input();
        $mcq_data = $request->session()->get('mcq_data');
        $score = 0;

        foreach ($mcq_data['results'] as $key => $value) {
            if(isset($reqdata['question_'.$key]) && $reqdata['question_'.$key] == $value['correct_answer']){
                $score = $score+1;
            }
        }

        $user_id = isset($reqdata['user_id']) ? $reqdata['user_id'] : '';
        
        if($user_id != ''){
            $this->add_score($user_id,$score,$mcq_data['results'],$reqdata);
        }
        $data['score'] = $score;
        return $this->_display('client.mcq-test-result',$data);
    }

    public function add_score($user_id,$score,$all_ans,$user_ans){
        $add_score = new UserScore;
        $add_score->users_id = $user_id;
        $add_score->score = $score;
        $add_score->all_questions_and_ans = json_encode($all_ans);
        $add_score->all_user_ans = json_encode($user_ans);
        $add_score->created_at = date('Y-m-d H:i:s');
        $add_score->save();
        return;
    }

    public function _display($view, $data  = [])
    {
        return view($view, $data);
    }
}
