package asset
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	public class Asset
	{
		
		private static var gameTextureAtlas:TextureAtlas;
		
		[Embed(source="../assets/images/btnPlayNow.png")]
		public static const btnPlayNow:Class;
		
		[Embed(source="../assets/images/background.png")]
		public static const startBg:Class;
		
		[Embed(source="../assets/images/gameAssets_1.png")]
		public static const AtlasTextureGame:Class;
		
		[Embed(source="../assets/images/gameAssets_1.xml", mimeType="application/octet-stream")]
		public static const AtlasXmlGame:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getAtlas():TextureAtlas
		{
			if(gameTextureAtlas == null)
			{
				var texture:Texture = getTexture("AtlasTextureGame");
				var xml:XML = XML(new AtlasXmlGame());
				gameTextureAtlas = new TextureAtlas(texture, xml);
			}
			
			return gameTextureAtlas;
		}
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Asset[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
		
	}
}