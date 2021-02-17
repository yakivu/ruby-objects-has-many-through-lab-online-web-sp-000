

  describe "#songs" do
    it "returns all songs associated with this Artist" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      tmbg = Artist.new("They Might Be Giants")
      nerd_rock = Genre.new("Nerd Rock")
      ninety_nine_problems = Song.new("Ninety Nine Problems", jay_z, rap)
      particle_man = Song.new("Particle Man", tmbg, nerd_rock)

      expect(jay_z.songs).to include(ninety_nine_problems)
      expect(jay_z.songs).not_to include(particle_man)
    end
  end

  describe "#new_song" do
    it "given a name and genre, creates a new song associated with that artist" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      nerd_rock = Genre.new("Nerd Rock")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

      expect(jay_z.songs).to include(ninety_nine_problems)
      expect(jay_z.genres).not_to include(nerd_rock)
      expect(ninety_nine_problems.artist).to eq(jay_z)
    end
  end

  describe "#genres" do
    it "has many genres, through songs" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

      expect(jay_z.genres).to include(rap)
      expect(jay_z.songs.last.genre).to eq(rap)
    end
  end

end
