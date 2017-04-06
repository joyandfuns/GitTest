package cn.itcast.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.PlayerMapper;
import cn.itcast.ssm.po.Liverpool;

public class LiverpoolServiceImpl implements LiverpoolService{
	@Autowired
	private PlayerMapper playerMapper;
	@Override
	public List<Liverpool> findPlayerByGoals() throws Exception {
		return playerMapper.findPlayerByGoals();
	}
	@Override
	public List<Liverpool> findAllPlayers() throws Exception {
		return playerMapper.findAllPlayers();
	}
	@Override
	public Liverpool findPlayerByNumber(int id) throws Exception {
		return playerMapper.findPlayerByNumber(id);
	}
	@Override
	public void updatePlayer(int id,Liverpool liverpool) throws Exception {
		liverpool.setNumber(id);
		playerMapper.updatePlayer(liverpool);
	}
	@Override
	public void insertPlayer(Liverpool liverpool) throws Exception {
		playerMapper.insertPlayer(liverpool);
	}
	@Override
	public void deletePlayerByID(int id) throws Exception {
		playerMapper.deletePlayerByID(id);
	}
}
