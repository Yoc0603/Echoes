//
//  StoryBrain.swift
//  Echoes
//
//  Created by Yavuz on 05/06/2025.
//


import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "Gece yarısı ıssız bir ormanda araban bozuluyor. Telefonunun şarjı bitmiş. Etrafta sadece ağaçların hışırtısı ve uzaklardan gelen baykuş sesleri var. Aniden bir karartı yaklaşıyor. Üzerinde yırtık pırtık bir palto olan yaşlı bir adam beliriyor ve kısık sesle soruyor: 'Yardım ister misin evlat?'",
            choice1: "Evet, lütfen yardım edin.", choice1Destination: 2,
            choice2: "Kim olduğunuzu bilmeden size güvenemem.", choice2Destination: 1
        ),
        Story(
            title: "Adam gözlerini kırpmadan sana bakıyor. 'Ben sadece kaybolanlara yol gösteririm' diyor.",
            choice1: "Ne demek istiyorsun? Açıkla!", choice1Destination: 2,
            choice2: "Koşarak oradan uzaklaş.", choice2Destination: 3
        ),
        Story(
            title: "Adam seni eski bir kulübeye götürüyor. İçeri girince lambalar kendiliğinden yanıyor. Duvarlarda kayıp kişilerin fotoğrafları asılı. Bir tanesi seni andırıyor.",
            choice1: "Bu da ne böyle? O fotoğraf ben miyim?", choice1Destination: 4,
            choice2: "Hemen kulübeden çık ve kaç.", choice2Destination: 5
        ),
        Story(
            title: "Karanlıkta koşarken ayağın bir köke takılıyor ve düşüyorsun. Gözlerini açtığında etrafında hiçbir şey yok. Orman, adam, araba... hepsi yok olmuş. Sadece sonsuz bir boşluk var.",
            choice1: "Yeniden başla", choice1Destination: 0,
            choice2: "Son", choice2Destination: 0
        ),
        Story(
            title: "Adam gülümsüyor. 'Ben seni uzun zaman önce kaybettim' diyor. Ve aynada kendi yansımanı değil, boş bir mezar taşını görüyorsun. Üzerinde kendi adın yazılı.",
            choice1: "Yeniden başla", choice1Destination: 0,
            choice2: "Son", choice2Destination: 0
        ),
        Story(
            title: "Koşarken ormanın derinliklerine dalıyorsun. Ama her yöne gittiğinde yine kulübenin önüne çıkıyorsun. Sonsuz bir döngüdesin. Bu yerden kaçış yok gibi görünüyor.",
            choice1: "Yeniden başla", choice1Destination: 0,
            choice2: "Son", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
