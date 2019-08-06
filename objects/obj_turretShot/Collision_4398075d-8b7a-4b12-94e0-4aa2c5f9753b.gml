/// @description Crash into enemy walls with reduced effect

if(other.color != self.color){
	other.hp -= payload - 5;
	instance_destroy();
}
