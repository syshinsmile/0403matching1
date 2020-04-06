package spring.tiles;

import java.util.ArrayList;
import java.util.List;

import org.apache.tiles.Attribute;
import org.apache.tiles.AttributeContext;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.request.Request;

public class MenuPreparer implements ViewPreparer {

	@Override
	public void execute(Request tilesContext, AttributeContext attributeContext) {
		List<String> menuList=new ArrayList<String>();
		menuList.add("홈");
		menuList.add("로그인");
		menuList.add("회원가입");
		attributeContext.putAttribute("menuList", new Attribute(menuList),true);
		
	}

}
