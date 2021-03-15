// 재생목록 열고 닫기 
$('.btn_open_list').on('click', function(){
	$('.playlist_ct').toggle();
});
$('.btn_playlist_close').on('click', function(){
	$('.playlist_ct').hide();
});

// 리스트 열고 닫기
$('.btn_list_close').on('click', function(){
	$(this).closest('.group_area').toggleClass('open');
});
$('.btn_playlist').on('click', function(){
	if($(this).text()=='그룹열기') {
		$('.group_area').addClass('open');
		$(this).text('그룹접기');
	} else if($(this).text()=='그룹접기') {
		$('.group_area').removeClass('open');
		$(this).text('그룹열기');
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
var audioList = [{m_no:"1", m_name:"Fly away(inst)", art_name:"권진아"}, 
			{m_no:"2", m_name:"내 손을 잡아(inst)", art_name:"아이유(IU)"},
			{m_no:"3", m_name:"그땐 그땐 그땐(inst)", art_name:"슈프림팀"}];
var currentSong = 0;
var maxSong = audioList.length-1;

var song = new Audio();
if(audioList.length>0) {
	song.src='../z03_music/'+audioList[currentSong].m_no+".mp3";
}

function playSong(n) {
	song.src='../z03_music/'+audioList[n].m_no+".mp3";
	song.play();
}

// 재생버튼
$('.icon-player').on('click', function(){
	if(audioList.length<0) return;
	$(this).toggleClass('btn-player-play');
	$(this).toggleClass('btn-player-pause');
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
	$('.icon-player').removeClass('btn-player-play');
	$('.icon-player').addClass('btn-player-pause');
	$('.player_ct .track_info>.title').text(audioList[currentSong].m_name);
	$('.player_ct .track_info>.artist').text(audioList[currentSong].art_name);
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
	$('.icon-player').removeClass('btn-player-play');
	$('.icon-player').addClass('btn-player-pause');
	$('.player_ct .track_info>.title').text(audioList[currentSong].m_name);
	$('.player_ct .track_info>.artist').text(audioList[currentSong].art_name);
});


// audio 관련 event
$(song).on('ended', function(){
	var currentRepeat = $('[class^=btn-player-repeat]').attr('class');
	if(currentRepeat=='btn-player-repeat1') {
		playSong(currentSong);
	} else {
		nextPlay();
	}
});
function timeText(time) {
	var s = Math.floor(time % 60).toString();
	var m = Math.floor(time / 60).toString();
	return m.padStart(2, '0') + ':' + s.padStart(2,'0');
}
$(song).on('timeupdate', function(){
	var rangeVal = $('.playtime .progress').val();
	$('.playtime .progress').val(song.currentTime/song.duration * 100);
	$('.time_current').text(timeText(song.currentTime));
	$('.playtime .progress').css( 'background', 'linear-gradient(to right, #FF8533 0%, #FF8533 '+rangeVal+'%, #fff ' + rangeVal + '%, white 100%)' );
});



/* song.addEventListener('play', function() {
	$('.time_all').text(timeText(song.duration));
}); */
$(song).on('durationchange', function() {
	$('.time_all').text(timeText(song.duration));
});

// 반복 재생
$('[class^=btn-player-repeat]').on('click', function() {
	var btnClass=$(this).attr('class');
	if(btnClass=='btn-player-repeat'){
		$(this).attr('class', 'btn-player-repeat-active');
	} else if(btnClass=='btn-player-repeat-active') {
		$(this).attr('class', 'btn-player-repeat1');
	} else {
		$(this).attr('class','btn-player-repeat');
	}
});

// 랜덤 재생
$('[class^=btn-player-shuffle]').on('click', function() {
	var btnClass=$(this).attr('class');
	if(btnClass=='btn-player-shuffle') {
		$(this).attr('class', 'btn-player-shuffle-active');
	} else {
		$(this).attr('class', 'btn-player-shuffle');
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
//	console.log($(this).val()/100*song.duration);
//	console.log(song.currentTime);
//	console.log(Math.floor(song.currentTime/song.duration * 100));
	song.currentTime = $(this).val()/100*song.duration;
	$(this).css( 'background', 'linear-gradient(to right, #FF8533 0%, #FF8533 '+this.value +'%, #fff ' + this.value + '%, white 100%)' );
});
$( '.playtime .progress').on( 'input', function( ) {
  
} );


