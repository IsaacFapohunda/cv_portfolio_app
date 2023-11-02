import 'dart:core';
import 'package:cv_project/globalFiles/AppButtons.dart';
import 'package:cv_project/globalFiles/appTextStyle.dart';
import 'package:cv_project/views/portfolioScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/appColors.dart';
import '../globalFiles/borderButton.dart';
import '../services/connectivity_provider.dart';
import '../services/repository.dart';


class GitHubApiRepo extends ConsumerStatefulWidget {
  const GitHubApiRepo({Key? key}) : super(key: key);

  @override
  ConsumerState<GitHubApiRepo> createState() => _GitHubApiRepoState();
}

class _GitHubApiRepoState extends ConsumerState<GitHubApiRepo> {

  dynamic name = '';
  dynamic full_name = '';

  Future<List<RepoModel>>? repoModelList;
  bool isLoading = false;


  @override



  Widget build(BuildContext context) {
    final connectivityState = ref.watch(connectivityProvider);
    Size size = MediaQuery.of(context).size;
    final RepositoriesRef = ref.watch(RepositoriesProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: BorderButton(
            backgroundColor: white,
            color: black,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PortfolioScreen(),
              ));
            },
            Icons: Icons.arrow_back,
            size: 20,
          ),
        ),
        title: Text(
          "Welcome to My Porfolio",
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: appColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text('Click the get to GET your repositories', style: TextStyle(color: black, fontSize: 20, fontWeight: FontWeight.bold),),

              SizedBox(height: 3,),
              Container(
                height: size.height *0.7,
                width: size.width*0.6,
                child: FutureBuilder(future: repoModelList, builder: (context, snapshot){
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    isLoading = true;
                    return LoadingAnimationWidget.inkDrop(
                        color: white, size: 25);
                  }
                  else if (snapshot.hasData){
                    isLoading = false;
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index){
                          return Card(
                            color: white,
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                              child: Column(
                                children: [
                                  Text(snapshot.data![index].name),
                                  Text(snapshot.data![index].full_name),

                                ],
                              ),
                            ),
                          );
                      
                    });

                  }
                  else if (snapshot.hasError){
                    return Text('Cannot load data');

                  } return Container();
                }),
              ),


              isLoading
                  ? LoadingAnimationWidget.inkDrop(
                  color: white, size: 25)
                  :
              AppButton(onPressed: () async {
                if (connectivityState.status ==
                    ConnectivityStatus.disconnected) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('No internet connection'),
                      ),
                    );
                  });
                }
                else {
                  setState(() {
                    isLoading = true;
                  });
                }
                repoModelList = RepositoriesRef.Repository();
                print(name);
                setState(() {
                  isLoading = false;
                });


              }, label: 'Get', textColor: white),



            ],
          ),
        ),
      ),
    );
  }
}