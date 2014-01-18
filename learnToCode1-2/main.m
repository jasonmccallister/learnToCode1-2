//
//  main.m
//  learnToCode1-2
//
//  Created by Jason McCallister on 1/18/14.
//  Using the tutorial here: http://www.raywenderlich.com/38557/learn-to-code-ios-apps-1-welcome-to-programming
//  Copyright (c) 2014 Jason McCallister. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int answer = 0;
        int guess = 0;
        int turn = 0;

        // assign answer a random value between 1 and 100
        answer = arc4random() % 100 + 1;
        
        while (guess != answer) {
            
            // autoincrement the turn value
            turn++;
            
            // instruct the user to enter input
            NSLog(@"Guess #%i! Enter a number between 1 and 100", turn);
            
            // prompt the user for input
            scanf("%i", &guess);
            
            // check if the guess is higher than answers random value
            if (guess > answer) {
                NSLog(@"Guess Lower!");
            }
        
            // check if the guess is lower than answers random value
            else if (guess < answer) {
                NSLog(@"Guess Higher!");
            }
        
            // else the guess and answer are the same value, the user is a 'weeiner'...
            else {
                NSLog(@"Correct, the answer is %i you are a weeiner!", answer);
            }
        }
        // when the loop completes, show the user the number of attempts/turns
        NSLog(@"It took you %i tries!", turn);
        
    }
    return 0;
}

