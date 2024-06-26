
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loginpage/components/heading.dart';
import 'package:loginpage/widgets/customCard.dart';

class OurServices extends StatefulWidget {
  const OurServices({super.key});

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
   late Image image1;
  late Image image2;
  late Image image3;
  late Image image4;
  late Image image5;
  late Image image6;
  @override
  void initState() {
    image1 = Image.asset("assets/images/os1.png");
    image2 = Image.asset("assets/images/brand.png");
    image3 = Image.asset("assets/images/influs.png'");
    image4 = Image.asset("assets/images/email2.png");
    image5 = Image.asset("assets/images/vsn.png");
    image6 = Image.asset('assets/images/soft.png');

    super.initState();
  }
    @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    precacheImage(image3.image, context);
    precacheImage(image4.image, context);
    precacheImage(image5.image, context);
      precacheImage(image6.image, context);
  }
  void signUserOut() {
    GoogleSignIn().signOut();
    FacebookAuth.instance.logOut();
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [ 
          //  Image.asset('assets/images/ts.jpg',height: 50,),
            const SizedBox(width: 15,),
            Text("TrendSprint Ads", style: GoogleFonts.lato(fontSize:22,color: Colors.white,fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: const Color.fromARGB(255,42, 55, 83),
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 55, 83),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Heading(title:'Digital Marketing Services'  ),
              const Heading(title: 'for Trendsprint ads'),
           // _buildSectionTitle('Digital Marketing Services for Trendsprint ads'),
              customCard(image: 'assets/images/soft.png', headline: 'Software Solutions', content: content[6]),
              customCard(image: 'assets/images/os1.png', headline: 'Social Media Management', content: content[0] ),
              customCard(image: 'assets/images/brand.png', headline: 'Branding and Identity', content: content[1]),
              customCard(image:'assets/images/influs.png' , headline: 'Influencer Marketing', content: content[2]),
              customCard(image: 'assets/images/email2.png', headline: 'Email Automation', content: content[3]),
              customCard(image: 'assets/images/vsn.png', headline: 'Marketing Analytics', content: content[5])
            ],
          ),
        ),
      ),
    );
  }
}
List<String> content = [
  "Our social media management services are designed to help businesses increase brand awareness, generate more leads, and improve customer engagement. We create and share high-quality content that resonates with your target audience and help you build a strong social media presence.",
  "We'll help you create a strong brand identity that resonates with your target audience. From logo design to brand messaging, we'll ensure your brand is consistent across all channels and conveys the right message.",
  "Our influencer marketing services are designed to help businesses reach their target audience through trusted influencers. With social media marketing agency  We identify and partner with influencers who align with your brand values and create effective influencer campaigns that drive engagement and conversions.",
  "Our social media marketing agency help you automate your email campaigns, increasing your efficiency and effectiveness in reaching your target audience. Our online advertising team will also help you segment your audience and create targeted campaigns that drive engagement and conversions.",
  "Our conversion rate optimization services are designed to help businesses improve their business/website performance and increase conversions. We use data-driven insights to identify areas for improvement and create effective CRO strategies that deliver results",
"Our social marketing analytics services are designed to help businesses measure and analyze their marketing performance. We use advanced analytics tools to track and report on key metrics, identify areas for improvement, and optimize your marketing strategies.",
"At TrendSprint, we specialize in turning your ideas into polished apps and stunning websites. Whether you're looking to reach users on their devices or engage them on the web, our expert team is here to help. Explore our services today and let's bring your vision to life"
];
