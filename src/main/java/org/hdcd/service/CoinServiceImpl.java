package org.hdcd.service;

import java.util.ArrayList;
import java.time.LocalDateTime;
import java.util.List;

import org.hdcd.domain.ChargeCoin;
import org.hdcd.domain.Member;
import org.hdcd.domain.PayCoin;
import org.hdcd.repository.ChargeCoinRepository;
import org.hdcd.repository.MemberRepository;
import org.hdcd.repository.PayCoinRepository;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CoinServiceImpl implements CoinService {

	private final ChargeCoinRepository chargeCoinRepository;
	
	private final PayCoinRepository payCoinRepository;
	
	private final MemberRepository memberRepository;
	
	@Transactional
	@Override
	public void charge(ChargeCoin chargeCoin) throws Exception {
		Member memberEntity = memberRepository.getOne(chargeCoin.getUserNo());
		
		int coin = memberEntity.getCoin();
		int amount = chargeCoin.getAmount();
		
		memberEntity.setCoin(coin + amount);
	
		memberRepository.save(memberEntity);
		
		chargeCoinRepository.save(chargeCoin);
	}

	@Override
	public List<ChargeCoin> list(Long userNo) throws Exception {
		return chargeCoinRepository.findAll(Sort.by(Direction.DESC, "historyNo"));
	}

	@Override
	public List<ChargeCoin> personalList(Long userNo) throws Exception {

		List<Object[]> coinArrays = chargeCoinRepository.personalList(userNo);

		List<ChargeCoin>  coinList = new ArrayList<ChargeCoin>();
		long rowNum = coinArrays.stream().count();

		for(Object[] valueArray : coinArrays) {
			ChargeCoin chargeCoin = new ChargeCoin();

//			chargeCoin.setHistoryNo((Long)valueArray[0]);
			chargeCoin.setHistoryNo(rowNum--);
			chargeCoin.setAmount((int)valueArray[1]);
			chargeCoin.setRegDate((LocalDateTime)valueArray[2]);

			coinList.add(chargeCoin);
		}

		return coinList;
	}
		
	@Override
	public List<PayCoin> listPayHistory(Long userNo) throws Exception {
		List<Object[]> valueArrays = payCoinRepository.listPayHistory(userNo);
		
		List<PayCoin> payCoinList = new ArrayList<PayCoin>();
		long rowNum = valueArrays.stream().count();

		for(Object[] valueArray : valueArrays) {
			PayCoin payCoin = new PayCoin();
			
//			payCoin.setHistoryNo((Long)valueArray[0]);
			payCoin.setHistoryNo(rowNum--);
			payCoin.setUserNo((Long)valueArray[1]);
			payCoin.setItemId((Long)valueArray[2]);
			payCoin.setItemName((String)valueArray[3]);
			payCoin.setAmount((int)valueArray[4]);
			payCoin.setRegDate((LocalDateTime)valueArray[5]);
			
			payCoinList.add(payCoin);
		}
		
		return payCoinList;
	}
	
}
