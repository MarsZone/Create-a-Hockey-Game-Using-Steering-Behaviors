/**
 * Copyright (c) 2014, Fernando Bevilacqua
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 * 
 *   Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * 
 *   Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package  
{
	import org.flixel.*;

	public class Rink extends FlxGroup
	{
		private const WALL_LENGTH :Number = 10;
		
		public var top 		:FlxSprite;
		public var bottom 	:FlxSprite;
		public var left 	:FlxSprite;
		public var right 	:FlxSprite;
		
		public function Rink() {
			super();
			
			top = new FlxSprite(0, 0);
			top.makeGraphic(FlxG.width, FlxG.height * 0.16, 0xff0000ff);
			initWall(top)			
			add(top);
			
			left = new FlxSprite(-FlxG.width + WALL_LENGTH, 0);
			left.makeGraphic(FlxG.width, FlxG.height, 0xff0000ff);
			initWall(left)			
			add(left);
			
			bottom = new FlxSprite(0, FlxG.height - FlxG.height * 0.23 );
			bottom.makeGraphic(FlxG.width, FlxG.height * 0.23, 0xff0000ff);
			initWall(bottom)			
			add(bottom);
			
			right = new FlxSprite(FlxG.width - WALL_LENGTH, 0);
			right.makeGraphic(FlxG.width, FlxG.height, 0xff0000ff);
			initWall(right)			
			add(right);
		}
		
		private function initWall(theWall :FlxSprite) :void {
			theWall.moves = false;
			theWall.immovable = true;
			theWall.mass = Number.MAX_VALUE;
			theWall.visible = false;
		}
	}
}