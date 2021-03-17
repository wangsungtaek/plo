var $btn_add_mylist = $('<button type="button" class="btn_add_mylist">보관함에 추가하기</button>');
var $btn_playlist_more = $('<button type="buttton" class="btn_playlist_more">더보기</button>');
var $btn_list_listen = $('<button type="button" class="btn_list_listen">이 플레이리스트만 듣기</button>');
var $btn_list_close = $('<button type="button" class="btn_list_close">플레이리스트 열기</button>');
var $btn_delete = $('<button type="button" class="btn_delete">곡 삭제하기</button>');
$('.track_area>.playlist_util').append($btn_add_mylist);
$('.track_area>.playlist_util').append($btn_playlist_more);
$('.group_area>.playlist_util').append($btn_list_listen);
$('.group_area>.playlist_util').append($btn_list_close);

// 재생목록 열고 닫기 
$('.btn_open_list').on('click', function(){
	$('.playlist_ct').toggle();
});
$('.btn_playlist_close').on('click', function(){
	$('.playlist_ct').hide();
});

// 리스트 열고 닫기
/*$('.btn_list_close').on('click', function(){
	$(this).closest('.group_area').toggleClass('open');
});*/
$('.playlist_util').on('click', '.btn_list_close', function() {
	$(this).closest('.group_area').toggleClass('open');
});
$('.btn_playlist').on('click', function(){
	if($(this).text()=='그룹열기') {
		$('.group_area').addClass('open');
		$(this).text('그룹접기');
		return;
	} 
	if($(this).text()=='그룹접기') {
		$('.group_area').removeClass('open');
		$(this).text('그룹열기');
		return;
	}
});

// 정렬... .. 안될듯...
$(".playlist_section").sortable({
	items: $(".playlist_item"),
	handle: $(".track_item").find("*")
});
$('.playlist_section').disableSelection();
$(".playlist_section").on('click', function(e){
	console.log(e);
});

// 플레이어 컨트롤 버튼

// 오디오 재생

var currentSong = 0;
var maxSong = audioList.length-1;
var song = new Audio();

if(audioList.length>0) {
	song.src= path+'/z03_music/'+audioList[currentSong].m_no+".mp3";
	console.log(song.src);
}

function playSong(n) {
	song.src=path+'/z03_music/'+audioList[n].m_no+".mp3";
	song.play();
	$('.icon-player').removeClass('btn-player-play');
	$('.icon-player').addClass('btn-player-pause');
	$('.player_ct .track_info>.title').text(audioList[n].m_name);
	$('.player_ct .track_info>.artist').text(audioList[n].art_name);
}

// 재생버튼
$('.icon-player').on('click', function(){
	if(audioList.length<0) return;
	$(this).toggleClass('btn-player-play');
	$(this).toggleClass('btn-player-pause');
	
	// play of pause
	if(song.paused) {
		song.play();
	} else {
		song.pause();	
	}
});

// 다음곡재생
function nextPlay() {
	if($('[class^=btn-player-shuffle]').attr('class')=='btn-player-shuffle-active') {
		currentSong = Math.floor(Math.random()*audioList.length);
	} else {
		currentSong = (currentSong==maxSong) ? 0 : ++currentSong;
	}
	playSong(currentSong);
}

// 다음곡버튼
$('.btn-player-next').on('click', function() {
	nextPlay();
});

// 이전곡버튼
$('.btn-player-previous').on('click', function() {
	if(song.currentTime>3) {
		song.currentTime=0;
		return;
	}
	currentSong = (currentSong==0) ? maxSong : --currentSong;
	playSong(currentSong);
});


// audio 관련 event
$(song).on('ended', function(){
	var currentRepeat = $('[class^=btn-player-repeat]').attr('class');
	if(currentRepeat=='btn-player-repeat1') {
		song.currentTime=0;
		return;
	} 
	if(currentRepeat=='btn-player-repeat-active') {
		nextPlay();
		return;
	}
	if(currentRepeat=='btn-player-repeat') {
		if(currentSong!=maxSong) {
			nextPlay();
		}
		return;
	}
});
function timeText(time) {
	var s = Math.floor(time % 60).toString();
	var m = Math.floor(time / 60).toString();
	return m.padStart(2, '0') + ':' + s.padStart(2,'0');
}

$(song).on('timeupdate', function(){
	if(!isLogin && song.currentTime>=60) {
		nextPlay();
		return;
	}
	var rangeVal = $('.playtime .progress').val();
	$('.playtime .progress').val(song.currentTime/song.duration * 100);
	$('.time_current').text(timeText(song.currentTime));
	$('.playtime .progress').css( 'background', 'linear-gradient(to right, #FF8533 0%, #FF8533 '+rangeVal+'%, #fff ' + rangeVal + '%, white 100%)' );
});
$(song).on('durationchange', function() {
	if(!isLogin) {
		$('.time_all').text('01:00');
		return;
	}
	$('.time_all').text(timeText(song.duration));
});


/* song.addEventListener('play', function() {
	$('.time_all').text(timeText(song.duration));
}); */

function makeSnack(snackTxt){
	var $snack_bar = $('<div class="snack_bar" style="z-index: 499;"><div class="txt_area"><p class="txt1"></p></div></div>');
	$('body').append($snack_bar);
	$('.txt1').text(snackTxt);
	var snackSet = setTimeout(function() {
		$('.snack_bar').remove();
		clearTimeout(snackSet);
	}, 2000);
}
// 반복 재생
$('[class^=btn-player-repeat]').on('click', function() {
	var btnClass=$(this).attr('class');
	if(btnClass=='btn-player-repeat'){
		$(this).attr('class', 'btn-player-repeat-active');
		makeSnack('전제 음악을 반복합니다.');
		return;
	} 
	if(btnClass=='btn-player-repeat-active') {
		$(this).attr('class', 'btn-player-repeat1');
		makeSnack('현재 음악을 반복합니다.');
	}
	if(btnClass=='btn-player-repeat1') {
		$(this).attr('class','btn-player-repeat');
		makeSnack('반복을 사용하지 않습니다.');
	}
});
/*
<div class="snack_bar" style="z-index: 499;"><div class="txt_area"><p class="txt1"></p></div></div>
*/
// 랜덤 재생
$('[class^=btn-player-shuffle]').on('click', function() {
	var btnClass=$(this).attr('class');
	if(btnClass=='btn-player-shuffle') {
		$(this).attr('class', 'btn-player-shuffle-active');
		makeSnack('재생목록을 랜덤으로 재생합니다.');
	} else {
		$(this).attr('class', 'btn-player-shuffle');
		makeSnack('재생목록을 순서대로 재생합니다.');
	}
});

// 볼륨 버튼
$('.btn_volume').on('click', function() {
	$(this).toggleClass('active');
	var vol = $('.volume_area .progress').val();
	$('.volume_handle').css('left', vol+'%');
});
$('.volume_area .progress').on('input', function(){
	var vol = ($(this).val()*0.01).toFixed(2);
	song.volume = vol;
	if(vol==0) {
		$('.btn_volume').addClass('mute');
	} else {
		$('.btn_volume').removeClass('mute');
	}
	$('.volume_handle').css('left', vol*100+'%');
	$(this).css( 'background', 'linear-gradient(to right, #FF8533 0%, #FF8533 '+this.value +'%, #fff ' + this.value + '%, white 100%)' );
});


// 재생목록 트랙 클릭
$('.btn_track_select').on('click', function(){
	var trackNum = $(this).parent().data('no');
	song.src='../z03_music/' + trackNum + '.mp3';
	song.play();
	$('.icon-player').addClass('btn-player-pause');
	$('.icon-player').removeClass('btn-player-play');
	$('.player_ct .track_info>.title').text(audioList[trackNum-1].m_name);
	$('.player_ct .track_info>.artist').text(audioList[trackNum-1].art_name);
	console.log(song.duration);
//	$(this).parent().parent().addClass('now');
});

// 재생조절 바
// $('.playtime .progress').val(song.currentTime/song.duration * 100);
$('.playtime .progress').on('input', function() {
	song.currentTime = $(this).val()/100*song.duration;
	$(this).css( 'background', 'linear-gradient(to right, #FF8533 0%, #FF8533 '+this.value +'%, #fff ' + this.value + '%, white 100%)' );
});


// 편집버튼

$('.list_edit button:first').on('click', function() {
	console.log($('.playlist_util:first').closest('.track_area').attr('id'));
	if($(this).text()=='편집') {
		$(this).text('완료');
		$('.playlist_util').empty();
		$('.playlist_util').append($btn_delete);
		$('.tit_playlist').text('재생목록편집');
		return;
	}
	if($(this).text()=='완료') {
		$(this).text('편집');
		$('.playlist_util').empty();
		$('.track_area>.playlist_util').append($btn_add_mylist);
		$('.track_area>.playlist_util').append($btn_playlist_more);
		$('.group_area>.playlist_util').append($btn_list_listen);
		$('.group_area>.playlist_util').append($btn_list_close);
		$('.tit_playlist').text('재생목록');
		return;
	}
});

$('.playlist_util').on('click', '.btn_delete', function() {
	$(this).parent().parent().remove();
	console.log($(this).parent().prev().data());
});

$('.btn_like').on('click', function() {
	$(this).toggleClass('active');	
})