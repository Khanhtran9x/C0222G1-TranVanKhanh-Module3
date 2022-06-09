package model;

public class Portfolio {
    private String portfolioId;
    private String patientId;
    private String patientName;
    private String outDate;
    private String inDate;
    private String reason;

    public Portfolio(String portfolioId, String patientId, String patientName, String outDate, String inDate, String reason) {
        this.portfolioId = portfolioId;
        this.patientId = patientId;
        this.patientName = patientName;
        this.outDate = outDate;
        this.inDate = inDate;
        this.reason = reason;
    }

    public String getPortfolioId() {
        return portfolioId;
    }

    public void setPortfolioId(String portfolioId) {
        this.portfolioId = portfolioId;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getOutDate() {
        return outDate;
    }

    public void setOutDate(String outDate) {
        this.outDate = outDate;
    }

    public String getInDate() {
        return inDate;
    }

    public void setInDate(String inDate) {
        this.inDate = inDate;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
