//
//  DLColorEntity.m
//  DLColors
//
//  Created by Dalang on 16/9/13.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import "DLColorEntity.h"
#import "UIColor+DLColor.h"
#import "UIColor+DLRandom.h"

NSString *const kDLColorsKey = @"kDLColorsKey";
NSString *const kDLColorClassificationKey = @"kDLColorClassificationKey";


@interface DLColorEntity ()

@property (nonatomic, readwrite, copy) NSString *colorName;

@property (nonatomic, readwrite, copy) NSString *chinessDescription;

@property (nonatomic, readwrite, strong) UIColor *color;

@end

@implementation DLColorEntity

- (instancetype)initWithColorName:(NSString *)name chineseDescription:(NSString *)description color:(UIColor *)color
{
    self = [super init];
    if (self) {
        _colorName = [name copy];
        _chinessDescription = [description copy];
        _color = color;
    }
    return self;
}

- (NSString *)colorName
{
    return _colorName;
}

- (NSString *)chinessDescription
{
    return _chinessDescription;
}

- (UIColor *)color
{
    return _color;
}

+ (NSDictionary *)dataSourceForColor
{
    NSMutableDictionary *dicttionary = [NSMutableDictionary dictionary];

    NSMutableArray *colors           = [NSMutableArray array];
    NSMutableArray *classifications  = [NSMutableArray array];
    
    // A***
    DLColorEntity *aliceBlue    = [[DLColorEntity alloc] initWithColorName:@"AliceBlue" chineseDescription:@"爱丽斯蓝" color:[UIColor DLAliceBlueColor]];
    DLColorEntity *antiqueWhite = [[DLColorEntity alloc] initWithColorName:@"AlntiqueWhite" chineseDescription:@"古董白" color:[UIColor DLAntiqueWhiteColor]];
    DLColorEntity *aqua         = [[DLColorEntity alloc] initWithColorName:@"Aqua" chineseDescription:@"浅绿色" color:[UIColor DLAquaColor]];
    DLColorEntity *aquamarine   = [[DLColorEntity alloc] initWithColorName:@"Aquamarine" chineseDescription:@"碧绿色" color:[UIColor DLAquamarineColor]];
    DLColorEntity *azure        = [[DLColorEntity alloc] initWithColorName:@"Azure" chineseDescription:@"蔚蓝色" color:[UIColor DLAzureColor]];
    [colors addObject:@[aliceBlue,
                        antiqueWhite,
                        aqua,
                        aquamarine,
                        azure]];
    [classifications addObject:@"A"];
    
    // B***
    DLColorEntity *beige          = [[DLColorEntity alloc] initWithColorName:@"Beige" chineseDescription:@"米色" color:[UIColor DLBeigeColor]];
    DLColorEntity *bisque         = [[DLColorEntity alloc] initWithColorName:@"Bisque" chineseDescription:@"橘黄色" color:[UIColor DLBisqueColor]];
    DLColorEntity *black          = [[DLColorEntity alloc] initWithColorName:@"Black" chineseDescription:@"黑色" color:[UIColor DLBlackColor]];
    DLColorEntity *blanchedAlmond = [[DLColorEntity alloc] initWithColorName:@"BlanchedAlmond" chineseDescription:@"白杏色" color:[UIColor DLBlanchedAlmondColor]];
    DLColorEntity *blue           = [[DLColorEntity alloc] initWithColorName:@"Blue" chineseDescription:@"蓝色" color:[UIColor DLBlueColor]];
    DLColorEntity *blueViolet     = [[DLColorEntity alloc] initWithColorName:@"BlueViolet" chineseDescription:@"蓝紫罗兰色" color:[UIColor DLBlueVioletColor]];
    DLColorEntity *brown          = [[DLColorEntity alloc] initWithColorName:@"Brown" chineseDescription:@"褐色" color:[UIColor DLBrownColor]];
    DLColorEntity *burlyWood      = [[DLColorEntity alloc] initWithColorName:@"BurlyWood" chineseDescription:@"实木色" color:[UIColor DLBurlyWoodColor]];
    [colors addObject:@[beige,
                        bisque,
                        black,
                        blanchedAlmond,
                        blue,
                        blueViolet,
                        brown,
                        burlyWood]];
    [classifications addObject:@"B"];
    
    // C***
    DLColorEntity *cadetBlue      = [[DLColorEntity alloc] initWithColorName:@"CadetBlue" chineseDescription:@"军蓝色" color:[UIColor DLCadetBlueColor]];
    DLColorEntity *chartreuse     = [[DLColorEntity alloc] initWithColorName:@"Chartreuse" chineseDescription:@"淡黄绿色" color:[UIColor DLChartreuseColor]];
    DLColorEntity *chocolate      = [[DLColorEntity alloc] initWithColorName:@"Chocolate" chineseDescription:@"巧克力色" color:[UIColor DLChocolateColor]];
    DLColorEntity *coral          = [[DLColorEntity alloc] initWithColorName:@"Coral" chineseDescription:@"珊瑚色" color:[UIColor DLCoralColor]];
    DLColorEntity *cornflowerBlue = [[DLColorEntity alloc] initWithColorName:@"CornflowerBlue" chineseDescription:@"菊蓝色" color:[UIColor DLCornflowerBlueColor]];
    DLColorEntity *cornsilk       = [[DLColorEntity alloc] initWithColorName:@"Cornsilk" chineseDescription:@"米绸色" color:[UIColor DLCornsilkColor]];
    DLColorEntity *crimson        = [[DLColorEntity alloc] initWithColorName:@"Crimson" chineseDescription:@"暗深红色" color:[UIColor DLCrimsonColor]];
    DLColorEntity *cyan           = [[DLColorEntity alloc] initWithColorName:@"Cyan" chineseDescription:@"青色" color:[UIColor DLCyanColor]];
    [colors addObject:@[cadetBlue,
                        chartreuse,
                        chocolate,
                        coral,
                        cornflowerBlue,
                        cornsilk,
                        crimson,
                        cyan]];
    [classifications addObject:@"C"];
    
    // D***
    DLColorEntity *darkBlue       = [[DLColorEntity alloc] initWithColorName:@"DarkBlue" chineseDescription:@"暗蓝色" color:[UIColor DLDarkBlueColor]];
    DLColorEntity *darkCyan       = [[DLColorEntity alloc] initWithColorName:@"DarkCyan" chineseDescription:@"暗青色" color:[UIColor DLDarkCyanColor]];
    DLColorEntity *darkGoldenRod  = [[DLColorEntity alloc] initWithColorName:@"DarkGoldenRod" chineseDescription:@"暗金黄色" color:[UIColor DLDarkGoldenRodColor]];
    DLColorEntity *darkgray       = [[DLColorEntity alloc] initWithColorName:@"Darkgray" chineseDescription:@"暗灰色" color:[UIColor DLDarkgrayColor]];
    DLColorEntity *darkGreen      = [[DLColorEntity alloc] initWithColorName:@"DarkGreen" chineseDescription:@"暗绿色" color:[UIColor DLDarkGreenColor]];
    DLColorEntity *darkKhaki      = [[DLColorEntity alloc] initWithColorName:@"DarkKhaki" chineseDescription:@"暗黄褐色" color:[UIColor DLDarkKhakiColor]];
    DLColorEntity *darkMagenta    = [[DLColorEntity alloc] initWithColorName:@"DarkMagenta" chineseDescription:@"暗洋红色" color:[UIColor DLDarkMagentaColor]];
    DLColorEntity *darkOliveGreen = [[DLColorEntity alloc] initWithColorName:@"DarkOliveGreen" chineseDescription:@"暗橄榄绿色" color:[UIColor DLDarkOliveGreenColor]];
    DLColorEntity *darkOrange     = [[DLColorEntity alloc] initWithColorName:@"DarkOrange" chineseDescription:@"暗橘黄色" color:[UIColor DLDarkOrangeColor]];
    DLColorEntity *darkOrchid     = [[DLColorEntity alloc] initWithColorName:@"DarkOrchid" chineseDescription:@"暗紫色" color:[UIColor DLDarkOrchidColor]];
    DLColorEntity *darkRed        = [[DLColorEntity alloc] initWithColorName:@"DarkRed" chineseDescription:@"暗红色" color:[UIColor DLDarkRedColor]];
    DLColorEntity *darkSalmon     = [[DLColorEntity alloc] initWithColorName:@"DarkSalmon" chineseDescription:@"暗肉色" color:[UIColor DLDarkSalmonColor]];
    DLColorEntity *darkSeaGreen   = [[DLColorEntity alloc] initWithColorName:@"DarkSeaGreen" chineseDescription:@"暗海蓝色" color:[UIColor DLDarkSeaGreenColor]];
    DLColorEntity *darkSlateBlue  = [[DLColorEntity alloc] initWithColorName:@"DarkSlateBlue" chineseDescription:@"暗灰蓝色" color:[UIColor DLDarkSlateBlueColor]];
    DLColorEntity *darkSlateGray  = [[DLColorEntity alloc] initWithColorName:@"DarkSlateGray" chineseDescription:@"墨绿色" color:[UIColor DLDarkSlateGrayColor]];
    DLColorEntity *darkTurquoise  = [[DLColorEntity alloc] initWithColorName:@"DarkTurquoise" chineseDescription:@"暗宝石绿色" color:[UIColor DLDarkTurquoiseColor]];
    DLColorEntity *darkViolet     = [[DLColorEntity alloc] initWithColorName:@"DarkViolet" chineseDescription:@"暗紫罗兰色" color:[UIColor DLDarkVioletColor]];
    DLColorEntity *deepPink       = [[DLColorEntity alloc] initWithColorName:@"DeepPink" chineseDescription:@"深粉红色" color:[UIColor DLDeepPinkColor]];
    DLColorEntity *deepSkyBlue    = [[DLColorEntity alloc] initWithColorName:@"DeepSkyBlue" chineseDescription:@"深天蓝色" color:[UIColor DLDeepSkyBlueColor]];
    DLColorEntity *dimGray        = [[DLColorEntity alloc] initWithColorName:@"DimGray" chineseDescription:@"暗灰色" color:[UIColor DLDimGrayColor]];
    DLColorEntity *dodgerBlue     = [[DLColorEntity alloc] initWithColorName:@"DodgerBlue" chineseDescription:@"闪蓝色" color:[UIColor DLDodgerBlueColor]];
    [colors addObject:@[darkBlue,
                        darkCyan,
                        darkGoldenRod,
                        darkgray,
                        darkGreen,
                        darkKhaki,
                        darkMagenta,
                        darkOliveGreen,
                        darkOrange,
                        darkOrchid,
                        darkRed,
                        darkSalmon,
                        darkSeaGreen,
                        darkSlateBlue,
                        darkSlateGray,
                        darkTurquoise,
                        darkViolet,
                        deepPink,
                        deepSkyBlue,
                        dimGray,
                        dodgerBlue]];
    [classifications addObject:@"D"];
    
    // F***
    DLColorEntity *feldspar    = [[DLColorEntity alloc] initWithColorName:@"Feldspar" chineseDescription:@"长石色" color:[UIColor DLFeldsparColor]];
    DLColorEntity *fireBrick   = [[DLColorEntity alloc] initWithColorName:@"FireBrick" chineseDescription:@"火砖色" color:[UIColor DLFireBrickColor]];
    DLColorEntity *floralWhite = [[DLColorEntity alloc] initWithColorName:@"FloralWhite" chineseDescription:@"花白色" color:[UIColor DLFloralWhiteColor]];
    DLColorEntity *forestGreen = [[DLColorEntity alloc] initWithColorName:@"ForestGreen" chineseDescription:@"森林绿色" color:[UIColor DLForestGreenColor]];
    DLColorEntity *fuchsia     = [[DLColorEntity alloc] initWithColorName:@"Fuchsia" chineseDescription:@"紫红色" color:[UIColor DLFuchsiaColor]];
    [colors addObject:@[feldspar,
                        fireBrick,
                        floralWhite,
                        forestGreen,
                        fuchsia]];
    [classifications addObject:@"F"];
    
    // G***
    DLColorEntity *gainsboro   = [[DLColorEntity alloc] initWithColorName:@"Gainsboro" chineseDescription:@"淡灰色" color:[UIColor DLGainsboroColor]];
    DLColorEntity *ghostWhite  = [[DLColorEntity alloc] initWithColorName:@"GhostWhite" chineseDescription:@"幽灵白色" color:[UIColor DLGhostWhiteColor]];
    DLColorEntity *gold        = [[DLColorEntity alloc] initWithColorName:@"Gold" chineseDescription:@"金色" color:[UIColor DLGoldColor]];
    DLColorEntity *goldenRod   = [[DLColorEntity alloc] initWithColorName:@"GoldenRod" chineseDescription:@"金麒麟色" color:[UIColor DLGoldenRodColor]];
    DLColorEntity *gray        = [[DLColorEntity alloc] initWithColorName:@"Gray" chineseDescription:@"灰色" color:[UIColor DLGrayColor]];
    DLColorEntity *green       = [[DLColorEntity alloc] initWithColorName:@"Green" chineseDescription:@"绿色" color:[UIColor DLGreenColor]];
    DLColorEntity *greenYellow = [[DLColorEntity alloc] initWithColorName:@"GreenYellow" chineseDescription:@"绿黄色" color:[UIColor DLGreenYellowColor]];
    [colors addObject:@[gainsboro,
                        ghostWhite,
                        gold,
                        goldenRod,
                        gray,
                        green,
                        greenYellow]];
    [classifications addObject:@"G"];

    // H***
    DLColorEntity *honeyDew = [[DLColorEntity alloc] initWithColorName:@"HoneyDew" chineseDescription:@"密色" color:[UIColor DLHoneyDewColor]];
    DLColorEntity *hotPink  = [[DLColorEntity alloc] initWithColorName:@"HotPink" chineseDescription:@"热粉红色" color:[UIColor DLHotPinkColor]];
    [colors addObject:@[honeyDew,
                        hotPink]];
    [classifications addObject:@"H"];

    // I***
    DLColorEntity *indianRed = [[DLColorEntity alloc] initWithColorName:@"IndianRed" chineseDescription:@"印第安红色" color:[UIColor DLIndianRedColor]];
    DLColorEntity *indigo    = [[DLColorEntity alloc] initWithColorName:@"Indigo" chineseDescription:@"靛青色" color:[UIColor DLIndigoColor]];
    DLColorEntity *ivory     = [[DLColorEntity alloc] initWithColorName:@"Ivory" chineseDescription:@"象牙色" color:[UIColor DLIvoryColor]];
    [colors addObject:@[indianRed,
                        indigo,
                        ivory]];
    [classifications addObject:@"I"];
    
    // K***
    DLColorEntity *khaki = [[DLColorEntity alloc] initWithColorName:@"Khaki" chineseDescription:@"黄褐色" color:[UIColor DLKhakiColor]];
    [colors addObject:@[khaki]];
    [classifications addObject:@"K"];
    
    // L***
    DLColorEntity *lavender             = [[DLColorEntity alloc] initWithColorName:@"Lavender" chineseDescription:@"淡紫色" color:[UIColor DLLavenderColor]];
    DLColorEntity *lavenderBlush        = [[DLColorEntity alloc] initWithColorName:@"LavenderBlush" chineseDescription:@"淡紫红色" color:[UIColor DLLavenderBlushColor]];
    DLColorEntity *lawnGreen            = [[DLColorEntity alloc] initWithColorName:@"LawnGreen" chineseDescription:@"草绿色" color:[UIColor DLLawnGreenColor]];
    DLColorEntity *lemonChiffon         = [[DLColorEntity alloc] initWithColorName:@"LemonChiffon" chineseDescription:@"柠檬绸色" color:[UIColor DLLemonChiffonColor]];
    DLColorEntity *lightBlue            = [[DLColorEntity alloc] initWithColorName:@"LightBlue" chineseDescription:@"亮蓝色" color:[UIColor DLLightBlueColor]];
    DLColorEntity *lightCoral           = [[DLColorEntity alloc] initWithColorName:@"LightCoral" chineseDescription:@"亮珊瑚色" color:[UIColor DLLightCoralColor]];
    DLColorEntity *lightGoldenRodYellow = [[DLColorEntity alloc] initWithColorName:@"LightGoldenRodYellow" chineseDescription:@"亮黄金色" color:[UIColor DLLightGoldenRodYellowColor]];
    DLColorEntity *lightGreen           = [[DLColorEntity alloc] initWithColorName:@"LightGreen" chineseDescription:@"亮绿色" color:[UIColor DLLightGreenColor]];
    DLColorEntity *lightGrey            = [[DLColorEntity alloc] initWithColorName:@"LightGrey" chineseDescription:@"亮灰色" color:[UIColor DLLightGreyColor]];
    DLColorEntity *lightPink            = [[DLColorEntity alloc] initWithColorName:@"LightPink" chineseDescription:@"亮粉红色" color:[UIColor DLLightPinkColor]];
    DLColorEntity *lightSalmon          = [[DLColorEntity alloc] initWithColorName:@"LightSalmon" chineseDescription:@"亮肉色" color:[UIColor DLLightSalmonColor]];
    DLColorEntity *lightSeaGreen        = [[DLColorEntity alloc] initWithColorName:@"LightSeaGreen" chineseDescription:@"亮海蓝色" color:[UIColor DLLightSeaGreenColor]];
    DLColorEntity *lightSkyBlue         = [[DLColorEntity alloc] initWithColorName:@"LightSkyBlue" chineseDescription:@"亮天蓝色" color:[UIColor DLLightSkyBlueColor]];
    DLColorEntity *lightSlateBlue       = [[DLColorEntity alloc] initWithColorName:@"LightSlateBlue" chineseDescription:@"亮石板蓝色" color:[UIColor DLLightSlateBlueColor]];
    DLColorEntity *lightSlateGray       = [[DLColorEntity alloc] initWithColorName:@"LightSlateGray" chineseDescription:@"亮蓝灰色" color:[UIColor DLLightSlateGrayColor]];
    DLColorEntity *lightSteelBlue       = [[DLColorEntity alloc] initWithColorName:@"LightSteelBlue" chineseDescription:@"亮钢蓝色" color:[UIColor DLLightSteelBlueColor]];
    DLColorEntity *lightYellow          = [[DLColorEntity alloc] initWithColorName:@"LightYellow" chineseDescription:@"亮黄色" color:[UIColor DLLightYellowColor]];
    DLColorEntity *lime                 = [[DLColorEntity alloc] initWithColorName:@"Lime" chineseDescription:@"酸橙色" color:[UIColor DLLimeColor]];
    DLColorEntity *limeGreen            = [[DLColorEntity alloc] initWithColorName:@"LimeGreen" chineseDescription:@"橙绿色" color:[UIColor DLLimeGreenColor]];
    DLColorEntity *linen                = [[DLColorEntity alloc] initWithColorName:@"Linen" chineseDescription:@"亚麻色" color:[UIColor DLLinenColor]];
    [colors addObject:@[lavender,
                        lavenderBlush,
                        lawnGreen,
                        lemonChiffon,
                        lightBlue,
                        lightCoral,
                        lightGoldenRodYellow,
                        lightGreen,
                        lightGrey,
                        lightPink,
                        lightSalmon,
                        lightSeaGreen,
                        lightSkyBlue,
                        lightSlateBlue,
                        lightSlateGray,
                        lightSteelBlue,
                        lightYellow,
                        lime,
                        limeGreen,
                        linen]];
    [classifications addObject:@"L"];
    
    
    // M***
    DLColorEntity *magenta           = [[DLColorEntity alloc] initWithColorName:@"Magenta" chineseDescription:@"红紫色" color:[UIColor DLMagentaColor]];
    DLColorEntity *maroon            = [[DLColorEntity alloc] initWithColorName:@"Maroon" chineseDescription:@"栗色" color:[UIColor DLMaroonColor]];
    DLColorEntity *mediumAquaMarine  = [[DLColorEntity alloc] initWithColorName:@"MediumAquaMarine" chineseDescription:@"间绿色" color:[UIColor DLMediumAquaMarineColor]];
    DLColorEntity *mediumBlue        = [[DLColorEntity alloc] initWithColorName:@"MediumBlue" chineseDescription:@"间蓝色" color:[UIColor DLMediumBlueColor]];
    DLColorEntity *mediumOrchid      = [[DLColorEntity alloc] initWithColorName:@"MediumOrchid" chineseDescription:@"间兰花紫色" color:[UIColor DLMediumOrchidColor]];
    DLColorEntity *mediumPurple      = [[DLColorEntity alloc] initWithColorName:@"MediumPurple" chineseDescription:@"间紫色" color:[UIColor DLMediumPurpleColor]];
    DLColorEntity *mediumSeaGreen    = [[DLColorEntity alloc] initWithColorName:@"MediumSeaGreen" chineseDescription:@"间海蓝色" color:[UIColor DLMediumSeaGreenColor]];
    DLColorEntity *mediumSlateBlue   = [[DLColorEntity alloc] initWithColorName:@"MediumSlateBlue" chineseDescription:@"间暗蓝色" color:[UIColor DLMediumSlateBlueColor]];
    DLColorEntity *mediumSpringGreen = [[DLColorEntity alloc] initWithColorName:@"MediumSpringGreen" chineseDescription:@"间春绿色" color:[UIColor DLMediumSpringGreenColor]];
    DLColorEntity *mediumTurquoise   = [[DLColorEntity alloc] initWithColorName:@"MediumTurquoise" chineseDescription:@"间宝石绿色" color:[UIColor DLMediumTurquoiseColor]];
    DLColorEntity *mediumVioletRed   = [[DLColorEntity alloc] initWithColorName:@"MediumVioletRed" chineseDescription:@"间紫罗兰色" color:[UIColor DLMediumVioletRedColor]];
    DLColorEntity *midnightBlue      = [[DLColorEntity alloc] initWithColorName:@"MidnightBlue" chineseDescription:@"中蓝灰色" color:[UIColor DLMidnightBlueColor]];
    DLColorEntity *mintCream         = [[DLColorEntity alloc] initWithColorName:@"MintCream" chineseDescription:@"薄荷色" color:[UIColor DLMintCreamColor]];
    DLColorEntity *mistyRose         = [[DLColorEntity alloc] initWithColorName:@"MistyRose" chineseDescription:@"浅玫瑰色" color:[UIColor DLMistyRoseColor]];
    DLColorEntity *moccasin          = [[DLColorEntity alloc] initWithColorName:@"Moccasin" chineseDescription:@"鹿皮色" color:[UIColor DLMoccasinColor]];
    [colors addObject:@[magenta,
                        maroon,
                        mediumAquaMarine,
                        mediumBlue,
                        mediumOrchid,
                        mediumPurple,
                        mediumSeaGreen,
                        mediumSlateBlue,
                        mediumSpringGreen,
                        mediumTurquoise,
                        mediumVioletRed,
                        midnightBlue,
                        mintCream,
                        mistyRose,
                        moccasin]];
    [classifications addObject:@"M"];

    // N***
    DLColorEntity *navajoWhite = [[DLColorEntity alloc] initWithColorName:@"NavajoWhite" chineseDescription:@"纳瓦白色" color:[UIColor DLNavajoWhiteColor]];
    DLColorEntity *navy        = [[DLColorEntity alloc] initWithColorName:@"Navy" chineseDescription:@"海军色" color:[UIColor DLNavyColor]];
    [colors addObject:@[navajoWhite,
                        navy]];
    [classifications addObject:@"N"];
    
    // O***
    DLColorEntity *oldLace = [[DLColorEntity alloc] initWithColorName:@"OldLace" chineseDescription:@"老花色" color:[UIColor DLOldLaceColor]];
    DLColorEntity *olive = [[DLColorEntity alloc] initWithColorName:@"Olive" chineseDescription:@"橄榄色" color:[UIColor DLOliveColor]];
    DLColorEntity *oliveDrab = [[DLColorEntity alloc] initWithColorName:@"OliveDrab" chineseDescription:@"深绿褐色" color:[UIColor DLOliveDrabColor]];
    DLColorEntity *orangeRed = [[DLColorEntity alloc] initWithColorName:@"OrangeRed" chineseDescription:@"红橙色" color:[UIColor DLOrangeRedColor]];
    DLColorEntity *orchid = [[DLColorEntity alloc] initWithColorName:@"Orchid" chineseDescription:@"淡紫色" color:[UIColor DLOrchidColor]];
    [colors addObject:@[oldLace,
                        olive,
                        oliveDrab,
                        orangeRed,
                        orchid]];
    [classifications addObject:@"O"];
    
    // P***
    DLColorEntity *paleGoldenRod = [[DLColorEntity alloc] initWithColorName:@"PaleGoldenRod" chineseDescription:@"苍麒麟色" color:[UIColor DLPaleGoldenRodColor]];
    DLColorEntity *paleGreen = [[DLColorEntity alloc] initWithColorName:@"PaleGreen" chineseDescription:@"苍绿色" color:[UIColor DLPaleGreenColor]];
    DLColorEntity *paleTurquoise = [[DLColorEntity alloc] initWithColorName:@"PaleTurquoise" chineseDescription:@"苍宝石绿色" color:[UIColor DLPaleTurquoiseColor]];
    DLColorEntity *paleVioletRed = [[DLColorEntity alloc] initWithColorName:@"PaleVioletRed" chineseDescription:@"苍紫罗兰色" color:[UIColor DLPaleVioletRedColor]];
    DLColorEntity *papayaWhip = [[DLColorEntity alloc] initWithColorName:@"PapayaWhip" chineseDescription:@"番木色" color:[UIColor DLPapayaWhipColor]];
    DLColorEntity *peachPuff = [[DLColorEntity alloc] initWithColorName:@"PeachPuff" chineseDescription:@"桃色" color:[UIColor DLPeachPuffColor]];
    DLColorEntity *peru = [[DLColorEntity alloc] initWithColorName:@"Peru" chineseDescription:@"秘鲁色" color:[UIColor DLPeruColor]];
    DLColorEntity *pink = [[DLColorEntity alloc] initWithColorName:@"Pink" chineseDescription:@"粉红色" color:[UIColor DLPinkColor]];
    DLColorEntity *plum = [[DLColorEntity alloc] initWithColorName:@"Plum" chineseDescription:@"洋李色" color:[UIColor DLPlumColor]];
    DLColorEntity *powderBlue = [[DLColorEntity alloc] initWithColorName:@"PowderBlue" chineseDescription:@"粉蓝色" color:[UIColor DLPowderBlueColor]];
    DLColorEntity *purple = [[DLColorEntity alloc] initWithColorName:@"Purple" chineseDescription:@"紫色" color:[UIColor DLPurpleColor]];
    [colors addObject:@[paleGoldenRod,
                        paleGreen,
                        paleTurquoise,
                        paleVioletRed,
                        papayaWhip,
                        peachPuff,
                        peru,
                        pink,
                        plum,
                        powderBlue,
                        purple]];
    [classifications addObject:@"P"];
    
    // R***
    DLColorEntity *red = [[DLColorEntity alloc] initWithColorName:@"Red" chineseDescription:@"红色" color:[UIColor DLRedColor]];
    DLColorEntity *rosyBrown = [[DLColorEntity alloc] initWithColorName:@"RosyBrown" chineseDescription:@"褐玫瑰红色" color:[UIColor DLRosyBrownColor]];
    DLColorEntity *royalBlue = [[DLColorEntity alloc] initWithColorName:@"RoyalBlue" chineseDescription:@"皇家蓝色" color:[UIColor DLRoyalBlueColor]];
    [colors addObject:@[red,
                        rosyBrown,
                        royalBlue]];
    [classifications addObject:@"R"];

    // S***
    DLColorEntity *saddleBrown = [[DLColorEntity alloc] initWithColorName:@"SaddleBrown" chineseDescription:@"重褐色" color:[UIColor DLSaddleBrownColor]];
    DLColorEntity *salmon = [[DLColorEntity alloc] initWithColorName:@"Salmon" chineseDescription:@"鲜肉色" color:[UIColor DLSalmonColor]];
    DLColorEntity *sandyBrown = [[DLColorEntity alloc] initWithColorName:@"SandyBrown" chineseDescription:@"沙褐色" color:[UIColor DLSandyBrownColor]];
    DLColorEntity *seaGreen = [[DLColorEntity alloc] initWithColorName:@"SeaGreen" chineseDescription:@"海绿色" color:[UIColor DLSeaGreenColor]];
    DLColorEntity *seaShell = [[DLColorEntity alloc] initWithColorName:@"SeaShell" chineseDescription:@"海贝色" color:[UIColor DLSeaShellColor]];
    DLColorEntity *sienna = [[DLColorEntity alloc] initWithColorName:@"Sienna" chineseDescription:@"赭色" color:[UIColor DLSiennaColor]];
    DLColorEntity *silver = [[DLColorEntity alloc] initWithColorName:@"Silver" chineseDescription:@"银色" color:[UIColor DLSilverColor]];
    DLColorEntity *skyBlue = [[DLColorEntity alloc] initWithColorName:@"SkyBlue" chineseDescription:@"天蓝色" color:[UIColor DLSkyBlueColor]];
    DLColorEntity *slateBlue = [[DLColorEntity alloc] initWithColorName:@"SlateBlue" chineseDescription:@"石蓝色" color:[UIColor DLSlateBlueColor]];
    DLColorEntity *slateGray = [[DLColorEntity alloc] initWithColorName:@"SlateGray" chineseDescription:@"灰石色" color:[UIColor DLSlateGrayColor]];
    DLColorEntity *snow = [[DLColorEntity alloc] initWithColorName:@"Snow" chineseDescription:@"雪白色" color:[UIColor DLSnowColor]];
    DLColorEntity *springGreen = [[DLColorEntity alloc] initWithColorName:@"SpringGreen" chineseDescription:@"春绿色" color:[UIColor DLSpringGreenColor]];
    DLColorEntity *steelBlue = [[DLColorEntity alloc] initWithColorName:@"SteelBlue" chineseDescription:@"钢蓝色" color:[UIColor DLSteelBlueColor]];
    [colors addObject:@[saddleBrown,
                        salmon,
                        sandyBrown,
                        seaGreen,
                        seaShell,
                        sienna,
                        silver,
                        skyBlue,
                        slateBlue,
                        slateGray,
                        snow,
                        springGreen,
                        steelBlue]];
    [classifications addObject:@"S"];

    // T***
    DLColorEntity *tan = [[DLColorEntity alloc] initWithColorName:@"Tan" chineseDescription:@"茶色" color:[UIColor DLTanColor]];
    DLColorEntity *teal = [[DLColorEntity alloc] initWithColorName:@"Teal" chineseDescription:@"水鸭色" color:[UIColor DLTealColor]];
    DLColorEntity *thistle = [[DLColorEntity alloc] initWithColorName:@"Thistle" chineseDescription:@"蓟色" color:[UIColor DLThistleColor]];
    DLColorEntity *tomato = [[DLColorEntity alloc] initWithColorName:@"Tan" chineseDescription:@"番茄色" color:[UIColor DLTanColor]];
    DLColorEntity *turquoise = [[DLColorEntity alloc] initWithColorName:@"Turquoise" chineseDescription:@"青绿色" color:[UIColor DLTurquoiseColor]];
    [colors addObject:@[tan,
                        teal,
                        thistle,
                        tomato,
                        turquoise]];
    [classifications addObject:@"T"];
    
    // V***
    DLColorEntity *violet = [[DLColorEntity alloc] initWithColorName:@"Violet" chineseDescription:@"紫罗兰色" color:[UIColor DLVioletColor]];
    DLColorEntity *violetRed = [[DLColorEntity alloc] initWithColorName:@"VioletRed" chineseDescription:@"紫罗兰红色" color:[UIColor DLVioletRedColor]];
    [colors addObject:@[violet,
                        violetRed]];
    [classifications addObject:@"V"];
    
    // W***
    DLColorEntity *wheat = [[DLColorEntity alloc] initWithColorName:@"Wheat" chineseDescription:@"浅黄色" color:[UIColor DLWheatColor]];
    DLColorEntity *white = [[DLColorEntity alloc] initWithColorName:@"White" chineseDescription:@"白色" color:[UIColor DLWhiteColor]];
    [colors addObject:@[wheat,
                        white]];
    [classifications addObject:@"W"];
    
    // Y***
    DLColorEntity *yellowGreen = [[DLColorEntity alloc] initWithColorName:@"YellowGreen" chineseDescription:@"浅黄色" color:[UIColor DLYellowGreenColor]];
    [colors addObject:@[yellowGreen]];
    [classifications addObject:@"Y"];
    
    // Random
    DLColorEntity *random = [[DLColorEntity alloc] initWithColorName:@"Random" chineseDescription:@"随机色" color:[UIColor dl_randomColor]];
    [colors addObject:@[random]];
    [classifications addObject:@"Random"];

    
    
    [dicttionary setObject:classifications forKey:kDLColorClassificationKey];
    [dicttionary setObject:colors forKey:kDLColorsKey];
    
    
    return dicttionary;
}

@end
