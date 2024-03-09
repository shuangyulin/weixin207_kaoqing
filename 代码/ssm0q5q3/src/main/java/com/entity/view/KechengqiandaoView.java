package com.entity.view;

import com.entity.KechengqiandaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 课程签到
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-06 17:45:23
 */
@TableName("kechengqiandao")
public class KechengqiandaoView  extends KechengqiandaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KechengqiandaoView(){
	}
 
 	public KechengqiandaoView(KechengqiandaoEntity kechengqiandaoEntity){
 	try {
			BeanUtils.copyProperties(this, kechengqiandaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
