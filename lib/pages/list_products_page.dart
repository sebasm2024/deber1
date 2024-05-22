import 'package:flutter/material.dart';
import 'package:primer_proyecto_flutter/pages/home_page.dart';
import 'package:primer_proyecto_flutter/pages/detail_page.dart';
import 'package:primer_proyecto_flutter/pages/shop_cart_page.dart';

class ListProductsPage extends StatelessWidget {
  const ListProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                productRow(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhIPEBIVFRUQFhUWFxgXFxUYGBYYGBMZFhoVFx0YHighGBslGxUVITIhJSkrLy4uGCAzODMsODQtOisBCgoKDg0OGxAQGy0lHyU3LTc4LS8wLS0tLi0yLy0tLS84LS8vLy01LzA1LS0tLy0tLy0vLy8vLS8tNS0rLS0tL//AABEIAOAA4AMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABwIDBAUGAQj/xAA7EAABBAAEBAQEAwYGAwEAAAABAAIDEQQSITEFEyJBBgdRYTJxgaEUQpEjYrHB0fBDUnKCouEkM5II/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAIDBAUB/8QALBEAAwACAQMDAgUFAQAAAAAAAAECAxESITFBBBNRImFxgZHw8TJCobHBI//aAAwDAQACEQMRAD8AnFERAEREAREQBERAEWHxLHiHlki+ZIyPfbMavbVWfEmNMOGmlaac1pynTRx0G/uUJTDbS+TZIrcEgc1rxqHAEfIi1UHiy2xYokdxe38D+iESpERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQHM+OnVHFV5g/MPmK/qrPjXFCTBMcDXNyv+gYXf0VrzFxJaIGAgZjKbP7rB/C7+i5DxRxfmYLCgOADcOCfm5mjdPYNVVVps6OCE5h/GyRPC2Iy4DDvlIHLiaCfZgy/wAlieEcU6WbFyuPxmOh6NGcAe2x+dX3XP8AFOJ5MHgsMTXMa2WQg2ctl7QPnv8AQLdeAJA8YiVjcrHOa1tdywGz/wAh8tuxUuW60VPGliqvLf8A061ERTMYREQBERAEREAREQBERAEREAREQBERAEREAREQBYHG+KswsL8RICWsq8oJNk0BptrpZ0+Sz1GvmPw2XDSDiGF+GSmysy5mF1GnvYQWuB21Gho3Z0ry24naLcMK7SbNb5gcbhxjsK7CyZsrX6EOb8Tqohw0JyH6V2XFYkhzREw9J6idP8zWWPYdLPmrviQvfJG7LCzOxobyIwxocbJDq1LgT+g0vUnR4g6uygl5Li5zr0o71vrdWdrWP3uTOmsfCdI6FnE8RiHRYLDATYiSNrGigAxrWNGd5/KwBrfnr3Knbw/wlmEw0OFZqImgE93OOrnn3c4ucfmo88jOFcuPEYjlGpi1rZTlpzWl1tZRJ+ImzQGg1OtSotmJfTv5Of6i264+EERcH4x8e8pzcLgOXLO8ht5hlY4kANHYuN1ZNA73spVSlbZVEO3pHeIuBfxV3CixuInkmZiX5gyTrljZlAccwcbymhQFHtra7CLjEDoPxbZGmHKXZ+wANG+4INgjtS8m0+/cVja6rsZyLhZ/MIPiklw0bAIWlzhM/K40R8DIw41qOo0LIGvajy/45i8dNNPLK3kssCNpaMpOxoNLnCgdS4d9CvFlltJeSTw0k2/B3qIisKgiIgCIiAIiIAiIgCIiAIiIAiIgCw+K8NjxEZhlzZSQdHFuo223WYi8aTWmeptPaIU8xuBtwEsLomGSGYPsOdXLcyvhodw69vylaHwVwv8AFcQZh5C+BpD3gtLbLmU4AAtoO0vY1SkzzqwLpOGl7f8AAlZIdL6TcZP0z39FFPlpi3M4rhCTQLnM23DmSNAP6t/RZHhmcm0uh0Zy88PVvfU+iuHYFkEYijvK2z1OLiS4lziS7Ukkkn3KyVo8R4w4fG4xyYyBrm7tdI0EfMErUS+YELgx8LTkcXAuk6NBdFu4IdWhJG42V+XNGJbp6MUYryP6UddibyPokHKaIqxpuLBFr584HwaDIRzZ4sQ4scCAQyPLITJThVgM5XV+V2lqQuLeLJHOFPHLc4gCPNYaBTg71dYNfKq9eV8VZomOxTYnQtn5hY11cwMbQF38IJkdX93z83qayp+0vzf+/wAvub8GD2/633/ejN4BiIsZxHDsxQbPI5kokzBzQwsAcGEH43WJNNBTjp2EkeK8bHDhJmuLQXQyNYw11dOXKB3+IaKMsNwtvDp8LLHMyebnwMmY1ruZEJdM2rjQIkaCTuXgCtFvfN4gCMuno6BkYBJ36pXdVN3oaH+l+NVhwtd2V5JWTLOn0OJw8+Ixj2jFF3LawMtoZHTRbgwNa0NuzdnbNd7L3h/iiXAiI4Q2OuV4L88crA57LoW5vwmy6yCw1074mH4hPyJJICx0eZsRjMTZHvztfIJADdMqKQWNdCdtu78r/EE+OnlkmhjLAwRCSOKINZpZjc7Nno5W0KI07aKjDhur53XXx/JdmuZnSXREmYeUPa17dngOHyIsK4qWMDQGtAAaAABoABsAql1TkhERAEREAREQBERAEREAREQBERAEREBh8Y4e3EQTYd/wzMcw+2ZtX9F86eCISzieEY/R8eIax3+pry0/cL6XUCeYOAm4dxM4+JnQ+QTxvcCY87h1scQd82Y1Y0coWvJfhrvJKfmLwsYjBuGRp5bmvtzA8saDb3NBB1y2os45jooY4XR5y8Etkzah3TdtIPTu2wazA6GgVXN5s8RotLcNrpfLdpfsZKK0eN8e43ERnCSOgERFU2CPSrFAEEN0vUajtSx58U5a2/j9/ga8DrHPH7/Jv43v5pJa+GRoEjQbBALQ0OF6EEt3H3XSeL5W4v8ACzPALZGOjkju8j2kOsd6IJN+jQuA4TxvEf8AjROc18cByMJaM7WuJ6XSHXIC66uqA9Fv8JipZsQ3B4drS/qdZ+EZCWGgNCe1/vHbVRiNf+UfoWZLlT7uTwdNwGGDPNj5pSZmRRNovFPdGQWvAvvy4gW9iHeq54eHJ+JSTZXNLmZHvMuYZuY5zaBANUGO0r0+mJxbHzRPdC9g/EtdljyltOB2JFVYrbbe9heVh+OYzhWJiM8bXfi27XlsNG5IGlWSNDudlp9mqX1Lou5mXqsa0ofWu3b9P8HZ+CXNE2MgLsPK8NinMsQ6HOkY9hs2aPQdBpTztqsLhXiNuFlGdkbziCyN7oXx03IAI6a0BoAzOB6r02qlw0HFzhGzNw7qGI0JIYSI8ziGhx0rqo+qwsPzZajgZI+26tjZmq4yQNLLdQwE97GqzZctJzx+5pjBL5c/sT9xTjWHw8XPnmYyPs4n4vZoGrj7C1c4bi3Ss5hjdG12rA/R5b6ub+S/Q61vR0Ed+BvAsnPZjceH/wDjtAgie8Paw5nW7Qmq0IG2oOtDLJ63RTqU2tHNySorinsIiKZWEREAREQBERAEREAREQBERAEREAVL2AgtcAQdCDqD81UiA4vjnlhw/EZi2MwPcPiiNAa3eQ2z9AFE3jLy2xeB/axj8RGXUHxNdnFgmpIxZqh8QJGnZfRqKLlMsnLSPlfh+IpuVtjILv3Og+tkUs3B8Z5by5oJkroIc5jhoNLa4GiASR3oLa8ZwUeB4hxGJzOh2Ys0BLWyRPkGTMCCBtr3oeq5LhzBz2l35RdfSx81j/va+Dob3C+50U3HHlha6D/2GORxDjoY9CBd6au1J796Wsx3HHYgsMzSXxg5QXuIaNNGhx2NEGydl2BwYLBpu36W5gfXy1/VcBJh+Zig1mmerNaNFan5Upzk2nt9CHtKXLUr4RnY+fO5zzo5+pDaDQCNQBl39T310GlSH4W4M3FsfiuGO/DvdGY5Yg94ET7aWlhB6o3tDx+7YrYqKOJ4gB72gghuaze/y9NF9HeAeAxYeGOaJr43TQxNlYc4BkZYzkPALXauB0HZexiT/AZcznt3L3l/gJsPhBDiBlex7tKGgdTviBp++/07LpURaJlSkl4MF27p0/IREUiIREQBERAEREAREQBERAEREAREQBERAEREBCvnbhycTHMGlreXynOqsxBDxROhrO3b3HZR7wrByuktgFtic7qcBe4ABdoCa7kDRTj5yQB2AEhAPKmjNnsHWyx66uGnsoSx2EqNso2aO1l1HTsNOoVW/qst9Ho6GB7n8De4iSdsYk57LoXHfW0ZQ2r+EnO0todi0rmcJwubE4yOCADPKK0cKbbMpLnC8tAnUXtYtYL+Kxnoa0kXelk1XopH8nuCw4hr22/O6QPmrM0shYwiOPMKIMkj3kgHVsdHQ6yiPlHubKmujIxxMFufY1cTZ9y6j/VfWPhXGc7B4WbvJBE47nUsF6nfW1Bnmr4ajwOLbygeXiGcwWSTnDqfqfctd/uUq+UOL5nC4Ad4jJGf9sjsv/EtVkbT0zPmSc8kdmiIrDMEREAREQBERAEREAREQBERAEREAREQBERAEREBy/mZDm4biKFlvLcK7ZZmEn6AEqI+E4N2WmMDrAdplzR65S1rXGn2eqhqdAAdFMnjyYNwMwP+Jlj/APt4B+1qN3cNfmikgla1zQdHA5CNHZQQDr8VgjXTULH6hy8kzT0jf6bksVVK2/42cfxXCvDsupL6p2rS3ew5p6g6tKIFEi6UueS8WXhwNVmmmo+oD8v1rKR9FHWJ4TIT+Ie8EvDgA2yW1sToAGjQd/mpL8o8Q04EwirglkB/3u5t/wDM/op4nKtqXtDOqeJVS09l7zQ8OHG4N3LFzYY82P1NDqZ7229PUNUTeA/GE2AoNOeKQ26MnT0tv+U/Letfb6JUJ+Z/gz8PMcbEwnDSkmQNBdy5HX+Ua5XOIqtie2isy7S5Iq9O03wryTFwzHsniZPEbbILH9D7g6LKUOeX/i9mEY6OUHlPJc1gDczSDRdYPWHetDYe63/iDx65zA3BkxOsW97Wnpo3lB3cOk1ruLqwq59VDnb7/v8AIlfo8ivU9vkkRFznhbxbFiwGOAimAsxlzTe98sg9QFa6A+y6NXzSpbXYy1Dh6pdQiIpEQiIgCIiAIiIAiIgCIiAIiIAiIgCIvCUBxfmTiARhsPer5HSEX2Ywiz7W/wCy5GDEjM0duaa9AAyuw75SfqtNiuMPxWJfipHUHkhu5DWXTQ0fIj6kn1VuGQUCDq1wIA20N6/yXKzvnezsYJ9vGpN1jHgBvUN3stubS26/EBsWH7LeeW/FY45XwOppxVEHtzGNNt+rdR/pK42aUO0J0D8xo66tI+9rW4mWgSx5D2Pa5pA2I1DrvQ2PsvcT40mWZJ5w5Z9DY+V7I3vijMj2tJawFrczq0bbiAPmSof8ReP8RNDicFicOIpR0gscelzTZjeL3c0Ort8xqpM8J8WdjMDDiXdL5GODstaPa5zCRYIGrbo3Xuoyx+C4g6X8PxWB8kcj2lk8YhMkbnNc7Kx5ytDSA4OzDK0aitFvyJvWjl4Uk3vujnjguRD1Vnt4cd2ve1xFi92gChoNydytfiMS0XGS5jXtJ0t4jOgGl2RRfpY3Gq2GOxokhgLvysa53fWqIHzK5KfFHqc7cmz6egHy/wClU5WkbaeiQ/L7gEg4nh5ruOPNZjIIa84fMA7NZp7XO6vUOAoAKdFEX/5/c9zMW8wtyF7Q2bQOcQOqL3a3R3oC8/SXVfjlSuhgz3ysIiKZSEREAREQBERAEREAREQBERAEREAWBx7FiHDTzE1y4nuv3DTVe90s9R55mcbikidgmusZgZa2IabDCbH5qJ+VKGS1K2yzFDutIizCEZR2Gw+ZGtd60Vb8ZZeTQJojKABudABp6BUcUn3AILWm70FACgQLsX3WvZitCekh1h3rdHexofcfxWDhvqdRV1NpLjy4UdtP6D7Clb5+Yll6ZtB6E9/r/ILXjEvD81iq2sbA6NrtVA0fRZWFe5z7LjZsXrZtpGh1zf2NkUliolbyg4xGIDw57qljdI9gIrOxzs5LfUguNjcAhSHLG1wLXAOa4EEEAgg6EEHcKA3RkZZ4HFssLszHDRw7WOw329yDYu5c8DeIzjsPne0NliOSQDa+zm+xGtdjY1pbMOVUteTnepwuXyXY4fjXl850uOZC39m1sc0DG0AS9zs0Wu1FslbflXE+HvL/ABeNxPKkikgw7JDzXva5ppupazMNTsAfe9dV9IorOK2Ve/WtGNw3AR4eJkELAyOJoa1o7ACvqfdZKIpFIREQBERAEREAREQBERAEREAREQBEWi8Y+IW4HDumIzPPTG3/ADPI/gBqfYLxvS2z1Jt6RofH3jDk5sLhz111vH5LGw/e1+iirGY8kDWso0u/Tt32H8VYfj3OeZM1l5c5xNEkuO5IrW3LGxZOjtzr/ZPv1fcLn3Tuts6kRMLSMDE4ogg2S4b2LoaUbHzqv42sFmLLmlxGmlHpurAurs6n5K1xNx0B7uu9PT7bFUQt2bt6+9dv1r9Ar5WkQddTNY49IINvGn3/AJLYYJ7iNbzCh7V/PW9KGn20/wCIfR9Wmv1qz91mYGc2WtOrL+/0/u1Cl0LJpbOrixpoAGxZPpm0/wC10fl/xsYfFtaelmJyxvBOz+rI7X307fF8lxkD3NbY03Haj9Nj3/RYcsp1s76X/fvRVePc1sleqTln1Ki5Ty48S/jsIHPNywnJJ775X/7gP1DgurXQT31ORUuXphERengREQBERAEREAREQBERAEReID1eEoVQ4oDE4txOLDROnmcGsZ9z2aPUlQF4p8Sz8Sm5hGWFliNlt6RepuxbjQ1+nuu88d+DsdjpGSufFI1hdkgLnNjjGwedP2rz3sCtgub4r4H4hFGZP2cmUHpYXOcNNA0Fo02HsoVPI1YeE9W+pxrHg9LTrvdm99tCfnYR73AtoGnChe2hJOu3roey6ngHgDETxkyyfh2u0JyZpH1vQJGRt9zqfTZecd8IT4ZgA/bxnQuazrZ3DnNs7eo+qpWBtfcvnLO9EfY5/wC16jdAkel7Aj6LDjfbib7X870v7KU/DfgCCSNz8ZFJnzENGZzBkoGwBR1JdurvFPLOB8jDh3cmOqkb1POmxYXE0e2undWKHxRTWVcmROZNNT+b7K/w3E1N0n4jXYjtuPRT3wvgOGw7BHFBGAO5aC4n1LjqSsvHcIw+Ia1k8LHhu1jVv+kjVv0R4+miHv8AUiHA4aaeXkxsc9xaTTK+Ea5ifhGoaO26tcYwEkBEU7Cx+UGj3v01r9FJnl5wI4Vkzntp73lgNa8uM5R9C7MflS6PjfBIMZHyp23/AJXDRzD6tP8ALuq5w/TvyWV6jVa8ELeFPE0/DpxiGAujcAJGn87OwvsQdj2tfRXAeMw4uFuIgdbXdjo5p7tcOxULt8usaHyxN5TmsoteekSBxOwqgRVEH2rRZHhPgHF+H4nmYfDOyu/9kJkiMUg/ddnIjcLNfptavlaI5FN9U+pOKLGwGLErA8Nc07Oa4U5jhu0/1Fg7gkLJUjKEREAREQBERAEREAREQBERAeFUOCuKkhAY8gWLI1Zzmqy9iA1sjVjPYto+JWXQoDVPjVsxLZugVPIQGvEarbGs3kKoQoDFa1X4wrwhVbYkB7EsyMqwxiyGNQF9pVattCuBAF6iIAiIgCIiAIiIAiIgCIiAIiIDwhUFquIgLBjVBiWTS8yoDEMS85Ky8qZUBh8le8pZWVMqAxeUqhGsnKmVAWQxVtarmVe0gKQFUF6iAIiIAiIgCIiA/9k=',
                    '',
                    '',
                    ' los druidas eran capaces de prestar ayuda práctica interpretando ,'),
                productRow(
                    'data:image/jpeg;base64,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',
                    '',
                    '',
                    'Aunque es inmune a Polimorfia, puede resultar afectado '),
                productRow(
                    'data:image/jpeg;base64,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',
                    '',
                    '',
                    'En cuanto a las armas útiles para el Druida'),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              label: const Text('Salida'),
              icon: const Icon(Icons.exit_to_app),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListProductsPage()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('1', style: TextStyle(color: Colors.white)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('2', style: TextStyle(color: Colors.white)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopCartPage()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('3', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productRow(String imageUrl, String productName,
      String productDescription, String additionalText) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue, width: 2),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  imageUrl,
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 10),
                Text(
                  productName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color.fromARGB(255, 246, 247, 248), width: 2),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  additionalText,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
