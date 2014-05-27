package com.colombiagames.icadecontroller
{
	import flash.events.IEventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	
	import org.osflash.signals.Signal;

	public final class iCadeController
	{
		private static var extCtx:ExtensionContext=null;
		public var keySignal:Signal = new Signal(String);
		
		public function iCadeController(target:IEventDispatcher=null)
		{
			if (!extCtx)
			{
				trace("Extension Context Created Constructor");
				extCtx=ExtensionContext.createExtensionContext("com.colombiagames.iCadeController",null);
				extCtx.addEventListener(StatusEvent.STATUS,onStatusChange);
			}
		}
		
		protected function onStatusChange(event:StatusEvent):void
		{
			keySignal.dispatch(event.level);
		}
	}
}