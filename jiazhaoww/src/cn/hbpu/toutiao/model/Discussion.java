package cn.hbpu.toutiao.model;

public class Discussion {
    private int id;
    private String title;
    private String content;
    private String image;
    private String time;
    public Discussion(){}
    public Discussion(int id, String title, String content) {
        this.id = id;
        this.title = title;
        this.content = content;
    }
    public Discussion(String title, String image, String time) {
        this.title = title;
        this.image = image;
        this.time = time;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
