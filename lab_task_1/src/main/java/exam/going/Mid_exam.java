package exam.going;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("cA")

public class Mid_exam implements ExamInterface {

    @Value("${my.mid.exam.date}")
    private String mid;

    @Override
    public String Mid_exam() {
        return "Mid exam date is =  " + mid ;
    }

    public String getMid() {
        return mid;
    }
    public void setMid(String mid) {
        this.mid = mid;
    }

    @Value("${my.final.exam.date}")
    private String final_exam;

    @Override
    public String Final_exam() {
        return "Final exam date is =  " + final_exam ;
    }

    public String getFinal_exam() {return final_exam;}
    public void setFinal_exam(String final_exam) {this.final_exam = final_exam;}
}
