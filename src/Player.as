package
{
	public class Player extends Object
	{
		public var player:Object;
		
		public function Player(data:Object)
		{
			super();
			
			player = new Object();
			player.id = data.player_id;
			player.name = data.player_name;
			player.dob = data.dob;
			player.level = data.level;
			player.xp = data.xp;
			player.facebookID = data.facebook_id;
			player.totalPurchases = data.total_purchases;
			
			setupPlayer();
			
		}
		
		public function setupPlayer():Object
		{
			trace('setupPlayer called');
			//info.id = data.player_id;
			return player;
		}
		
	}
}