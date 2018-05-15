/**
 * Created by jojoldu@gmail.com on 2018. 1. 3.
 * Blog : http://jojoldu.tistory.com
 * Github : http://github.com/jojoldu
 */


var main = {
    init : function () {
        var _this = this;
        $('#btn-save').on('click', function () {
            _this.save();
        });
        
        /*페이스북 로그인 상태 확인*/
        FB.getLoginStatus(function(response) {
        	facebookLoginStatus(response);
        });
    },
    save : function () {
        var data = {
            title: $('#title').val(),
            author: $('#author').val(),
            content: $('#content').val()
        };

        $.ajax({
            type: 'POST',
            url: '/posts',
            dataType: 'json',
            contentType:'application/json; charset=utf-8',
            data: JSON.stringify(data)
        }).done(function() {
            alert('성공');
            location.reload();
        }).fail(function (error) {
            alert(error);
        });
    },
    facebookLoginStatus : function(response){
    	console.log(response);
    }
};

main.init();