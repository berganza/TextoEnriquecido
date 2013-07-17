//
//  ViewController.m
//  TextoEnriquecido
//
//  Created by LLBER on 17/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    self.title = @"A partir de iOS 6";
    
    // Nuevo método "NSAttributedString" y Mutable a partir de iOS 6
    NSMutableAttributedString *cadena = [[NSMutableAttributedString alloc] initWithString:@"Cadena de texto con ENRIQUECIDO"];
    
    // Color
    [cadena addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0,6)];
    [cadena addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:NSMakeRange(10,5)];
    [cadena addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(20,11)];

    
    // Tipo y Tamaño
    [cadena addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"AvenirNext-Heavy" size:70] range:NSMakeRange(0,6)];
    [cadena addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Palatino-Italic" size:50] range:NSMakeRange(10,5)];
    [cadena addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Papyrus-Condensed" size:75] range:NSMakeRange(20,11)];
    _etiqueta.attributedText = cadena;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
