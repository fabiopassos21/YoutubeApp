import 'package:flutter/material.dart';
import 'package:youtube/Api.dart';
import 'package:youtube/model/video.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  listarVideos (){
    Api api = Api();
    return api.pesquisar("");

  }
  @override 
  Api api = Api();
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(

      future: listarVideos(),
      builder: (context, snapshot) {
        
        if (snapshot.connectionState == ConnectionState.none){
          return Center(
            child: Text("nÃO HÁ ANDA AQUI "),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.done){
          if (snapshot.hasData){
                  return ListView.separated(
                    itemBuilder: (context, index) {

                   List<Video>? videos = snapshot.data;
                   Video video = videos![index];
                      return Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:NetworkImage(video.imagem.toString())  )
                            ),
                         
                          ),
                          ListTile(
                            title: Text(video.titulo.toString()),
                            subtitle: Text(video.descricao.toString()),
                          )
                        ],

                      );
                    },
                     separatorBuilder: (context, index) {
                      return const Divider(
                        height: 2,
                        color: Colors.red,
                       );
                     },
                      itemCount: snapshot.data!.length
                      
                      );
          } else {
            return Center(child: Text("Nenhum dado a aser exbido ")
            ,);
          }
        }
        return Text ("cabacna");
      },
    );
  
  
  }
}
