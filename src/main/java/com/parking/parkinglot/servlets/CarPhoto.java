package com.parking.parkinglot.servlets;

import com.parking.parkinglot.common.CarPhotoDto;
import com.parking.parkinglot.ejb.CarsBean;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="CarPhoto",value = "/CarPhoto")
public class CarPhoto extends HttpServlet {

    @Inject
    CarsBean carsBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Integer carId=Integer.parseInt(request.getParameter("id"));
        CarPhotoDto photo=carsBean.findPhotoByCarId(carId);

        if(photo!=null){
            response.setContentType(photo.getFileType());
            response.setContentLength(photo.getFileContent().length);
            response.getOutputStream().write(photo.getFileContent());

        }else{
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
    }
