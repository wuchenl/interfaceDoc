package com.wuchen.interfacedoc;

import com.alibaba.fastjson.JSON;
import com.wuchen.interfacedoc.entity.XmlEntity;
import com.wuchen.interfacedoc.entity.XmlEntityItem;
import com.wuchen.interfacedoc.entity.jiechuang.JXPackage;
import com.wuchen.interfacedoc.entity.jiechuang.JXrequest;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.XML;
import org.junit.Test;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/22 15:02
 */
@Slf4j
public class xmlTest {
    @Test
    public void tranToXml(){
        XmlEntity xmlEntity=new XmlEntity();
        xmlEntity.setTest("2222");
        xmlEntity.setTestUnder("333");
        XmlEntityItem xmlEntityItem=new XmlEntityItem();
        xmlEntityItem.setNumber("1");
        XmlEntityItem xmlEntityItem2=new XmlEntityItem();
        xmlEntityItem2.setNumber("5");
        List<XmlEntityItem> xmlEntityItemList=new ArrayList<>();
        xmlEntityItemList.add(xmlEntityItem);
        xmlEntityItemList.add(xmlEntityItem2);
       // xmlEntity.setItems(xmlEntityItemList);
        System.out.printf(convertToXml(xmlEntity));
        log.info("sssssssss");
        System.out.println();
    }

    @Test
    public void tranToBO(){
        String xmlStr="<body><test>1111</test><test_under>2222</test_under><item><number>2222</number></item></body>";
        XmlEntity xmlEntity= (XmlEntity) convertXmlStrToObject(XmlEntity.class,xmlStr);
        System.out.printf(convertToXml(xmlEntity));
    }

    /**
     * 将String类型的xml转换成对象
     */
    public static Object convertXmlStrToObject(Class clazz, String xmlStr) {
        Object xmlObject = null;
        try {
            JAXBContext context = JAXBContext.newInstance(clazz);
            // 进行将Xml转成对象的核心接口
            Unmarshaller unmarshaller = context.createUnmarshaller();
            StringReader sr = new StringReader(xmlStr);
            xmlObject = unmarshaller.unmarshal(sr);
        } catch (JAXBException e) {
            e.printStackTrace();
        }
        return xmlObject;
    }

    /**
     * 将对象直接转换成String类型的 XML输出
     *
     * @param obj
     * @return
     */
    public static String convertToXml(Object obj) {
        // 创建输出流
        StringWriter sw = new StringWriter();
        try {
            // 利用jdk中自带的转换类实现
            JAXBContext context = JAXBContext.newInstance(obj.getClass());

            Marshaller marshaller = context.createMarshaller();
            // 格式化xml输出的格式
            marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT,
                    Boolean.TRUE);
            // 将对象转换成输出流形式的xml
            marshaller.marshal(obj, sw);
        } catch (JAXBException e) {
            e.printStackTrace();
        }
        return sw.toString();
    }


    @Test
    public void testJieChuang()throws JSONException {
        String xml="<?xml version=\"1.0\" encoding=\"GBK\"?>\n" +
                "<package>\n" +
                "  <head>\n" +
                "    <action_code>1104</action_code>\n" +
                "    <mechanism_code/>\n" +
                "    <create_date>2017-10-10 11:28</create_date>\n" +
                "  </head>\n" +
                "  <body>\n" +
                "    <designateHospitalInfo>\n" +
                "      <hospitalNumber>5201000000000020</hospitalNumber>\n" +
                "      <hospitalName>贵阳市第六人民医院</hospitalName>\n" +
                "      <hospitalGrade>三级特等</hospitalGrade>\n" +
                "      <hKey>MuIJ2a3Ho00X076hAa68grEA</hKey>\n" +
                "      <areacode>520100</areacode>\n" +
                "      <payWay>B</payWay>\n" +
                "    </designateHospitalInfo>\n" +
                "  </body>\n" +
                "  <addition_information>\n" +
                "    <has_operation_successful>true</has_operation_successful>\n" +
                "    <hint/>\n" +
                "    <obtained_records_number>0</obtained_records_number>\n" +
                "  </addition_information>\n" +
                "</package>";

        //将xml转为json（注：如果是元素的属性，会在json里的key前加一个@标识）

       String json=XML.toJSONObject(xml).toString();
        JXrequest jxPackage= JSON.parseObject(json,JXrequest.class);
        System.out.println(JSON.toJSONString(jxPackage));
    }

}
