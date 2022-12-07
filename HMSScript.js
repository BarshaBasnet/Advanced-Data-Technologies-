//TASK 3:
show dbs

use Hospital_Management_System


db

//drop existing collections
db.Hospital.drop()
db.Patient.drop()
db.User.drop()
db.Appointment.drop()
db.Medicine.drop()
db.Doctor.drop()



//Collection name - Hospital
//address column is nested document


//Hospital:
db.Hospital.insertMany([
{_id: "1", Patient_Id: "1", Doctor_id:"1",Medicine_id:"1", Name:"Vayodha",Type:"Eye-hospital",
    Description:"best eye hospital",
     Address:{
         City:"Kathmandu", 
         Zip:"123"
     }
   },
    
   {_id: "2", Patient_Id: "2", Doctor_id:"2",Medicine_id:"2", Name:"Om",Type:"Heart-hospital",Description:"best heart hospital",
       Address:{
         City:"Bhaktapur", 
         Zip:"986"
     }
   },
   
   
   {_id: "3", Patient_Id: "3", Doctor_id:"3",Medicine_id:"3", Name:"Neuro",Type:"Skin-hospital",Description:"best skin hospital",
       Address:{
         City:"Lalitpur", 
         Zip:"985"
     }
   },
   
   
   {_id: "4", Patient_Id: "4", Doctor_id:"4",Medicine_id:"4", Name:"Gangalal",Type:"teeth-hospital",Description:"best teeth hospital",
       Address:{
         City:"Kathmandu", 
         Zip:"100"
     }
     },
     
     
   {_id: "5", Patient_Id: "5", Doctor_id:"5",Medicine_id:"5", Name:" Vayodha",Type:"Eye-hospital",Description:"best eye hospital",
       Address:{
         City:"Pokhara", 
         Zip:"111"
     }
   },
   
   
   {_id: "6", Patient_Id: "6", Doctor_id:"6",Medicine_id:"6", Name:"Om",Type:"Heart-hospital",Description:"best heart hospital",
       Address:{
         City:"Dhangadi", 
         Zip:"222"
     }
   },
   
   
   {_id: "7", Patient_Id: "7", Doctor_id:"7",Medicine_id:"7", Name:" Neuro",Type:"Skin-hospital",Description:"best skin hospital",
       Address:{
         City:"India", 
         Zip:"233"
     }
   },
]);


db.Hospital.find()

db.Hospital.drop()

//Patient:
db.Patient.insertMany([
{_id: "1", Usr_Id: "1", Hospital_Id:"1", Mobile: "999999999", UserName: "Barsha",
       UsrType:
      {
           Name: "Barsha", 
           Email: "Barshabasnet4422@gmail.com", 
           DOB: "11/Dec/2000",
            Address:"Kirtipur", 
            Password:"2131"
      }
   },
    
   {_id: "2", Usr_Id: "2", Hospital_Id:"2", Mobile: "988888888", UserName: "Ujjwal",
    
      UsrType:
      {
           Name: "Urmila", 
           Email: "Urmilabasnet1234@gmail.com", 
           DOB: "10/Aug/1994", 
           Address:"Bhaktapur",
            Password:"2244"
      }
   },
   
   {_id: "3", Usr_Id: "3", Hospital_Id:"3", Mobile: "977777777", UserName: "Urmila",
         UsrType:
      {
          Name: "Balkrishna", 
          Email: "Balkrishnabasnet2424@gmail.com", 
          DOB: "2/Jan/1993", 
          Address:"Bhatkyapati", 
          Password:"2113"
      }
   },
   
   
   {_id: "4", Usr_Id: "4", Hospital_Id:"4", Mobile: "966666666", UserName: "Balkrishna",
      UsrType:
      {
           Name: "Ujjwal",
            Email: "Ujjwalbasnet2244@gmail.com", 
            DOB: "8/Dec/1999",
             Address:"Baneshowr", 
             Password:"1212"
      }
     },
     
     
   {_id: "5", Usr_Id: "5", Hospital_Id:"5", Mobile: "955555555", UserName: "Anusha",
      UsrType:
      {
           Name: "Anusha", 
           Email: "Rimalanusha2020@gmail.com",
           DOB: "5/Feb/2021",
           Address:"Dhangadi", 
           Password:"1111"
      }
   },
   
   
   {_id: "6", Usr_Id: "6", Hospital_Id:"6", Mobile: "999999998", UserName: "Ram",
         UsrType:
      {
           Name: "Ram",
           Email: "Rambasnet232@gmail.com", 
           DOB: "11/Feb/2000", 
           Address:"Kirtipur", 
           Password:"2311"
      }
   },
   
   
   {_id: "7", Usr_Id: "7", Hospital_Id:"7", Mobile: "988888887", UserName: "Shyam",
         UsrType:
      {
           Name: "Shyam",
           Email: "Shyambasnet234@gmail.com", 
           DOB: "12/Aug/1995", 
           Address:"Bhaktapur",
           Password:"4422"
      }
   }
]);

db.Patient.find()
db.Patient.drop()

//Doctor:

db.Doctor.insertMany([
   {_id: "1", Usr_Id: "1", Mobile: "444546478", UserName: "Raj",
       UsrType:
      {
           Name: "Barsha", 
           Email: "Barshabasnet4422@gmail.com", 
           DOB: "11/Dec/2000",
            Address:"Kirtipur", 
            Password:"2131"
      }
   },
    
   {_id: "2", Usr_Id: "2", Mobile: "012345678", UserName: "Basnet",
    
      UsrType:
      {
           Name: "Urmila", 
           Email: "Urmilabasnet1234@gmail.com", 
           DOB: "10/Aug/1994", 
           Address:"Bhaktapur",
            Password:"2244"
      }
   },
   
   {_id: "3", Usr_Id: "3", Mobile: "012345671", UserName: "Dhakal",
         UsrType:
      {
          Name: "Balkrishna", 
          Email: "Balkrishnabasnet2424@gmail.com", 
          DOB: "2/Jan/1993", 
          Address:"Bhatkyapati", 
          Password:"2113"
      }
   },
   
   
   {_id: "4", Usr_Id: "4", Mobile: "012345674", UserName: "Shrestha",
      UsrType:
      {
           Name: "Ujjwal",
            Email: "Ujjwalbasnet2244@gmail.com", 
            DOB: "8/Dec/1999",
             Address:"Baneshowr", 
             Password:"1212"
      }
     },
     
     
   {_id: "5", Usr_Id: "5", Mobile: "012345675", UserName: "Rimal",
      UsrType:
      {
           Name: "Anusha", 
           Email: "Rimalanusha2020@gmail.com",
           DOB: "5/Feb/2021",
           Address:"Dhangadi", 
           Password:"1111"
      }
   },
   
   
   {_id: "6", Usr_Id: "6", Mobile: "012345676", UserName: "Adhikari",
         UsrType:
      {
           Name: "Ram",
           Email: "Rambasnet232@gmail.com", 
           DOB: "11/Feb/2000", 
           Address:"Kirtipur", 
           Password:"2311"
      }
   },
   
   {_id: "7", Usr_Id: "7", Mobile: "012345677", UserName: "Bahadur",
         UsrType:
      {
           Name: "Shyam",
           Email: "Shyambasnet234@gmail.com", 
           DOB: "12/Aug/1995", 
           Address:"Bhaktapur",
           Password:"4422"
      }
   }
]);


db.Doctor.find()
db.Doctor.drop()


//User:
db.User.insertMany([
   {_Id: "1", Name: "Barsha", Email: "Barshabasnet4422@gmail.com", DOB: ISODate("2000-12-11"),  Address:"Kirtipur", Password:"2131"
   },
    
   {_Id: "2", Name: "Urmila", Email: "Urmilabasnet1234@gmail.com", DOB: ISODate( "1994-08-12"), Address:"Bhaktapur", Password:"2244"
    
   },
   
   {_Id: "3", Name: "Balkrishna", Email: "Balkrishnabasnet2424@gmail.com", DOB: ISODate( "1995-04-12"), Address:"Bhatkyapati", Password:"2113"
   },
   
   {_Id: "4", Name: "Ujjwal", Email: "Ujjwalbasnet2244@gmail.com", DOB: ISODate( "1996-07-12"), Address:"Baneshowr", Password:"1212"
    
     },
     
   {_Id: "5", Name: "Anusha", Email: "Rimalanusha2020@gmail.com", DOB: ISODate( "1997-09-12"), Address:"Dhangadi", Password:"1111"
    
   },
   
   {_Id: "6", Name: "Ram", Email: "Rambasnet232@gmail.com", DOB: ISODate( "1996-07-12"), Address:"Kirtipur", Password:"2311"
   },
   
   {_Id: "7", Name: "Shyam", Email: "Shyambasnet234@gmail.com", DOB: ISODate( "1995-08-12"), Address:"Bhaktapur", Password:"4422"
   },
]);


db.User.find()
db.User.drop()


//Medicine:
db.Medicine.insertMany([
   {_id: "1", Name: "Analgesics", Medicine_Company: "ABC", Cost: 1300, Type:"aspirin", 
       Description:"It relieves pain without causing numbness"
   },
    
   {_id: "2", Name: "Paracetamol", Medicine_Company: "BCD", Cost:  50, Type:"Codeine", 
       Description:"it relieves mild to moderate pain"
   },
   
   {_id: "3", Name: "Antibiotics", Medicine_Company: "CDE", Cost:  500, Type:"Penicillin", 
       Description:"used to kill/slow down the growth of bacteria"
   },
   
   {_id: "4", Name: "Psychotherapeuti", Medicine_Company: "FGH", Cost:  1000, Type:"Stimulant", 
       Description:"used to alter abnormal thinking, feelings"
    
     },
     
   {_id: "5", Name: "Psychotherapeuti", Medicine_Company: "HIJ", Cost:  1500, Type:"Antidepressant", 
       Description:"to reduce tension and anxiety"
   },
   
   {_id: "6", Name: "Psychotherapeuti", Medicine_Company: "HIJK", Cost:  1200, Type:"Antipsychotic",
        Description:"to reduce tension and anxiety"
   },
   
   {_id: "7", Name: "Psychotherapeuti", Medicine_Company: "HIJKM", Cost: 800, Type:"Antipsychotic", 
       Description:"treat psychiatric illnesses such as schizophrenia"
   },
]);

db.Medicine.find()

db.Medicine.drop()


//Appointment:
db.Appointment.insertMany([
   {_id: "1", Doctor_id: "1", Appointment_Number: "478", Appointment_type: "Vaccinations", Appointment_Date:"7/Jan/2022",
        Description:"Corona Vaccine"
   },
   
    
   {_id: "2", Doctor_id: "2", Appointment_Number: "4445464710", Appointment_type: "Routine checkup", 
       Appointment_Date:"12/Jan/2022", Description:"Teeth checkup"
   },
   
   
   {_id: "3", Doctor_id: "3", Appointment_Number: "471", Appointment_type: "EyeCare", Appointment_Date:"8/Jan/2022",
        Description:"Eye pain"
   },
   
   
   {_id: "4", Doctor_id: "4", Appointment_Number: "472", Appointment_type: "Mammograms", Appointment_Date:"1/Jan/2022",
        Description:"Vaccine"
    
     },
     
     
   {_id: "5", Doctor_id: "5", Appointment_Number: " 444546476", Appointment_type: "Routine checkup", 
       Appointment_Date:"5/Jan/2022", Description:"Wholebody checkup"
    
   },
   
   
   {_id: "6", Doctor_id: "6", Appointment_Number: "444546479", Appointment_type: "Vaccinations", Appointment_Date:"11/Jan/2022",
        Description:"Chickenpox Vaccine"
   },
   
   
   {_id: "7", Doctor_id: "7", Appointment_Number: "444546478", Appointment_type: "Routine checkup", Appointment_Date:"10/Jan/2022",
        Description:"Blood test"
   },
]);


db.Appointment.find()

db.Appointment.drop()


//Task 5 mongo:

//QUESTION NO 5(a)

db.Hospital.aggregate([

    {
      $lookup:
      {
        from: "Patient", 
        localField: "_id", // id of Patient
        foreignField: "Hospital_Id", // id of Hospital table
        as: "Patient_info"         
      }
    },
    {$unwind:"$Patient_info"}, 

    
    {
      $lookup:
      {
        from: "Medicine", 
        localField: "_Id", 
        foreignField: "Hospital_Id",
        as: "Medicine_info"
      }
    },
    {$unwind:"$Medicine_info"},
]);



//QUESTION NO 5(b) ANSWER
// nested collection
db.Hospital.find(
     {
        "Address.City" : "Kathmandu" 
     }
 )
 

 
 //QUESTION NO 5(c) ANSWER

db.User.find({
    DOB: 
    {
      $gte: ISODate("1996-01-01T00:00:00.000Z")
    }
})

db.User.find()

//QUESTION NO 5(d) ANSWER
db.Medicine.aggregate([
     {
       $group:
          {
            _id: "$Type",  
            sum: { $sum: "$Cost" },
            count: { "$sum": 1 }
          }
     }
])
 
 
 




