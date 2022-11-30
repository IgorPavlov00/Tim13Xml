package Tim13.XmlProjekat.Kontroleri;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class IndexController {

    @RequestMapping("/")
    public String index() {
        System.out.println("Pocetna strana!");
        // xml ucitavanje
        // samo zameni komentare kodom iz main f-je
        return "index";
    }

    // ovde ubaci funkciju za ucitavanje xml-a
}
