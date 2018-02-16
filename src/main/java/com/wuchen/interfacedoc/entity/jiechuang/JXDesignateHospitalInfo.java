package com.wuchen.interfacedoc.entity.jiechuang;

import com.alibaba.fastjson.annotation.JSONField;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/26 9:23
 */
public class JXDesignateHospitalInfo {
    /**
     * 医院编码
     */
    private String hospitalNumber;

    /**
     * 医院名字
     */
    private String hospitalName;

    /**
     * 医院等级
     */
    private String hospitalGrade;

    /**
     * 联系人
     */
    private String linkman;

    /**
     * 联系电话
     */
    private String telephone;

    /**
     * 联系手机
     */
    private String mobilephone;

    /**
     * 开户银行
     */
    private String bank;

    /**
     * 帐号
     */
    private String accounts;

    /**
     * 地址
     */
    private String address;

    /**
     * 通信密钥
     */
    private String hKey;

    /**
     * 所属地区编码
     */
    private String areacode;

    /**
     * 基本医保机构编码
     */
    @JSONField(name = "basic_insorg_code")
    private String basicInsorgCode;

    /**
     * 参保年度
     */
    @JSONField(name = "insure_year")
    private String insureYear;

    /**
     * 基本医保机构地区编码
     */
    @JSONField(name = "basic_area_code")
    private String basicAreaCode;

    /**
     * 基本医保机构医院编码
     */
    @JSONField(name = "basic_hospital_number")
    private String socialHospitalNumber;

    /**
     * 数据来源
     */
    @JSONField(name = "data_source")
    private String datasource;

    private JXDesignateHospitalInfo() {
    }

    public static JXDesignateHospitalInfo build() {
        return new JXDesignateHospitalInfo();
    }

    
    public String getBasicAreaCode() {
        return basicAreaCode;
    }

    public JXDesignateHospitalInfo setBasicAreaCode(String basicAreaCode) {
        this.basicAreaCode = basicAreaCode;
        return this;
    }
    
    public String getHospitalNumber() {
        return hospitalNumber;
    }

    public JXDesignateHospitalInfo setHospitalNumber(String hospitalNumber) {
        this.hospitalNumber = hospitalNumber;
        return this;
    }
    
    public String getHospitalName() {
        return hospitalName;
    }

    public JXDesignateHospitalInfo setHospitalName(String hospitalName) {
        this.hospitalName = hospitalName;
        return this;
    }
    
    public String getHospitalGrade() {
        return hospitalGrade;
    }

    public JXDesignateHospitalInfo setHospitalGrade(String hospitalGrade) {
        this.hospitalGrade = hospitalGrade;
        return this;
    }
    
    public String getLinkman() {
        return linkman;
    }

    public JXDesignateHospitalInfo setLinkman(String linkman) {
        this.linkman = linkman;
        return this;
    }
    
    public String getTelephone() {
        return telephone;
    }

    public JXDesignateHospitalInfo setTelephone(String telephone) {
        this.telephone = telephone;
        return this;
    }
    
    public String getMobilephone() {
        return mobilephone;
    }

    public JXDesignateHospitalInfo setMobilephone(String mobilephone) {
        this.mobilephone = mobilephone;
        return this;
    }
    
    public String getBank() {
        return bank;
    }

    public JXDesignateHospitalInfo setBank(String bank) {
        this.bank = bank;
        return this;
    }
    
    public String getAccounts() {
        return accounts;
    }

    public JXDesignateHospitalInfo setAccounts(String accounts) {
        this.accounts = accounts;
        return this;
    }
    
    public String getAddress() {
        return address;
    }

    public JXDesignateHospitalInfo setAddress(String address) {
        this.address = address;
        return this;
    }
    
    public String gethKey() {
        return hKey;
    }

    public JXDesignateHospitalInfo sethKey(String hKey) {
        this.hKey = hKey;
        return this;
    }
    
    public String getAreacode() {
        return areacode;
    }

    public JXDesignateHospitalInfo setAreacode(String areacode) {
        this.areacode = areacode;
        return this;
    }
    
    public String getBasicInsorgCode() {
        return basicInsorgCode;
    }

    public JXDesignateHospitalInfo setBasicInsorgCode(String basicInsorgCode) {
        this.basicInsorgCode = basicInsorgCode;
        return this;
    }
    
    public String getInsureYear() {
        return insureYear;
    }

    public JXDesignateHospitalInfo setInsureYear(String insureYear) {
        this.insureYear = insureYear;
        return this;
    }
    
    public String getSocialHospitalNumber() {
        return socialHospitalNumber;
    }

    public JXDesignateHospitalInfo setSocialHospitalNumber(String socialHospitalNumber) {
        this.socialHospitalNumber = socialHospitalNumber;
        return this;
    }
    
    public String getDatasource() {
        return datasource;
    }

    public JXDesignateHospitalInfo setDatasource(String datasource) {
        this.datasource = datasource;
        return this;
    }

}
