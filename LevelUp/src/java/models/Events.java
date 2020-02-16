/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 806547
 */
@Entity
@Table(name = "events")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Events.findAll", query = "SELECT e FROM Events e")
    , @NamedQuery(name = "Events.findByEventId", query = "SELECT e FROM Events e WHERE e.eventId = :eventId")
    , @NamedQuery(name = "Events.findByEventName", query = "SELECT e FROM Events e WHERE e.eventName = :eventName")
    , @NamedQuery(name = "Events.findByDescription", query = "SELECT e FROM Events e WHERE e.description = :description")
    , @NamedQuery(name = "Events.findByPoints", query = "SELECT e FROM Events e WHERE e.points = :points")
    , @NamedQuery(name = "Events.findByStartTime", query = "SELECT e FROM Events e WHERE e.startTime = :startTime")
    , @NamedQuery(name = "Events.findByEndTime", query = "SELECT e FROM Events e WHERE e.endTime = :endTime")})
public class Events implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "EVENT_ID")
    private Long eventId;
    @Column(name = "EVENT_NAME")
    private String eventName;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "POINTS")
    private BigInteger points;
    @Column(name = "START_TIME")
    @Temporal(TemporalType.DATE)
    private Date startTime;
    @Column(name = "END_TIME")
    @Temporal(TemporalType.DATE)
    private Date endTime;
    @JoinColumn(name = "ORGANIZER_ID", referencedColumnName = "USERNAME")
    @ManyToOne(optional = false)
    private Users organizerId;

    public Events() {
    }

    public Events(Long eventId) {
        this.eventId = eventId;
    }

    public Long getEventId() {
        return eventId;
    }

    public void setEventId(Long eventId) {
        this.eventId = eventId;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigInteger getPoints() {
        return points;
    }

    public void setPoints(BigInteger points) {
        this.points = points;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Users getOrganizerId() {
        return organizerId;
    }

    public void setOrganizerId(Users organizerId) {
        this.organizerId = organizerId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (eventId != null ? eventId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Events)) {
            return false;
        }
        Events other = (Events) object;
        if ((this.eventId == null && other.eventId != null) || (this.eventId != null && !this.eventId.equals(other.eventId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Events[ eventId=" + eventId + " ]";
    }
    
}
