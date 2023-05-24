/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entities;

/**
 *
 * @author MienTrungComputer
 */
public class Tour {
    private int tour_ID;
    private String startDate;
    private String endDate;
    private String hotel;
    private String city_ID;
    private String numberPeople;
    private String content;
    private String img;
    
    public Tour() {
    }

    public Tour(int tour_ID, String startDate, String endDate, String hotel, String city_ID, String numberPeople, String content, String img) {
        this.tour_ID = tour_ID;
        this.startDate = startDate;
        this.endDate = endDate;
        this.hotel = hotel;
        this.city_ID = city_ID;
        this.numberPeople = numberPeople;
        this.content = content;
        this.img = img;
    }

    

    

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getTour_ID() {
        return tour_ID;
    }

    public void setTour_ID(int tour_ID) {
        this.tour_ID = tour_ID;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getHotel() {
        return hotel;
    }

    public void setHotel(String hotel) {
        this.hotel = hotel;
    }

    public String getCity_ID() {
        return city_ID;
    }

    public void setCity_ID(String city_ID) {
        this.city_ID = city_ID;
    }

    public String getNumberPeople() {
        return numberPeople;
    }

    public void setNumberPeople(String numberPeople) {
        this.numberPeople = numberPeople;
    }
    
}
