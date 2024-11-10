User.create!([
  {name: "bob", email: "bob@hotmail.com", password_digest: "$2a$12$a.FSTMUmbbAs4nLxj6OVhuDRz38/0OC9eyUNbb8PUaVewaur6cq4G", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9UdkG68P9AHESMfKJ-2Ybi9pfnqX1tqx3wQ&s"},
  {name: "susan", email: "susan@yahoo.com", password_digest: "$2a$12$qCTcCoyoE05QW7nCEjk2CeUZ36ZH57dmnOZqkW0nYnfoyIwgyWK/W", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCNpPbSd_CoX49aOh3yIatzexlMFZGGjd7ww&s"},
  {name: "jordan", email: "jordan@comcast.org", password_digest: "$2a$12$xJ81Uky0e.MiH/hVahK.dO9XKpKe0nIyKEawJhH8ny5bDoCRVZ2Dm", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk740kSKRQ6-Zqea74Ftb6XQyGHQLbTt0MNQ&s"}
])
Exercise.create!([
  {name: "Bench Press", description: "The bench press is a strength training exercise that involves lying on a bench and pressing a weighted barbell or dumbbells upward from chest level, primarily targeting the chest, shoulders, and triceps.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSht1w_kuhsbWD5km6h9OmrTaB09LgxRWdO0g&s", video_url: "https://www.youtube.com/watch?v=SCVCLChPQFY"},
  {name: "Deadlift", description: "A compound movement targeting the lower back, glutes, hamstrings, and core.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_1Tb0f7scqTAOg2DdeATrnvK-yRLQF6M5Hw&s", video_url: "https://www.youtube.com/watch?app=desktop&v=op9kVnSso6Q"},
  {name: "Squat", description: "The squat is a lower-body strength exercise where a person bends their knees and lowers their hips, then returns to a standing position, targeting the thighs, hips, and glutes.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH77X0ZS62ergiaP8-7bo9T8d4L9a-w5vwqg&s", video_url: "https://www.youtube.com/watch?v=ultWZbUMPL8"},
  {name: "Overhead Press", description: "A shoulder exercise that also engages the triceps and upper chest.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn-6sPASUueC3m16jju-i_BVrc1-V_GZxVIA&s", video_url: "https://www.muscleandstrength.com/exercises/military-press.html"},
  {name: "Pull-up", description: "A bodyweight exercise that targets the back, shoulders, and arms.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8RIoJljrEQpZu8Uxo9ozvzcNwM_x3FVZv3w&s", video_url: "https://www.youtube.com/watch?v=aAggnpPyR6E"},
  {name: "Lunges", description: "A lower-body exercise targeting the quads, glutes, and hamstrings.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdGbJpXExTMiYwPl_LcWC8Eo-26NwuPnCnlw&s", video_url: "https://www.youtube.com/watch?v=L8fvypPrzzs"},
  {name: "Dips", description: "A bodyweight exercise that targets the chest, triceps, and shoulders.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpj2DPi3c6XL2Wjy9gbqmtrpudsYc5apj9vQ&s", video_url: "https://www.youtube.com/watch?v=yPxPSG_LLUY"},
  {name: "Bent-over Row", description: "Focuses on the back, biceps, and shoulders.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqOs_e2DM2W8lzYsxuTp7IuD85jWS0ddfyGQ&s", video_url: "https://www.youtube.com/watch?v=GIqICKwpUHw"},
  {name: "Skull Crushers", description: "A triceps-focused exercise performed with an EZ bar or dumbbells.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Ot3MDPE9HkslAWe932WrT8afT-KcapC0CA&s", video_url: "https://www.youtube.com/watch?v=D47mYdoKllE"},
  {name: "Chest Fly", description: "Targets the chest muscles (pectorals) and can be done using dumbbells or a machine.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSez9Spp_1QbGnjxa3e1XfH0nWrMwle2TtFGQ&s", video_url: "https://www.youtube.com/watch?v=Nhvz9EzdJ4U"}
])
Routine.create!([
  {user_id: 1, exercise_id: 1, reps: 3, sets: "5 sets"},
  {user_id: 3, exercise_id: 1, reps: 8, sets: "3 sets"},
  {user_id: 2, exercise_id: 3, reps: 5, sets: "5 sets"},
  {user_id: 1, exercise_id: 3, reps: 10, sets: "3 sets"},
  {user_id: 2, exercise_id: 9, reps: 15, sets: "3 sets"},
  {user_id: 2, exercise_id: 7, reps: 8, sets: "5 sets"}
])

