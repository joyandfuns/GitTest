package cn.itcast.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.ItemsCustomMapper;
import cn.itcast.ssm.po.ItemsCustom;
import cn.itcast.ssm.po.ItemsQueryVo;

public class ItemsServiceImpl implements ItemsService{

	@Autowired
	private ItemsCustomMapper itemsCustomMapper;
	@Override
	public List<ItemsCustom> selectItemsCustom(ItemsQueryVo itemsQueryVo) throws Exception {
		return itemsCustomMapper.selectItemsCustom(itemsQueryVo);
	}

}
