let index = {
	init : function(){
		$("#btn-save").on("click", ()=>{ //this를 바인딩하기 위해서 function(){} 대신 사용
			this.save();
		});
		$("#btn-delete").on("click", ()=>{ //this를 바인딩하기 위해서 function(){} 대신 사용
			this.deleteById();
		});
		$("#btn-update").on("click", ()=>{ //this를 바인딩하기 위해서 function(){} 대신 사용
			this.update();
		});
	},
	
	save : function(){
		// alert('user의 save함수 호출'); -> 확인
		let data = {
			title : $("#title").val(),
			content : $("#content").val(),		
		};
		
		$.ajax({
			// 회원가입 요청
			type : "POST",
			url : "/blog/api/board",
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-16",
			dataType : "json"
		}).done(function(resp){
			alert("글쓰기 완료!");
			location.href="/blog/board/story";
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},
	
	deleteById : function(){
		let id = $("#id").text();
		
		$.ajax({
			type : "DELETE",
			url : "/blog/api/board/"+id,
			dataType : "json"
		}).done(function(resp){
			alert("삭제 완료!");
			location.href="/blog/board/story";
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},
	
	update : function(){
			let id = $("#id").val();
			
			let data = {
					title: $("#title").val(),
					content: $("#content").val()
			};

			$.ajax({ 
				type: "PUT",
				url: "/blog/api/board/"+id,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-16",
				dataType: "json"
			}).done(function(resp){
				alert("수정 완료!");
				location.href = "/blog/board/story";
			});
	}
}

index.init();