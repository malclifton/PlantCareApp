import 'package:flutter/material.dart';

class CareTipsPage extends StatelessWidget {
  final Map<String, String> tipsWithExplanations = {
  'Use well-draining soil to prevent waterlogging.':
  'Choose a well-draining soil that facilitates drainage and prevents overwatering and root rot. Each plant has different needs that need to be taken into consideration. There are a variety of soil options. Choose soil that not only supports efficient drainage but also contains many essential nutrients for nourishment. Maintaining a clean, nutrient-rich environment around your plants. Well-draining soil is important because it can mitigate the negative effects of irrigation. Excessive watering causes the accumulation of excess water around the roots of the plant and can prevent adequate oxygenation, causing various growth problems. By favoring the use of well-draining soil, you create an environment that promotes healthy vegetation development and protects against potential faults associated with water bodies.',

  'Provide adequate sunlight based on plant requirements.':
  'It is necessary to make sure your plants get the right amount of sunlight. This is important to their overall well-being. For optimal growth, it is important to research the sunlight needs of each plant you care for. Each plant has different needs for sunlight and understanding these requirements is important for their health, growth, and maintenance. Scientifically, light is a key component in the process of photosynthesis, where plants transform sunlight, water, and carbon dioxide into energy. Without adequate sunlight, this important energy production process is inhibited, leading to potential growth problems. Without sunlight for a long time, plants can expect slow growth, reduced flowering, and, in extreme conditions, even death. Therefore, placing plants in locations that meet their sunlight needs is a proactive measure to promote a healthy and thriving garden or indoor green space.',

  'Water plants consistently, avoid overwatering.':
  'While regular watering is essential to a plants health, overwatering should also be avoided. Avoid over-watering the soil when you water it frequently as this might lead to harmful root issues. Plants that receive excessive watering can develop root rot, a disease where the roots decay due to continuous over-moisture. Over-watering causes the soils oxygen to decrease, which keeps the plant from breathing and developing. Establish a regular watering schedule and modify it based on your plants evolving requirements to effectively manage your irrigation. You may fine-tune your watering schedule and guarantee a balanced and healthy moisture environment by keeping an eye on plant conditions and making any adjustments. ',

  'Prune regularly for healthy growth and shape.':
  'Pruning is needed for maintaining the health and appearance of plants. Pruning helps eliminate damaged and dead parts of the plants. Regularly pruning helps ensure that they develop properly and that the structure of the plant is healthy and stable. Pruning is helpful as it minimizes crowding and improves air circulation. This lowers a plants vulnerability to fungal diseases. Additionally, the act of pruning promotes the growth of more robust, stronger branches.',

  'Rotate your plants to ensure even sunlight exposure.':
  'A quick and easy way to guarantee that your plants receive equal sunshine exposure and encourage balanced development is to rotate them regularly. When a plant only receives insufficient sunlight on one side of its body regularly, it may develop poorly and die later on. Sunlight is essential for the photosynthesis process, which is how plants produce energy. Any uneven exposure might interfere with this process. Although theres no such thing as perfect rotation, it is vital to give your plants equal exposure to sunshine on all sides. Uneven a small rotational effort aids in preventing the emergence of irregular growth patterns. This becomes especially important for plants in pots or those placed next to windows, where light may enter from one direction alone.',

  'Use fertilizer as per plant type and growth stage.':
  'Make sure fertilizer is applied properly. The nutritional requirements of plant species vary depending on the plant and during the growth stages. Choose the appropriate fertilizer, as different formulas are designed for different types of plants, such as trees, vegetables, or blooming plants. Plants have higher nutritional demands during times of new growth. In addition to encouraging rapid development, this technique also helps to create strong root systems and produce colorful leaves.',

  'Keep an eye on pests and treat them promptly.':
  'Early detection and taking actions fast are key factors in effective pest control. Check plants every day for signs of pests is a preventative measure that can help identify potential problems before they get worse and cause serious issues. Pests not only cause direct damage to plants but can also act as vectors for various plant diseases. When looking after your plants, you can identify certain types of pests based on the typical damage they cause. This can include visual cues such as holes in leaves, stunted growth, or the presence of small insects on plant surfaces. Treatment depends on the type of pest and extent of infestation. Ecological options include non-chemical approaches, such as hand-picking larger insects or bringing in natural predators. Alternatively, for certain pests, insecticidal soaps or garden oils can be used to provide effective control without harming beneficial insects or the surrounding environment. Being proactive about pests not only preserves the aesthetic appearance of your garden but also the overall appearance. plant health in the garden.',


  'Monitor humidity levels for plants with specific needs.':
  'Managing humidity is an important factor in growing plants. Nutrient absorption and water evaporation are two factors related to humidity. To ensure that your plant is being handled and taken care of properly, monitor and adjust humidity levels based on your plants specific needs and growth stages. In high humidity, plants can have difficulty absorbing nutrients and water evaporation becomes difficult, which can lead to plant diseases. Methods such as water mist and rock trays can be used to vary humidity levels, ensuring an environment for optimal plant health and growth. Regularly monitor and make adjustments to create a healthy atmosphere.',

  'Choose pots with drainage holes for proper water drainage.':
  'Proper drainage is essential to the health of potted plants. Potholes allow excess water to escape, preventing wet soil and root rot. Larger pots give plenty of room for larger plants to grow, which promotes the healthy growth of larger plants. On the other hand, smaller pots are suitable for denser plants, which prevents problems such as overwatering. Getting the right pot size is very important because plant growth can be stunted if confined to an unnecessarily small container. In summary, choosing pots with drainage holes and choosing the right size for your plants are important practices in container gardening. Adequate drainage will prevent water-related problems, and matching the size of the pot to the size of the plant will support optimal growth. These considerations contribute to a successful and well-maintained potted plant environment.',

  'Research individual plant care requirements for optimal health.':
  'Research and understand the unique care needs of each plant. Each plant has its own needs, including exposure to sunlight, water needs, and specific environmental conditions. Some plants thrive in bright, direct sunlight and frequent watering, while others prefer shade and low humidity. Research the specific requirements of each plant, Soil type, and temperature tolerance are just some examples of factors that are important for plants. Regularly monitoring and adjusting practices based on your plants health and condition will contribute to a more robust and sustainable plant collection.',

  'Provide proper support for tall or climbing plants.':
  'Proper support is needed for tall or climbing plants to prevent bending or breaking under their weight. Tall plants like sunflowers or tomatoes benefit from stakes driven into the ground near the base to give them a stable structure to lean on as they grow. For climbing plants such as peas or beans, installing a trellis provides a framework for climbing and reduces the risk of vines tangling or breaking. Do not forget to place the support structures at the beginning of the growing season so that the roots of the plant are not disturbed later. Check and adjust supports regularly as plants grow to ensure proper support throughout their development.',

  'Protect plants from extreme weather conditions.':
  'Protecting plants from extreme weather conditions is important. Sudden changes in temperature, strong wind, or heavy rain can put your plants at risk and affect them in many different ways. To protect plants from temperature extremes, consider using a protective cover during frost or providing shade during scorching heat. Using support structures can help mitigate the effects of high winds on sensitive plants. In addition, heavy rains can cause waterlogging, which can cause root rot; So ensuring proper drainage and using raised beds can be beneficial. To prevent stress and possible damage, it is important to check weather forecasts and take preventive measures, such as covering plants before a storm. ',

  'Mulch around plants to conserve soil moisture.':
  'Mulching around plants offers several benefits. A mulch layer creates a protective layer that retains moisture and reduces water evaporation. This is important in dry or hot climates for plant health. In addition, mulch also acts as an insulator because it regulates soil temperature and provides a buffer. In addition to conserving moisture and regulating temperature, mulch prevents the growth of weeds by blocking sunlight and preventing germination. Choose an appropriate mulch material such as wood chips. Refilling will help maintain its effectiveness and ensure continuous benefits for your plants.',

  'Inspect and clean gardening tools regularly.':
  'Regularly inspecting and cleaning your garden tools is essential to maintaining a healthy and disease-free garden. Dirty and contaminated tools can spread disease to plants. Start by removing soil, plant debris, or debris from your tools with a brush or water. Disinfecting tools with a bleach solution or rubbing alcohol will help remove potentially harmful pathogens. Pay attention to pruning tools, such as clippers. Keep tools in a dry, covered environment will help prevent rust.',


  'Avoid overcrowding plants in containers.':
  'Overcrowded plants in a pot can cause many problems that threaten health and overall vitality. Enough distance is needed for proper air circulation, which in turn helps prevent the outbreak and spread of disease. When plants are close together, restricted airflow creates an environment for fungal infections and other pathogens to thrive. Additionally, overcrowded containers can increase competition between plants for nutrients and water, resulting in slower growth. If each plant has enough space in the container, its roots can grow and spread without issues. ',

  'Adjust watering frequency in different seasons.':
  'Adjust your watering routine depending on the weather and conditions of the seasons. Different seasons bring different environmental conditions, such as temperature and humidity. These can directly affect the water needs of plants. In the warmer months, plants need more water due to increased evaporation, higher evaporation, and humidity levels and rates. On the other hand, plants may need less water in colder seasons when the rate of evaporation decreases. Monitor the soil and the moisture levels of plants. Factors such as rainfall, sunlight, and the specific requirements of each plant species. ',

};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Care Tips'),
      ),
      body: ListView.builder(
        itemCount: tipsWithExplanations.length,
        itemBuilder: (context, index) {
          String tip = tipsWithExplanations.keys.elementAt(index);
          return ListTile(
            title: Text(tip),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CareTipDetailPage(
                    tip: tip,
                    explanation: tipsWithExplanations[tip]!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CareTipDetailPage extends StatelessWidget {
  final String tip;
  final String explanation;

  CareTipDetailPage({required this.tip, required this.explanation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Care Tip Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tip:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8.0),
            Text(tip),
            SizedBox(height: 16.0),
            Text(
              'Explanation:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8.0),
            Text(explanation),
          ],
        ),
      ),
    );
  }
}
