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
#Preseed Example Squad
#================================================

squads_array = [
    #[ID, NAME, LEADER_ID]
    [1,"The Raiders Of The Lost Ark",1]   #1
    ]

squads_array.each do |s|
    squad = Squad.find_or_initialize_by(id: s[0])
    squad.name = s[1]
    squad.leader_id = s[2]
    #
    squad.save!
end

#================================================
#Preseed Players
#================================================

players_array = [
    #Will eventually dump LEADER_ID in favor of logic through PLAYER_LEADER_REFS
    #So that players can have multiple leaders.
    #
    #Eventually SQUAD will get dropped and be accessed through
    #PLAYER.CHARACTERS -> CHARACTER_ID -> CHARACTER_SQUAD_REF_ID
    #
    #[ID, "NAME", RANK, RXP, SQUAD, PLAYER_LEADER_REF_ID IS_LEADER]
    #[1,"Obsidian_Blade",3,1,1,1,false],   #1
    #[2,"DeathWish",3,1,1,2,false],        #2
    #[3,"Upas",3,1,1,3,false],             #3
    [4,"MollyElizbeth",3,1,1,4,false],    #4
    #[5,"MeriKasam",3,1,5,false],        #5
    #[6,"Enegek",3,1,6,false],           #6
    #[7,"Iroh",3,1,7,false],             #7
    #[8,"syv",3,1,8,false],              #8
    [9,"Hornager",3,1,1,9,false],         #9
    #[10,"Riku",3,1,10,false],             #10
    #[11,"My Toes",3,1,11,false],          #11
    [12,"Magician_Kaftan",3,1,1,12,false],  #12
    #[13,"Mystical",3,1,13,false],         #13
    [14,"DaveahamLincoln",1,1,1,14,true]    #14
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

#================================================
#Preseed Characters
#================================================

characters_array = [
    
    #Will eventually need to create and change SQUAD_ID to CHARACTER_SQUAD_REF_ID
    #so that players can join multiple squads
    #
    #Eventually LEADER_ID will get pulled from this, and scoping will get handled
    #through PLAYER_ID -> PLAYER -> PLAYER_LEADER_REF_ID -> LEADER ID
    #
    #["ID",NAME", ROLE, CLASS, PREFIX, AFFIX, SIGILS 1-4, TOUGHNESS, AC, PLAYER ID]
    [1,"Dr Molly",3,1,5,5,4,1,1,1,1191,2309,4],               #1
    [2,"Admiral Von Nelson",4,9,7,8,9,10,1,1,1356,2567,14],   #2
    [3,"Keldey",5,11,2,2,3,12,1,1,2174,3094,9],             #3
    [4,"Luna of Kilvaraugh",2,16,4,4,12,11,1,1,1280,2200,12]  #4
    ]
    
characters_array.each do |c|
    character = Character.find_or_initialize_by(id: c[0])
    character.name = c[1]
    character.role = c[2]
    character.cclass = c[3]
    character.prefix = c[4]
    character.affix = c[5]
    character.sigil_1 = c[6]
    character.sigil_2 = c[7]
    character.sigil_3 = c[8]
    character.sigil_4 = c[9]
    character.toughness = c[10]
    character.ac = c[11]
    character.player_id = c[12]
    character.save!
end

#================================================
#Preseed Encounters
#================================================

encounters_array = [
    
    #[ID, "NAME", "DESCRIPTION", LEADER_ID, SQUAD_ID]
    [1, "Vale Guardian", "The big bad dude we all want to kill for loot.",14,1]     #1
    ]
    
encounters_array.each do |e|
    encounter = Encounter.find_or_initialize_by(id: e[0])
    encounter.name = e[1]
    encounter.description = e[2]
    encounter.leader_id = e[3]
    encounter.squad_id = e[4]
    encounter.save!
end

#================================================
#Preseed Pulls
#================================================

pulls_array = [
    
    #[ID, "NAME", "DESCRIPTION", ENCOUNTER, LEADER_ID]
    [1,"Phase 1", "One dude",1,1],          #1
    [2,"Phase 2", "Three dudes",1,1],       #2
    [3,"Phase 3", "One badder dude",1,1],   #3
    [4,"Phase 4", "???",1,1],               #4
    [5,"Phase 5", "???",1,1]                #5
    ]
    
pulls_array.each do |pu|
    pull = Pull.find_or_initialize_by(id: pu[0])
    pull.name = pu[1]
    pull.description = pu[2]
    pull.encounter_id = pu[3]
    pull.leader_id = pu[4]
    pull.save!
end

#================================================
#Preseed Pull Roles
#================================================

pull_roles_array = [
    
    #[ID, "NAME", "DESCRIPTION", PULL, ENCOUNTER, LEADER_ID]
    [1,"Melee DPS", "Stay on boss",1,1,1],                            #1
    [2,"Green Circles", "Get into the green circles",1,1,1],          #2
    [3,"Condition DPS", "Handle Condi damage and support",1,1,1],     #3
    [4,"Red", "Take Down Red Boss",2,1,1],                            #4
    [5,"Green", "Take Down Green Boss",2,1,1],                        #5
    [6,"Blue", "Take Down Blue Boss",2,1,1],                          #6
    ]
    
pull_roles_array.each do |pu|
    pull_role = PullRole.find_or_initialize_by(id: pu[0])
    pull_role.name = pu[1]
    pull_role.description = pu[2]
    pull_role.pull_id = pu[3]
    pull_role.encounter_id = pu[4]
    pull_role.leader_id = pu[5]
    pull_role.save!
end

#================================================
#Preseed Character Pull Role References
#================================================

character_pull_role_ref_array = [
    
    #[ID, PULL_ROLE_ID, CHARACTER_ID, LEADER_ID]
    [1,3,1,1],    #1
    [2,4,1,1],    #2
    [3,2,2,1],    #3
    [4,6,2,1],    #4
    [5,1,3,1],    #5
    [6,6,3,1],    #6
    [7,2,4,1],    #7
    [8,5,4,1]     #8
    ]
    
character_pull_role_ref_array.each do |c|
    c_pull_role_ref = CharacterPullRoleRef.find_or_initialize_by(id: c[0])
    c_pull_role_ref.pull_role_id = c[1]
    c_pull_role_ref.character_id = c[2]
    c_pull_role_ref.leader_id = c[3]
    c_pull_role_ref.save!
end

#================================================
#Preseed Encounter Character References
#================================================

encounter_character_ref_array = [
    
    #[ID, ENCOUNTER_ID, CHARACTER_ID, LEADER_ID]
    [1,1,1,1],  #1
    [2,1,2,1],  #2
    [3,1,3,1],  #3
    [4,1,4,1]   #4
    ]
    
encounter_character_ref_array.each do |e|
    e_character_ref = EncounterCharacterRef.find_or_initialize_by(id: e[0])
    e_character_ref.encounter_id = e[1]
    e_character_ref.character_id = e[2]
    e_character_ref.leader_id = e[3]
    e_character_ref.save!
end