let index = {
	init : function(){
		$("#btn-save").on("click", ()=>{ //this를 바인딩하기 위해서 function(){} 대신 사용
			this.save();
		});
		$("#btn-login").on("click", ()=>{ //this를 바인딩하기 위해서 function(){} 대신 사용
			this.login();
		});
	},
	
	save : function(){
		// alert('user의 save함수 호출'); -> 확인
		let data = {
			username : $("#username").val(),
			email : $("#email").val(),
			password : $("#password").val()			
		};
		
		//console.log(data); -> 확인
		
		//ajax 호출시 default가 비동기 호출
		//ajax 통신을 이용해 3개의 데이터를 json으로 변경하여 insert 요청
		$.ajax({
			// 회원가입 요청
			type : "POST",
			url : "/blog/api/user/signup",
			data : JSON.stringify(data), // http body 데이터
			contentType : "application/json; charset=utf-8", // body 데이터의 Type
			dataType : "json" // 요청에 대한 응답이 왔을때 json이라면 JS오브젝트로 변경 
		}).done(function(resp){
			alert("회원가입 완료!");
			location.href="/blog";
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},
	
	login : function(){
		let data = {
			username : $("#username").val(),
			password : $("#password").val()			
		};
		
		$.ajax({
			type : "POST",
			url : "/blog/api/user/login",
			data : JSON.stringify(data), // http body 데이터
			contentType : "application/json; charset=utf-8", // body 데이터의 Type
			dataType : "json" // 요청에 대한 응답이 왔을때 json이라면 JS오브젝트로 변경 
		}).done(function(resp){
			alert("로그인 완료!");
			location.href="/blog";
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	}
}

index.init();