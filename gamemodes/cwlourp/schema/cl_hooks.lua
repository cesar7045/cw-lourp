
-- Called when the cinematic intro info is needed.
function Schema:GetCinematicIntroInfo()
	return {
		credits = "Designed and developed by "..self:GetAuthor()..".",
		title = "The Last of Us Roleplay",
		text = "An Last of Us Roleplay Schema."
	};
end;
