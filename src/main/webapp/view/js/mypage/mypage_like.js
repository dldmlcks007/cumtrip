$(function(){
	
	//여행 좋아요
		$.ajax({
		url: '/cumtrip/Mypageliketrip.do',
		type: 'post',
		success: function(res){
			
				str = "";
				if(res.status == "0"){
					str += '<h5>데이터가 없습니다</h5>';
					$('.mypage_boxLike_span').html(str);
				}else{
					$.each(res, function(i, v){
		
						number_no = v.mid_no
						number_no_sli = number_no.slice(0,1);
				
					
						if(number_no_sli != "S"){	
							str += '<li class="mypage_boxLike_li1">';
							str += '	<div class="m_Like_no1 f4">';
							str += '<a href="/cumtrip/view/jsp/detailpage.jsp?midno='+v.mid_no+'"><img src="/cumtrip/Mphoto2.do?filename='+v.photo_path+'" alt=""></a></div>';
							str += '	<div class="m_Like_poto1 f4"><a href="/cumtrip/view/jsp/detailpage.jsp?midno='+v.mid_no+'">'+v.mid_name+'</a></div>';
							str += '	<div class="m_Like_name1 f4">'+v.mid_location+'</div>';
							str += '	<div class="m_Like_21 f4">';
							if(v.mid_no != "null"){
								str += '<a href="#" class="mypage_LikeBottom1" style="font-size: 1.2em;">찜풀기</a><b>'+v.mid_no+'</b>';	
							}
							
							str += '	</div>';
							str += '</li>';		
						}	
						if(number_no_sli == "S" || number_no_sli == "s"){
							str += '<li class="mypage_boxLike_li1">';
							str += '	<div class="m_Like_no1 f4">';
							str += '<a href="/cumtrip/view/jsp/detailpagestay.jsp?stayno='+v.mid_no+'"><img src="/cumtrip/SPhoto.do?filename='+v.photo_path+'" alt=""></a></div>';
							str += '	<div class="m_Like_poto1 f4"><a href="/cumtrip/view/jsp/detailpagestay.jsp?stayno='+v.mid_no+'">'+v.mid_name+'</a></div>';
							str += '	<div class="m_Like_name1 f4">'+v.mid_location+'</div>';
							str += '	<div class="m_Like_21 f4">';
							if(v.mid_no != "null"){
								str += '<a href="#" class="mypage_LikeBottom1" style="font-size: 1.2em;">찜풀기</a><b>'+v.mid_no+'</b>';	
							}
							
							str += '	</div>';
							str += '</li>';	
						
						}
						
							
					}) 
				}	                                                                      
	
				$('.mypage_boxLike_span').html(str);	
			
		},
		error: function(xhr){
			//alert("여행좋아요 상태: "+xhr.status);
			if(xhr.status == 500){ 
				alert("로그인 상태가 아닙니다.");
				location.href = "../index.jsp" 
				
				}
		},
		dataType: 'json'
	})
	
	
	
	
	//리뷰 좋아요
	$.ajax({
		url: '/cumtrip/MypageLike.do',
		type: 'post',
		success: function(res){
			
				str = "";
				if(res.status == "0"){
					str += '<h5>데이터가 없습니다</h5>';
					$('.mypage_boxLike_span2').html(str);
				}else{
					$.each(res, function(i, v){
					
					number_no = v.mid_no
					number_no_sli = number_no.slice(0,1);
			
						
						
						
					if(number_no_sli == "S" || number_no_sli == "s"){	
							str += '<li class="mypage_boxLike_li">';
							str += '	<div class="m_Like_no f4"><a href="/cumtrip/view/jsp/detailpagestay.jsp?stayno='+v.mid_no+'">'+v.mid_name+'</a></div>';	 
							str += '	<div class="m_Like_poto f4"><a href="/cumtrip/view/jsp/detailpagestay.jsp?stayno='+v.mid_no+'">'+v.Mre_title+'</a></div>';
							str += '	<div class="m_Like_name f4">'+v.Mre_date+'</div>';
							str += '	<div class="m_Like_2 f4">';
							if(v.mid_name != null){
								str += '<a href="#" class="mypage_LikeBottom" style="font-size: 1.2em;">찜풀기</a><b>'+v.Mre_no+'</b>';	
							}
							
							str += '	</div>';
							str += '</li>';	
						}
						if(number_no_sli != "S"){
							
							str += '<li class="mypage_boxLike_li">';
							str += '	<div class="m_Like_no f4"><a href="/cumtrip/view/jsp/detailpage.jsp?midno='+v.mid_no+'">'+v.mid_name+'</a></div>';
							str += '	<div class="m_Like_poto f4"><a href="/cumtrip/view/jsp/detailpage.jsp?midno='+v.mid_no+'">'+v.Mre_title+'</a></div>';
							str += '	<div class="m_Like_name f4">'+v.Mre_date+'</div>';
							str += '	<div class="m_Like_2 f4">';
							if(v.mid_name != null){
								str += '<a href="#" class="mypage_LikeBottom" style="font-size: 1.2em;">찜풀기</a><b>'+v.Mre_no+'</b>';	
							}
							
							str += '	</div>';
							str += '</li>';	
							
						}
						
						
						
									
					}) 
				}	                                                                      
	
				$('.mypage_boxLike_span2').html(str);	
			
		},
		error: function(xhr){
			//alert("리뷰좋아요 상태: "+xhr.status);
			if(xhr.status == 500){ 
				alert("로그인 상태가 아닙니다.");
				location.href = "../index.jsp" 
				
				}
		},
		dataType: 'json'
	})
	
	
	
	
	
	//찜풀기
	$('.mypage_boxContain').on('click','.mypage_LikeBottom', function(){
			
			number_no = $(this).next().text();
			number_no_sli = number_no.slice(0,1);
			
			
			if(number_no_sli == "M" || number_no_sli == "m"){
				
					$.ajax({
				
						
						url: '/cumtrip/MypageLikejjim.do',
						data: { "number_no" :  number_no },
						type: 'get',
						success: function(res){
							if(res.sou == "1"){
								alert("찜풀기 성공");
								location.href= "mypage_like.jsp";	
							}else{
								alert("찜풀기 실패");
							}
							
							
							
						},
						error: function(xhr){
							//alert("여행리뷰 찜풀기 상태: "+xhr.status);
							if(xhr.status == 500){ 
								alert("로그인 상태가 아닙니다.");
								location.href = "../index.jsp" 
								
								}
						},
						dataType: 'json'
					})
			
							
			}
			if(number_no_sli == "S" || number_no_sli == "s"){
				
					$.ajax({
				
						
						url: '/cumtrip/MypageLikejjim.do',
						data: { "number_no" :  number_no },
						type: 'post',
						success: function(res){
							if(res.sou == "1"){
								alert("찜풀기 성공");
								location.href= "mypage_like.jsp";
							}else{
								alert("찜풀기 실패");
							}
							
								
							
						},
						error: function(xhr){
							//alert("숙소리뷰 찜풀기 상태: "+xhr.status);
							if(xhr.status == 500){ 
								
								alert("로그인 상태가 아닙니다.");
								location.href = "../index.jsp" 
								
								}
						},
						dataType: 'json'
					})
			}

	})
	
	
	
	//여행 찜풀기
	$('.mypage_boxContain').on('click','.mypage_LikeBottom1', function(){
		
		number_no = $(this).next().text();
		number_no_sli = number_no.slice(0,1);
			
			
		if(number_no_sli != "S"){
				
				
				$.ajax({	
						url: '/cumtrip/Mypageliketrip.do',
						data: { "number_no" :  number_no },
						type: 'get',
						success: function(res){
							if(res.sou == "1"){
								alert("찜풀기 성공");
								location.href= "mypage_like.jsp";	
							}else{
								alert("찜풀기 실패");
							}
							
							
							
						},
						error: function(xhr){
							//alert("여행 찜풀기 상태: "+xhr.status);
							if(xhr.status == 500){ 
								
								alert("로그인 상태가 아닙니다.");
								location.href = "../index.jsp" 
								
								}
						},
						dataType: 'json'
				})
			
			}
			
			
			if(number_no_sli == "S" || number_no_sli == "s"){
				
				$.ajax({	
						url: '/cumtrip/Mypage_delete.do',
						data: { "number_no" :  number_no },
						type: 'get',
						success: function(res){
							if(res.sou == "1"){
								alert("찜풀기 성공");
								location.href= "mypage_like.jsp";	
							}else{
								alert("찜풀기 실패");
							}
							
							
							
						},
						error: function(xhr){
							//alert("여행 찜풀기 상태: "+xhr.status);
							if(xhr.status == 500){ 
								
								alert("로그인 상태가 아닙니다.");
								location.href = "../index.jsp" 
								
								}
						},
						dataType: 'json'
				})
			
			}
			
			
			
			
		})
	
		
	
	
	
})