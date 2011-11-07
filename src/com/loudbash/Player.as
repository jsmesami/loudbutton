package com.loudbash
{
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;

	public class Player
	{
		private var _position:Number = 0;
		private var _sound:Sound;
		private var _channel:SoundChannel;
		private var _playing:Boolean = false;
		private var _repeat:Boolean;
		private var _onComplete:Function = function():void{};

		public function Player(resource:String, autoplay:Boolean=false, repeat:Boolean=true):void
		{
			_repeat = repeat;
			_sound = new Sound(new URLRequest(resource));
			if (autoplay) {
				play();
			}
		}

		private function onComplete(event:Event):void {
			_playing = false;
			_position = 0;
			if (_repeat) {
				play();
			}
			_onComplete();
		}

		public function registerOnComplete(callback:Function):void {
			_onComplete = callback;
		}

		public function play():void {
			_channel = _sound.play(_position, 0, null);
			_channel.addEventListener(Event.SOUND_COMPLETE, onComplete);
			_playing = true;
		}

		public function pause():void {
			_position = _channel.position; 
			_channel.stop();
			_playing = false;
		}

		public function stop():void {
			_position = 0;
			_channel.stop();
			_playing = false;
		}
		
		public function get playing():Boolean {
			return _playing;
		}

		public function togglePlay():void {
			if (_playing) {
				pause();
			} else {
				play();
			}
		}
	}
}