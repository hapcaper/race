package cn.springmvc.entry;

/**
 * Created by ASUS on 2017/6/27.
 */
public class StuRace {
    private Integer id ;
    private Integer stuId ;
    private String stuName ;
    private Integer RaceId ;
    private String RaceName ;

    @Override
    public String toString() {
        return "StuRace{" +
                "id=" + id +
                ", stuId=" + stuId +
                ", stuName='" + stuName + '\'' +
                ", RaceId=" + RaceId +
                ", RaceName='" + RaceName + '\'' +
                ", status=" + status +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public Integer getRaceId() {
        return RaceId;
    }

    public void setRaceId(Integer raceId) {
        RaceId = raceId;
    }

    public String getRaceName() {
        return RaceName;
    }

    public void setRaceName(String raceName) {
        RaceName = raceName;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    private Integer status ;
}
