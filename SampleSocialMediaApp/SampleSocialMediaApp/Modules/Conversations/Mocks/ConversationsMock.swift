//
//  ConversationsMock.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

struct ConversationsMock {
    // swiftlint:disable line_length
    static let conversations: [Conversation] =
                              [Conversation(profileImage: UIImage(named: "profile_image_8"),
                                            name: "Malena Tudi",
                                            status: "Online",
                                            previewMessage: "see the lions or sea lions? also, is mac there with u??",
                                            messageDetails: messageDetails[0]),
                               Conversation(profileImage: UIImage(named: "profile_image_10"),
                                            name: "Jakob Curtis",
                                            status: "Online",
                                            previewMessage: "on the 3rd of July at 8AM.",
                                            messageDetails: messageDetails[1]),
                               Conversation(profileImage: UIImage(named: "profile_image_7"),
                                            name: "Abram Levin",
                                            status: "Offline",
                                            previewMessage: "Send me the link!!",
                                            messageDetails: messageDetails[2]),
                               Conversation(profileImage: UIImage(named: "profile_image_9"),
                                            name: "Marilyn Herwitz",
                                            status: "Offline",
                                            previewMessage: "Hahahahah you should definitely see this one!!",
                                            messageDetails: messageDetails[3]),
                               Conversation(profileImage: UIImage(named: "profile_image_2"),
                                            name: "Jacqueline N.",
                                            status: "Offline",
                                            previewMessage: "What gathering?",
                                            messageDetails: messageDetails[4]),
                               Conversation(profileImage: UIImage(named: "profile_image_5"),
                                            name: "Matthew Dewis",
                                            status: "Online",
                                            previewMessage: "Wow. Is it from Stephen Hawking?",
                                            messageDetails: messageDetails[5])]
    static let messageDetails: [[MessageDetails]] =
                                [[MessageDetails(type: .received, message: "Hey, how's it goin?"),
                                   MessageDetails(type: .received, message: "we r goin to c the lions"),
                                   MessageDetails(type: .received, message: "they are doing a feed thing event at the zoo.."),
                                   MessageDetails(type: .sent, message: "when?"),
                                   MessageDetails(type: .sent, message: "see the lions or sea lions? also, is mac there with u??")
                                 ],
                                 [MessageDetails(type: .received, message: "Yo, are you goin to the Jake's wedding?"),
                                  MessageDetails(type: .sent, message: "when?"),
                                  MessageDetails(type: .received, message: "on the 3rd of July at 8AM.")
                                 ],
                                 [MessageDetails(type: .received, message: "Hey, did you see the new Social Media app? I'm very excited!"),
                                  MessageDetails(type: .sent, message: "I didn't!!"),
                                  MessageDetails(type: .sent, message: "Send me the link!!")
                                 ],
                                 [MessageDetails(type: .received, message: "Hey, I got new memes for you"),
                                  MessageDetails(type: .received, message: "Hahahahah you should definitely see this one!!")
                                 ],
                                 [MessageDetails(type: .received, message: "She was there too.."),
                                   MessageDetails(type: .received, message: "Anyway.."),
                                   MessageDetails(type: .received, message: "Did you go to the gathering today?"),
                                   MessageDetails(type: .sent, message: "What gathering?")
                                 ],
                                 [MessageDetails(type: .received, message: "One of the basic rules of the universe is that nothing is perfect. Perfection, simply doesn't exist. The early universe, had a tiny unevenness. Thanks to this imbalance between matter and antimatter, universe is created."),
                                  MessageDetails(type: .received, message: "So, next time when someone complains that you've made a mistake, always remembed that is a good thing; because without imperfection, neither you, nor I would exist."),
                                  MessageDetails(type: .received, message: "Imperfection, creates the 'perfection'"),
                                  MessageDetails(type: .sent, message: "Wow. Is it from Stephen Hawking?"),
                                  MessageDetails(type: .received, message: "Yes. Also hear this"),
                                  MessageDetails(type: .received, message: "I think computer viruses should count as life"),
                                  MessageDetails(type: .received, message: "I think it says something about human nature that the only form of life we have created so far is purely destructive."),
                                  MessageDetails(type: .received, message: "We've created life in our own image."),
                                  MessageDetails(type: .sent, message: "I really admire his intelligence."),
                                  MessageDetails(type: .received, message: "Me too!"),
                                  MessageDetails(type: .received, message: "And tihs one has some interesting thoughts about the creation:"),
                                  MessageDetails(type: .received, message: "The role played by time at the beginning of the universe is, I believe, the final key to removing the need for a Grand Designer, and revealing how the universe created itself."),
                                  MessageDetails(type: .received, message: "Time itself must come to a stop. You can’t get to a time before the big bang, because there was no time before the big bang. We have finally found something that does not have a cause because there was no time for a cause to exist in"),
                                  MessageDetails(type: .received, message: "For me this means there is no possibility of a creator because there is no time for a creator to have existed. Since time itself began at the moment of the Big Bang, it was an event that could not have been caused or created by anyone or anything"),
                                  MessageDetails(type: .received, message: "So when people ask me if a god created the universe, I tell them the question itself makes no sense."),
                                  MessageDetails(type: .received, message: "Time didn’t exist before the Big Bang, so there is no time for God to make the universe in."),
                                  MessageDetails(type: .received, message: "It’s like asking for directions to the edge of the Earth. The Earth is a sphere. It does not have an edge, so looking for it is a futile exercise."),
                                  MessageDetails(type: .sent, message: "Very interesting.")
                                 ]]
    // swiftlint:enable line_length
}
