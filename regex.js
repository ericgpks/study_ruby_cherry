var html = "<select name=\"game_console\">\n<option value=\"none\"></option>\n<option value=\"wii_u\" selected>Wii U</option>\n<option value=\"ps4\">プレステ4</option>\n<option value=\"gb\">ゲームボーイ</option>\n</select>\n";

var replaced = html.replace(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/g, "$1,$2");

console.log(replaced);