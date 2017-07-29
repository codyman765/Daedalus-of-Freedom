/spell/contract/call_slave
	name = "Call to master"
	desc = "Call your slave to yourself."

	school = "abjuration"
	charge_max = 600
	spell_flags = 0
	invocation = "none"
	invocation_type = SpI_NONE
	cooldown_min = 200

	smoke_spread = 1
	smoke_amt = 5

	hud_state = "wiz_tele"


/spell/contract/call_slave/cast(mob/target,mob/user)
	target = ..(target,user)
	if(!target)
		return

    //The inverse of the return_master spell.
	target.forceMove(get_turf(user))