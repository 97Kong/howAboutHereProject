package com.cos.howabout.reservation;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.cos.howabout.rest.Rest;
import com.cos.howabout.rooms.Rooms;
import com.cos.howabout.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @JoinColumn(name = "rest_id")
    @ManyToOne(fetch = FetchType.EAGER)
    private Rest rest;

    @JoinColumn(name = "rooms_id")
    @ManyToOne(fetch = FetchType.EAGER)
    private Rooms rooms;

    @JoinColumn(name = "user_id")
    @ManyToOne(fetch = FetchType.EAGER)
    private User user;

}
