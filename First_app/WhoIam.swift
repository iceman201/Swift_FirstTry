//
//  WhoIam.swift
//  First_app
//
//  Created by Liguo Jiao on 15/03/15.
//  Copyright (c) 2015 Liguo Jiao. All rights reserved.
//

import UIKit

class WhoIam: UIViewController {

    @IBOutlet var textView: UITextView!
    let content = "Hi there \n\nI was born in Beijing, China move to Christchurch, New Zealand when I was 18 years old. I received my first computer in 1996, when I was 6 years old. It was running Windows 95. I loved it withou any reason, I felt like the world was at my fingertips, I could do anything. \n\nI wasn't sure about what I'm gona do rest of my life at that time, until that when I was in junior high school, a day I was asking my physics teacher some questions about exam, meanwhile I heared from him about his computer system was got virus, and he was really need it to be fixed. So I was just help him recover his computer system. After finished, we had a conversation about where I got know about computer and why I like these computer stuff, he said “have you ever thought about what you gona do in your future? if not I think you should focus more about computer stuff because it's the thing you love from deep of your mine and you are enjoy and willing to do it without any reasons which is call 'interest', if you got a thing which you deeply interested just stick with it try to turn it to your strength, the thing I said you may not understand, just remember it.“ that was quite influenced my life, because I reliaze how much I love computer. \n\nTherefore, I started learning C and C++ by myself since high school. After graduated from high school, during the summer I started learning Python. If say my physics teacher enlighten about how much I love Computer, then High school is the time I realize how much I love programming. Each time I made a mistake on coding I would spend hours figuring out a solution, determined to not let the bug get the better of me. I would feel upset until I solved this bug, and when I would be overcome with a great sense of accomplishment."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = content //give a content to textview
        textView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0) //setup content begin
        textView.font = UIFont.systemFontOfSize(18) //content font size
        view.addSubview(textView) //setup the textview
        textView.textColor = UIColor.whiteColor() //setup content fontcolor
        
        self.navigationController?.navigationBarHidden = false
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
