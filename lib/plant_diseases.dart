import 'package:flutter/material.dart';

class PlantDiseasesPage extends StatelessWidget {
  final List<String> diseases = [
    'Leaf Spot',
    'Powdery Mildew',
    'Root Rot',
    'Bacterial Blight',
    'Fungal Wilt',
    'Anthracnose',
    'Rust',
    'Blossom End Rot',
    'Downy Mildew',
    'Yellowing of Leaves',
    'Septoria Leaf Spot',
    'Gray Mold',
    'Canker',
    'Angular Leaf Spot',
    'Fire Blight',
    'Scab',
    'Cucumber Mosaic Virus',
    'Tomato Spotted Wilt Virus',
    'Sooty Mold',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identify Plant Diseases'),
      ),
      body: ListView.builder(
        itemCount: diseases.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(diseases[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DiseaseDetailPage(disease: diseases[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DiseaseDetailPage extends StatelessWidget {
  final String disease;

  // Map to store disease explanations
  final Map<String, String> diseaseExplanations = {
    'Leaf Spot': 'Leaf spot is a diseased spot / area of a leaf. Symptoms of leaf spots include visible discoloration spots,which start off as small brown or black spots and extend and change as time goes by. To control and fix leaf spots, use sprays that contain copper, apply fungicides,ensure proper watering is done,and maintain a good environment (proper drained soil, proper air circulation, pest control).',
    'Powdery Mildew': 'Powdery Mildew is the white /gray powder looking spots or patches that grow on plants. This problem is extremely common in areas with warm and dry climates. Powdery mildew is caused by a fungus called podosphaera xanthii. To control and get rid of powdery mildew there are many different solutions. Solution is fungicides that contain sulfur,a solution of milk and water .',
    'Root Rot': 'Root rot is caused by bacterial infections and happens due to overwatering and inadequate soil drainage. Root rot has a squishy brown appearance with a string texture. Symptoms of root rot include wilting, yellowing leaves, and a bad smell. Treatment includes eliminating impacted areas, consistent appropriate watering, and fixing drainage issues. Fungicides can also be applied, but the plant environment is also important( utilize well-draining soil)l. In addition, early monitoring and intervention are essential.',
    'Bacterial Blight': 'Bacterial blight can be detected by water-soaked lesions that begin as brown spots on leaves. The signs and symptoms  include browning,drying, wilting, and death of the leaves. To fix this problem, use copper-based sprays and bactericides, and remove diseased plant debris. One important note of bacterial blight is that moisture promotes the spread of illness. Bacterial blight has to be controlled and treated quickly to reduce damage to plants and ensure  that the plant is healthy.',
    'Fungal Wilt': 'Fungal wilt is a disease that causes wilting, yellowing, and can cause death. Fungal wilt is caused by soil borne pathogens.Treatments include using resistant plant cultivars and concentrating on soil-borne fungal control techniques, ( soil solarization). Fungal wilt can be stopped from spreading by using proper irrigation techniques, like not over watering. Fungicides and soil treatments can also be used. The reduction of fungal wilt on plants involves management, early detection, and routine monitoring.',
    'Anthracnose': 'Several fungus can cause the plant disease anthracnose, which causes black, sunken lesions to appear on leaves, stems, and fruits. Regularly occurring symptoms include dark-edged, irregularly shaped patches that frequently enlarge and mix. To control and treat anthracnose, trim off affected plant portions and allow enough space for airflow.Fungicides with active components, such as copper. Reducing the possibility of the disease  is achieved by gathering and eliminating contaminated plant debris. In addition, routine observation and quick action are essential.',
    'Rust': 'Rust is a plant disease caused by a variety of fungi with symptoms such as yellow or orange pustules containing spores, leaf discoloration and premature leaf drop. Common types are cedar apple rust, bean rust, and pine rust. Treatment includes using fungicides, pruning infected parts, choosing resistant plant varieties, ensuring good air circulation, eliminating alternate hosts, avoiding watering and autumn cleaning to reduce overwintering spores. Regular monitoring is critical for early detection, and effective control can help prevent the spread of rust diseases and maintain overall plant health.',
    'Blossom End Rot': 'Blossom end rot affects fruits due to calcium deficiency and poor absorption. Symptoms include water-soaked lesions on the flowering head, resulting in dark, leathery spots and reduced fruit quality. Adding calcium in the soil, consistent watering and maintaining soil moisture, using mulch, controlling soil pH, avoiding excessive fertilization and adding calcium to the leaves during rapid fruit development is important to solving this problem. Prevention involves creating optimal growing conditions and considering environmental factors to ensure adequate calcium levels, emphasizing regular monitoring and timely interventions to achieve healthier and more productive crops.',
    'Downy Mildew': 'Downy mildew affects crops such as grapes and lettuce. Symptoms of downy mildew include yellow spots on the upper leaves and stunted growth below. Treatment includes fungicides, especially copper, or specific mildew chemicals, along with early detection through proper irrigation techniques, good air circulation, crop rotation, resistant varieties and regular monitoring. Prevention involves  fungicide use and selection of resistant plants, emphasizing intervention during periods of high humidity to effectively manage and maintain plant health.',
    'Yellowing of Leaves': 'Yellowing of leaves is also called chlorosis. This can indicate various plant problems. This is caused due to a lack of nutrients, especially nitrogen, iron or magnesium, poor soil drainage, compacted soil ,and/or incorrect pH levels. To improve this symptom, treatment includes using appropriate low-fertilizers, correcting soil drainage problems, aerating compacted soil, and adjusting pH levels. Foliar sprays containing essential nutrients can provide a quick remedy. However, it is important to determine the exact cause with a soil sample. Regular monitoring, timely intervention and maintenance of overall plant health are key to preventing and controlling leaf yellowing.',
    'Septoria Leaf Spot': 'Septoria leaf spot affects many plants. It appears as small dark spots in the center of the leaves. As the disease progresses, the spots may grow, resulting in extensive leaf damage. Treatment involves the use of fungicides with copper or azoxystrobin. Proper sanitation, including. Regular monitoring for early detection and prompt application of fungicides under favorable conditions will help effectively control Septoria leaf spot and maintain plant health.',
    'Gray Mold': 'Symptoms of gray mold are fuzzy gray-brown spore masses on infected plant parts. Gray mold is common in cool, wet conditions. Treatment includes pruning,removing infected plant material, improving air circulation and using fungicides containing ingredients such as methyl thiophanate. Preventions of gray mold include practices such as avoiding overwatering, maintaining adequate plant spacing, and reducing humidity in the greenhouse environment. Regular monitoring and timely intervention are essential to effectively control and prevent the spread of the disease and ultimately maintain plant viability.',
    'Canker': 'Canker occurs as necrotic lesions on the stem, branches or trunk. These lesions often appear sunken, discolored, and may ooze. Treatment includes pruning and removal of infected branches, use of appropriate fungicides or bactericides, and good sanitation practices. Promoting overall plant health through proper watering, fertilization and wound prevention will help prevent canker. Regular monitoring to ensure early detection and rapid intervention promotes effective control.',
    'Angular Leaf Spot': 'Angular leaf spot is caused by the bacteria Xanthomonas. The symptoms of angular leaf spot appear as water-soaked lesions with angular edges on leaves, often surrounded by a yellow halo. In severe cases, the lesions may coalesce, causing leaf defoliation. Treatment for angular leaf spot includes the use of copper-based bactericides and good sanitation by removing infected plant debris. One way to reduce risk is avoiding overwatering. Regular monitoring of early signs along with preventive measures is essential for effective control and maintenance of plant health.',
    'Fire Blight': 'Symptoms of fire blight include cankers, wilting,and burnt looking leaves. It is common for oozing of bacteria onto the branches, giving a "burnt-like" appearance. Treatment of fire blight includes pruning infected branches. For treatment using antibacterial sprays such as streptomycin and Agri-mycin.',
    'Scab': 'Scab is a plant disease which is caused by the bacteria called streptomyces scabies. Scab is very common in potato crops and plants. The scab starts off as olive spots. Fungicides are used in treatment. Specifically fungicides that contain copper,sulfur,and myclobutanil are effective.',
    'Cucumber Mosaic Virus': 'Cucumber mosaic virus (CMV) is a plant virus. CMV affects plants besides cucumber. Cucumber mosaic virus symptoms include mosaic patterns, yellowing, stunting and distorted leaves. There is no cure for CMV. To manage cucumber mosaic virus preventive measures need to be put in place such as the use of virus-free seeds and the use of insecticides. Early detection and immediate removal of infected plants are important in preventive measures.',
    'Tomato Spotted Wilt Virus': 'Tomato Spotted Wilt Virus affects many crops, not just tomatoes. Tomato spotted wilt virus symptoms include leaf yellowing, yellowing spots, stunted growth,and fruit deformity. The virus is mainly spread by twigs, small insects. There is no treatment for TSWV. To help the control of tomato spotted wilt virus using virus-free seedlings,reflective blankets to control thrips, and use of insecticides to control thrips.',
    'Sooty Mold': 'Sooty mold covers the surfaces of leaves, stems, and other plant parts, blocking sunlight and inhibiting photosynthesis. Sooty mold symptoms include the characteristic black mold on the upper layer of leaves. Sooty mold treatment involves the application of insecticides. To physically remove the mold of plants horticultural oils can be used. ',
  };

  DiseaseDetailPage({required this.disease});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disease Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Disease:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8.0),
            Text(disease),
            SizedBox(height: 16.0),
            Text(
              'Explanation:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8.0),
            Text(
              // Use the map to get the explanation for the selected disease
              diseaseExplanations[disease] ?? 'No explanation available.',
            ),
          ],
        ),
      ),
    );
  }
}

