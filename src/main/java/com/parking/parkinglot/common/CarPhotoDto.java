package com.parking.parkinglot.common;

public class CarPhotoDto {

    private Long id;
    private String filename;
    private String fileType;
    private byte[] fileContent;

    public CarPhotoDto(Long id, String filename, String filetype, byte[] fileContent) {
        this.id = id;
        this.filename = filename;
        this.fileType = filetype;
        this.fileContent = fileContent;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public Long getId() {
        return id;
    }

    public String getFilename() {
        return filename;
    }

    public String getFileType() {
        return fileType;
    }

    public byte[] getFileContent() {
        return fileContent;
    }
}
