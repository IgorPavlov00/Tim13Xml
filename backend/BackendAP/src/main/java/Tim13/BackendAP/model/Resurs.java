package Tim13.BackendAP.model;

public class Resurs {
    private String id;
    private String content;

    public Resurs() {
    }

    public Resurs(String id, String content) {
        this.id = id;
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Resurs{" +
                "id='" + id + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
