
local M = {} 

function M.init(self)
	-- spine.play_anim("#actor_"..self.name, hash("fade_in"), go.PLAYBACK_ONCE_FORWARD, {}, function()
	-- 	spine.play_anim("#actor_"..self.name, hash("true_idle"), go.PLAYBACK_LOOP_FORWARD, {})
	-- end)

	print("Loading: ", self.name)

	go.set("#actor", "tint", vmath.vector4(1, 1, 1, 0))
	go.animate("#actor", "tint", go.PLAYBACK_ONCE_FORWARD, vmath.vector4(1, 1, 1, 1), go.EASING_LINEAR, 1)

	timer.delay(2, false, function()
		go.animate("#actor", "tint", go.PLAYBACK_ONCE_FORWARD, vmath.vector4(.5, .5, .5, 1), go.EASING_LINEAR, 0.5)
	end)

end

function M.final(self)
	-- Add finalization code here
	-- Learn more: https://defold.com/manuals/script/
	-- Remove this function if not needed
end

function M.update(self, dt)
	-- Add update code here
	-- Learn more: https://defold.com/manuals/script/
	-- Remove this function if not needed
end

function M.fixed_update(self, dt)
	-- This function is called if 'Fixed Update Frequency' is enabled in the Engine section of game.project
	-- Can be coupled with fixed updates of the physics simulation if 'Use Fixed Timestep' is enabled in
	-- Physics section of game.project
	-- Add update code here
	-- Learn more: https://defold.com/manuals/script/
	-- Remove this function if not needed
end

function M.on_message(self, message_id, message, sender)
	-- Add message-handling code here
	-- Learn more: https://defold.com/manuals/message-passing/
	-- Remove this function if not needed
end

function M.on_input(self, action_id, action)
	-- Add input-handling code here. The game object this script is attached to
	-- must have acquired input focus:
	--
	--    msg.post(".", "acquire_input_focus")
	--
	-- All mapped input bindings will be received. Mouse and touch input will
	-- be received regardless of where on the screen it happened.
	-- Learn more: https://defold.com/manuals/input/
	-- Remove this function if not needed
end

function M.on_reload(self)
	-- Add reload-handling code here
	-- Learn more: https://defold.com/manuals/hot-reload/
	-- Remove this function if not needed
end

return M 