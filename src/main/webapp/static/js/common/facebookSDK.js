
function fbLogin() {
	// 로그인 여부 체크
	FB.getLoginStatus(function(response) {

		if (response.status === 'connected') {
			FB.api('/me', function(res) {
				// 제일 마지막에 실행
				console.log("Success Login : " + response.name);
				// alert("Success Login : " + response.name);
			});
		} else if (response.status === 'not_authorized') {
			// 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
			alert('앱에 로그인해야 이용가능한 기능입니다.');
		} else {
			// 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
			alert('페이스북에 로그인해야 이용가능한 기능입니다.');
		}
	}, true); // 중복실행방지
}


window.fbAsyncInit = function() {
	FB.init({
		appId   : '153870315464527',
		cookie  : true,
		xfbml   : true,
		version : 'v3.0'
	});
};


(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0&appId=153870315464527&autoLogAppEvents=1';
    fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));