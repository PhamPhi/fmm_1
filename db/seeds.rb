# TODO adding the list of users
users_list= [ ['Larry Pham','larryritchie.ceo@gmail.com','Product Manager', '09/09/1989', 2, 'abcd1234!','abcd1234!', 1,1],
              ['Kelly Chan','kellychan@gmail.com','Productive Supporter','30/03/1968', 1, 'abcd1234!','abcd1234!', 2,1],
              ['Wei Ming','wei.ming@gmail.com','Software Engineer','11/02/1975', 1, 'abcd1234!','abcd1234!', 2,0],
              ['JingWei Teoh','Jingwei.teoh@gmail.com','Software Engineer','25/02/1984', 1, 'abcd1234!','abcd1234!', 1,0],
              ['Walter Teoh','walter.teoh@gmail.com','Product Manager','20/04/1957', 2, 'abcd1234!','abcd1234!', 2,0],
              ['Kelly Keong','kelly.keong@gmail.com','Software Engineer','30/03/1972', 1, 'abcd1234!','abcd1234!', 1,0],
              ['Jing Chan Toeh','jingchan.teoh@gmail.com','Product Manager','20/08/1990', 2, 'abcd1234!','abcd1234!', 2,0] ,
              ['CheDinhSon','chedinhson@gmail.com','Software Engineer','30/03/1972', 1, '123456','123456',1,0],
              ['SonCheDinh','sonchedinh@gmail.com','Software Engineer','30/03/1972', 2, '123456','123456',2,0] ]
users_list.each do |user|
  User.create(name: user[0], email: user[1], profile: user[2], birth_date: user[3], permission: user[4], password: user[5], password_confirmation: user[6],
    team_id: user[7], leader_flag: user[8])
end

# TODO adding the list skill
skill_list = [
                ["Java"],
                ["C++"],
                ["Ruby on Rail"],
                ["PHP"],
                ["Android"],
                ["WindowPhone"]
              ]
              
skill_list.each do |skill|
  Skill.create(name: skill[0])
end

user_skill_list= [
    [1,1,4,3],
    [1,2,2,2],
    [1,5,4,3],
    [1,6,4,3],
    [2,1,4,3],
    [2,1,3,3],
    [2,3,4,5],
    [2,4,5,6],
    [3,1,4,3],
    [3,2,2,2],
    [4,1,2,2],
    [4,2,2,2],
    [5,5,2,2],
    [5,3,4,5],
    [5,4,2,2],
    [6,1,5,6],
    [6,2,5,6],
    [6,3,4,5],
    [7,1,3,4],
    [7,2,5,6],
    [7,3,4,5]
]
user_skill_list.each do |item|
  UserSkill.create(user_id: item[0], skill_id: item[1], level: item[2],
                                                used_year_number: item[3])
end

position_list = [
    ["Member", "Member"],
    ["Team Leader", "Team Leader"],
    ["Project Leader", "Project Leader"]
]
position_list.each do |position|
  Position.create(name: position[0], abbreviation: position[1])
end

# TODO adding the list team
team_list = [
  ["Andoid", "Team android"],
  ["PHP", "Team PHP"]
]
team_list.each do |team|
  Team.create(name: team[0], description: team[1] )
end

project_list = [
    ["Framgia Training Management", "FTM",
     DateTime.strptime("13/11/2012", "%d/%m/%Y"),
     DateTime.strptime("20/01/2013", "%d/%m/%Y"), 1],
    ["Framgia Test Management", "FTS",
     DateTime.strptime("20/01/2013", "%d/%m/%Y"),
     DateTime.strptime("20/02/2013", "%d/%m/%Y"), 2],
    ["Framgia Member Management", "FMM",
     DateTime.strptime("20/02/2013", "%d/%m/%Y"),
     DateTime.strptime("20/03/2013", "%d/%m/%Y"), 1],
]

project_list.each do |project|
  Project.create(name: project[0], abbreviation: project[1],
                 startdate: project[2], enddate: project[3], team_id: project[4])
end

user_position_in_project_list = [
    [1, 1, 1],
    [2, 3, 2],
    [3, 1, 1]
]

user_position_in_project_list.each do |upip|
  UserPositionInProject.create(user_id: upip[0], position_id: upip[0],
                               project_id: upip[0])
end
