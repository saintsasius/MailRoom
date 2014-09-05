
function Create()

    -- property doesn't exist on the object by default, so it must be created now
    Object.SetProperty( "Age", 0.0);  
    
end

function Update( timePassed )

	local age = Object.GetProperty("Age");
	local ourX = Object.GetProperty("Pos.x");
    local ourY = Object.GetProperty("Pos.y");    
    age = age + timePassed;    
    Object.SetProperty( "Age", age );
	
	if(age>10) then
      Object.Spawn("IncomingPackage", ourX, ourY );
	  Object.Spawn("IncomingMail", ourX, ourY);
	  Object.SetProperty( "Age", 0 );
	end
	
	
end