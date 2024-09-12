import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyAmxVul5AfHoH09VL67gu5dpm3zoNf6_Rw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";
const ID_CANAL = "UCwGwyhbG7i-M1AxeJqXDa_w";

class Api {
  pesquisar(String pesquisa) async {
    http.Response response = await http.get(Uri.parse(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_CANAL"
            "&q=$pesquisa"));

    if (response.statusCode == 200) {
      print("resultado" + response.body);
    } else {}
  }
}
