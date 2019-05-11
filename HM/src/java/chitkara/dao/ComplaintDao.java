
package chitkara.dao;

public class ComplaintDao {
    
    private int id;
    private String first_name;
    private String last_name;
    private String uid;
    private String comp;
    private String status;
    
    public int getId(){
        return id;
    }
    public void setId(int id)
    {
        this.id=id;
    }
    public String getFirst_name(){
        return first_name;
    }
    public void setFirst_name(String first_name)
    {
        this.first_name=first_name;
    }
    public String getLast_name(){
        return last_name;
    }
        public void setLast_name(String last_name)
    {
        this.last_name=last_name;
    }
    public String getUid() {
        return uid;
    }
    public void setUid(String uid)
    {
        this.uid=uid;
    }
    
    public String getComplaint(){
        return comp;
    }
    public void setComplaint(String comp)
    {
        this.comp=comp;
    }
    public String getStatus(){
        return status;
    }
    public void setStatus(String status)
    {
        this.status=status;
    }
    
    
}
