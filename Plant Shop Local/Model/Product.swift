//
//  ContentView.swift
//  shop
//
//  Created by Benji Loya on 19/10/2022.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let price: Int
    let rating: Int
}

extension Product {
    static let all: [Product] = [
        Product(
            name: "Pothos", image: "1", description: "Pothos enjoys a cherished place in America's indoor gardens thanks to the fact that it's nearly impossible to kill. This vining plant can thrive in low light, bright light, or nearly no light at all—perhaps it is its insistent growth that has earned it the nickname of Devil's ivy. Pothos comes in a range of colors from jade green to chartreuse to creamy white, but despite their diversity of appearance, all varieties are similarly easy to grow and propagate.", price: 54, rating: 4),
        Product(
            name: "Monstera", image: "2", description: "Sure, plenty of Americans raised monstera plants before the advent of Instagram—but when social media users started sharing images of their favorite plants with the hashtag #monsteramonday, this oversized houseplant reached new heights of popularity. There are many varieties of monstera; the one that is most commonly welcomed into domestic settings is the Monstera deliciosa. Monstera thrives in a high-humidity environment and should be kept out of direct sunlight, as too much sun will cause leaves to burn. As this vining plant continues to grow, it may need occasional staking and pruning.", price: 89, rating: 5),
        Product(
            name: "Prayer Plants", image: "3", description: "Another plant that has sparked conversation on social media is the stunning prayer plant, a common name for Maranta leuconeura. Prayer plants are popular for the striking patterns atop their oval-shaped leaves, and for the way their leaves reach toward the sun during the day, then droop during the night. Home gardeners who enjoy watching the dramatic movements of the prayer plant will also like zebra plants and rattlesnake plants (two varieties of calathea), as well as oxalis (also known as shamrock), all of which have their own stunning reactions to the sun's light. If your local garden center doesn't stock prayer plants, you can always purchase them online, from retailers such as Pistils Nursery.", price: 79, rating: 5),
        Product(
            name: "Philodendron", image: "4", description: "Sometimes confused for pothos, philodendron is a trusty standby for any low-maintenance indoor garden. Philodendrons are effective at purifying indoor air, but they are mildly toxic when consumed, so keep them away from curious pets. Available in a range of colors from jade green, to dark green with flecks of silver, to dark green and chartreuse, these vining plants can be trained over trellises and walls or left to flow freely from hanging baskets. If you covet the less common colors but can't find them at local garden centers, consider buying one from an online plant retailer like The Sill.", price: 94, rating: 4),
        Product(
            name: "Tillandsia", image: "5", description: "There are many types of air plants—that is, a plant that attaches to a host tree rather than rooting in soil—but tillandsia has become synonymous with the category. These spindly claw-like plants, which are often displayed in a dish or glass globe, require a steady stream of bright natural light and deep watering at least twice a week. To water tillandsia, place the plant in a bowl and pour water over the top until leaves are submerged. Air plants also benefit from occasional misting. While it is perfectly acceptable to water your plants with tap water, you may consider letting tap water sit for several hours before use to allow chlorine to dissipate.", price: 99, rating: 5),
        Product(
            name: "Staghorn Fern", image: "6", description: "Another houseplant that has taken Instagram by storm is the photogenic staghorn fern. Staghorn ferns can be grown in traditional pots, but home gardeners will often buy them mounted (or DIY their own mounting solution) and display the plant as a sportsman might display a stag's antlers. A staghorn fern is not an ideal plant for a beginner gardener, as the plant can easily die due to over- or under-watering. That word of caution aside, green thumbs who manage to keep these beauties alive will be rewarded with dramatic greenery that doubles as a conversation starter. While you can purchase this plant in an increasing number of garden centers, you'll also find them online, available from retailers like White Flower Farm.", price: 65, rating: 4),
        Product(
            name: "Spider Plant", image: "7", description: "There's more than one reason that spider plants are one of the most popular houseplants in America. For starters, they are easy to care for and can even tolerate some neglect and abuse. But it's not just its reputation as a low-maintenance plant that has caused the spider plant to creep into homes across the country—it's the fact that this plant is forever sending out babies that can be pruned, potted, and gifted to friends and neighbors.", price: 54, rating: 5),
        Product(
            name: "Snake Plant", image: "8", description: "Also called mother-in-law's tongue, snake plant can tolerate almost any bad condition, except prolonged over-watering which will invariably lead to root rot. There are many varieties of snake plant, some of which can be spotted on Instagram under the hashtag #sanseveriasunday. Among the most beloved varieties ranks whale fin snake plant, which has enjoyed a recent boost in popularity, thanks to its large photo-worthy leaves. Although certain varieties of sansevieria are becoming more coveted, they are not yet available in every garden center. If you can't purchase varieties like whale fin snake plant locally, check with online plant retailers like Pistils.", price: 83, rating: 4),
        Product(
            name: "Jade", image: "9", description: "Jade is one of the most popular succulents in American households but many Western cultivators know nothing about the plant's reputation for good luck. Known as Money Plant among Chinese practitioners of Feng shui, jade is often placed in homes and businesses to attract wealth. Whether home gardeners subscribe to the ideology or not, they will find much to love about the jade plant, including its hardiness, speedy growth and dramatic structural habit.", price: 69, rating: 5),
        Product(
            name: "Pilea", image: "10", description: "Pilea may not be as well-known as some of the other plants on the list but thanks to recent appearances on gardening blogs and Instagram channels, there has been an increased demand for the plant at some of the nation's trendy garden centers, which can't always keep the plant in stock. The leaves are start at about the size of a silver dollar, and almost as round, but can grow much larger with proper care. Those who can get their hands on a pilea would do well to not overwater. Allow the soil to dry out (watch for drooping leaves) in between waterings to keep the plant in perfect health.", price: 88, rating: 5),
        Product(
            name: "Money Tree", image: "11", description: "Like jade, the money tree is believed to bring good luck to any household in which it grows. Money tree, or Pachira aquatica, usually consists of a few plants woven together into a braided trunk. The plant grows best in bright indirect light in a high-humidity environment. If your home is not especially humid, you can fake the ideal growing conditions by spraying a fine mist of water to the leaves in the early morning before the sun is high and bright enough to burn the leaves. Additionally, if your home is especially dry, try placing your money tree atop a shallow decorative tray filled with rocks and water; as the water in the tray evaporates, it will provide the plant with much-needed moisture.  ", price: 64, rating: 4),
        Product(
            name: "Boston Fern", image: "12", description: "Boston ferns are said to be one of the easiest ferns to grow but that doesn't mean they're zero-maintenance additions to an indoor garden. Ferns grow wild in high-humidity areas like rainforests and marshes, and it is important that they receive adequate humidity within the home, especially during the winter. Soil should remain moist and never be allowed to fully dry out between waterings. Boston ferns grow best in indirect light, but direct light will scorch their leaves. With proper care, a Boston fern will reward indoor gardeners with a thick mass of fronds, which is the proper name for their long compound leaves.", price: 59, rating: 5)
    ]
}
