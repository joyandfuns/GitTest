package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.Liverpool;

public interface PlayerMapper {
	public List<Liverpool> findPlayerByGoals() throws Exception;
	public List<Liverpool> findAllPlayers() throws Exception;
	public Liverpool findPlayerByNumber(int id) throws Exception;
	public void updatePlayer(Liverpool liverpool) throws Exception;
	public void insertPlayer(Liverpool liverpool) throws Exception;
	public void deletePlayerByID(int id) throws Exception;
}
