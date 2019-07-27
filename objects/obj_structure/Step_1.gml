/// @description Update status

damaged = health < maxHealth;

// stop repairing if not damaged
repairing = repairing and damaged;