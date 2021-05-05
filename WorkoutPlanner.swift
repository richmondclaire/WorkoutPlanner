// Create a struct called Exercise
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroups: [String], reps: Int, sets: Int){
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps*sets
  }
}

// Create instances of Exercises
var pushup = Exercise(name: "Push-up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)
var situp = Exercise(name: "Sit-up", muscleGroups: ["Abs"], reps: 25, sets: 2)
var squat = Exercise(name: "Squat", muscleGroups: ["Quads", "Hamstring", "Glute", "Abs"], reps: 10, sets: 3)

//Create struct called Regimen
struct Regimen {
  // Instance Variables
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]){
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  //Function allows you to print exercise plan 
  func printExercisePlan(){
    print("\(self.dayOfWeek)'s workout: ")
    for exercise in self.exercises {
    print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s -> total: \(exercise.totalReps) \(exercise.name)s")
    }
  }
}

//Design your workout plan. Decide what exercises you need to do on what days of the weeks.
var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushup, situp])
var wednesdayRegimen = Regimen(dayOfWeek: "Wednesday", exercises: [squat, situp])
var fridayRegimen = Regimen(dayOfWeek: "Friday", exercises: [pushup, squat])

//Print your workout plan.
mondayRegimen.printExercisePlan()
wednesdayRegimen.printExercisePlan()
fridayRegimen.printExercisePlan()
