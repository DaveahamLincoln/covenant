# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#================================================
#Preseed Example Affixes
#================================================

affixes_array = [
    "Chronomancer", #1
    "Dolyak",       #2
    "Scholar",      #3
    "Strength",     #4
    "Berserker",    #5
    "Hoelbrak",     #6
    "Baelfire",     #7
    "Benevolence"   #8
    ]

affixes_array.each do |a| 
    affix = Affix.find_or_initialize_by(name: a)
    affix.name = a
    #affix.description = a[1]
    affix.save!
end

#================================================
#Preseed Classes
#================================================

cclasses_array = [
    "Engineer",         #1
    "Necromancer",      #2
    "Thief",            #3
    "Elementalist",     #4
    "Warrior",          #5
    "Ranger",           #6
    "Mesmer",           #7
    "Guardian",         #8
    "Revenant",         #9
    "Scrapper",         #10
    "Reaper",           #11
    "Daredevil",        #12
    "Tempest",          #13
    "Berserker",        #14
    "Druid",            #15
    "Chronomancer",     #16
    "Dragonhunter",     #17
    "Herald"            #18
]

cclasses_array.each do |c| 
    cclass = Cclass.find_or_initialize_by(name: c)
    cclass.name = c
    #cclass.description = c[1]
    cclass.save!
end

#================================================
#Preseed Example Prefixes
#================================================

prefixes_array = [
    "Commander",    #1
    "Trailblazer",  #2
    "Valkyrie",     #3
    "Berserker",    #4
    "Sinister",     #5
    "Viper",        #6
    "Magi",         #7
    "Assassin"      #8
]

prefixes_array.each do |pl| 
    prefix = Prefix.find_or_initialize_by(name: pl)
    prefix.name = pl
    #prefix.description = pl[1]
    prefix.save!
end

#================================================
#Preseed Example Sigils
#================================================

sigils_array = [
    "Empty",        #1
    "Accuracy",     #2
    "Air",          #3
    "Malice",       #4
    "Fire",         #5
    "Blood",        #6
    "Bursting",     #7
    "Strength",     #8
    "Purity",       #9
    "Water",        #10
    "Bloodlust",    #11
    "Force",        #12
    ]
    
sigils_array.each do |s| 
    sigil = Sigil.find_or_initialize_by(name: s)
    sigil.name = s
    #sigil.description = c[1]
    sigil.save!
end

#================================================
#Preseed Roles
#================================================

roles_array = [
    #[ID, NAME, LEADER_ID]
    [1,"Melee DPS",1],    #1
    [2,"Ranged DPS",1],   #2
    [3,"Condi DPS",1],    #3
    [4,"Healer",1],       #4
    [5,"Tank",1],         #5
    [6,"Flex",1],         #6
    ]
    
roles_array.each do |r| 
    role = Role.find_or_initialize_by(id: r[0])
    role.name = r[1]
    role.leader_id = r[2]
    #role.description = r[2]
    role.save!
end

#================================================
#Preseed Ranks
#================================================

ranks_array = [
    #[ID, NAME, LEADER_ID]
    [1,"Admiral",1],      #1
    [2,"Captain",1],      #2
    [3,"Lieutenant",1],   #3
    [4,"Midshipman",1]    #4
    ]

ranks_array.each do |r|
    rank = Rank.find_or_initialize_by(id: r[0])
    rank.name = r[1]
    rank.leader_id = r[2]
    rank.save!
end

#================================================
#Preseed Default Squad
#================================================

squads_array = [
    #[ID, NAME, LEADER_ID]
    [1,"DEFAULT",1]   #1
    ]

squads_array.each do |s|
    squad = Squad.find_or_initialize_by(id: s[0])
    squad.name = s[1]
    squad.leader_id = s[2]
    #
    squad.save!
end

#================================================
#Preseed Default Player
#================================================

players_array = [
    #[ID, "NAME", RANK, RXP, SQUAD, PLAYER_LEADER_REF_ID IS_LEADER]
    [1,"DEFAULT_PLAYER",1,1,1,1,true],   #1
    ]
    
players_array.each do |pl|
    player = Player.find_or_initialize_by(id: pl[0])
    player.name = pl[1]
    player.rank = pl[2]
    player.rxp = pl[3]
    player.squad_id = pl[4]                 #deprecated
    player.player_leader_ref_id = pl[5]
    player.is_leader = pl[6]
    email = pl[1] + "@gmail.com"
    player.email = email
    player.password = 'password'
    player.password_confirmation = 'password'
    player.save!
end

