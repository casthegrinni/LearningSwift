    
  //Don't change this
var aYear =  1900 

func isLeap(year: Int) {
    var msg = ""

    if year%4 == 0 {

        if year%100 == 0 {

            if year%400 == 0 {

                msg = "\(year) is a leap year"

            } else {
              msg = "\(year) isn't a leap year"  

            }
        } else {
            msg = "\(year) is a leap year"

        }
    } else {
        msg = "\(year) isn't a leap year"
        
    }
   
    print(msg)
}

isLeap(year: aYear)
