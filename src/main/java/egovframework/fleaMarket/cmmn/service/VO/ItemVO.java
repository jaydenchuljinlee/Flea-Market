package egovframework.fleaMarket.cmmn.service.VO;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter @Getter
@ToString(exclude = "password")
public class ItemVO {
	@NonNull
	private int category_code;
	@NonNull
	private String title;
	@NonNull
	private int price;
	@NonNull
	private int quantity;
	private int statement;
	private int used;
	private int trade;
	private String contents;
	
}
