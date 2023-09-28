# classes.dex

.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$NativeConfig;,
        Landroid/content/res/Configuration$Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_MASK:I = 0xc

.field public static final COLOR_MODE_HDR_NO:I = 0x4

.field public static final COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_YES:I = 0x8

.field public static final COLOR_MODE_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_ANY:I = 0xfffe

.field public static final DENSITY_DPI_NONE:I = 0xffff

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final FONT_WEIGHT_ADJUSTMENT_UNDEFINED:I = 0x7fffffff

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Configuration"

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final UI_MODE_TYPE_WATCH:I = 0x6

.field public static final XIAOMI_KEYBOARD_ATTACHED:I = 0x2

.field public static final XIAOMI_KEYBOARD_DETACHED:I = 0x1

.field public static final XIAOMI_KEYBOARD_UNDEFINED:I = 0x0

.field private static final XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final XML_ATTR_FONT_WEIGHT_ADJUSTMENT:Ljava/lang/String; = "fontWeightAdjustment"

.field private static final XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public assetsSeq:I

.field public colorMode:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public extraConfig:Landroid/content/res/IMiuiConfiguration;

.field public fontScale:F

.field public fontWeightAdjustment:I

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z

.field public final windowConfiguration:Landroid/app/WindowConfiguration;

.field public xiaomiKeyboard:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {}, Landroid/content/res/ThemeManagerStub;->createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {}, Landroid/content/res/ThemeManagerStub;->createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {}, Landroid/content/res/ThemeManagerStub;->createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static configurationDiffToString(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_5f

    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_68

    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_71

    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_7a

    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_83

    const-string v1, "CONFIG_DENSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_8c

    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_96

    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a0

    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_aa

    const-string v1, "CONFIG_WINDOW_CONFIGURATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b4

    const-string v1, "CONFIG_AUTO_BOLD_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_c1
    if-ge v2, v3, :cond_d8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    if-eq v2, v4, :cond_d5

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d5
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :cond_d8
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private fixUpLocaleList()V
    .registers 5

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_d
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_34

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_1d
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_26

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_32

    :cond_26
    new-instance v0, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_32
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    :cond_34
    return-void
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 6

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_17

    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_17
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_1f

    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_1f
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_37
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_3f

    iput v2, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_3f
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_47

    iput v2, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_47
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_4f

    iput v2, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_4f
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_57

    iput v2, v0, Landroid/content/res/Configuration;->navigation:I

    :cond_57
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_5f

    iput v2, v0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_5f
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_67

    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_67
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_78

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_78
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_89

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_89
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_9a

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_9a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eq v1, v3, :cond_ab

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_ab
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0x3

    if-eq v1, v3, :cond_bc

    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    :cond_bc
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0xc

    if-eq v1, v3, :cond_cd

    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    :cond_cd
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_de

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_de
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_ef

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_ef
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_f7

    iput v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_f7
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_ff

    iput v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_ff
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_107

    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_107
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_10f

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_10f
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_117

    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_117
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_128

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    :cond_128
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v2, :cond_130

    iput v2, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    :cond_130
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_145

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v2, :cond_145

    invoke-interface {v1, v2}, Landroid/content/res/IMiuiConfiguration;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_145

    iget-object v1, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    invoke-interface {v1, v2}, Landroid/content/res/IMiuiConfiguration;->setTo(Landroid/content/res/IMiuiConfiguration;)V

    :cond_145
    iget v1, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    if-eq v1, v2, :cond_14d

    iput v2, v0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    :cond_14d
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .registers 2

    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static getUiModeTypeString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x7
    const-string/jumbo v0, "vrheadset"

    return-object v0

    :pswitch_9  #0x6
    const-string/jumbo v0, "watch"

    return-object v0

    :pswitch_d  #0x5
    const-string v0, "appliance"

    return-object v0

    :pswitch_10  #0x4
    const-string/jumbo v0, "television"

    return-object v0

    :pswitch_14  #0x3
    const-string v0, "car"

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "desk"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_10  #00000004
        :pswitch_d  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method

.method public static localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_93

    :cond_1c
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3f

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    const/4 v7, 0x2

    if-ne v3, v7, :cond_61

    if-nez v4, :cond_61

    if-eqz v5, :cond_48

    if-ne v5, v7, :cond_61

    :cond_48
    if-nez v6, :cond_61

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v7, :cond_93

    const-string v7, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_61
    const-string v7, "b+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "+"

    if-eqz v4, :cond_7b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    if-eqz v5, :cond_87

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    if-eqz v6, :cond_93

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static needNewResources(II)Z
    .registers 4

    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000  # 2.0f

    or-int p1, v0, v1

    and-int v0, p0, p1

    if-nez v0, :cond_14

    invoke-static {p0}, Landroid/content/res/ThemeManagerStub;->needNewResources(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    nop

    const-string v0, "fs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    const-string v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string/jumbo v2, "touch"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    const-string v2, "key"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    const-string v2, "keyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    nop

    const-string v2, "hardKeyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const-string/jumbo v2, "nav"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    const-string/jumbo v2, "navHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    const-string/jumbo v2, "ori"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v2, "scrLay"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const-string v2, "clrMod"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->colorMode:I

    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    const-string/jumbo v2, "width"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string v2, "height"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    nop

    const-string/jumbo v2, "sw"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "density"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    const-string v1, "fontWeightAdjustment"

    const v2, 0x7fffffff

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    return-void
.end method

.method public static reduceScreenLayout(III)I
    .registers 8

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_36

    :cond_8
    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_12

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_12

    const/4 v0, 0x4

    goto :goto_1d

    :cond_12
    const/16 v0, 0x280

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_1c

    const/4 v0, 0x3

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x2

    :goto_1d
    const/16 v1, 0x141

    if-gt p2, v1, :cond_29

    const/16 v1, 0x23a

    if-le p1, v1, :cond_26

    goto :goto_29

    :cond_26
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2b

    :cond_29
    :goto_29
    const/4 v1, 0x1

    move v2, v1

    :goto_2b
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v3, p2, -0x1

    if-lt v1, v3, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-nez v1, :cond_3c

    and-int/lit8 v3, p0, -0x31

    or-int/lit8 p0, v3, 0x10

    :cond_3c
    if-eqz v2, :cond_41

    const/high16 v3, 0x10000000

    or-int/2addr p0, v3

    :cond_41
    and-int/lit8 v3, p0, 0xf

    if-ge v0, v3, :cond_49

    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v0

    :cond_49
    return p0
.end method

.method public static resetScreenLayout(I)I
    .registers 2

    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    sparse-switch v1, :sswitch_data_29e

    goto :goto_6a

    :sswitch_5e
    const-string v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :sswitch_64
    const-string v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_6a
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8d
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_ce

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_2a8

    goto :goto_f1

    :pswitch_d6  #0x4
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    :pswitch_dd  #0x3
    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    :pswitch_e3  #0x2
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    :pswitch_ea  #0x1
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_f1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_2b4

    goto :goto_106

    :sswitch_f9
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    :sswitch_ff
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_106
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_2be

    goto :goto_11c

    :sswitch_10e
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    :sswitch_115
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_11c
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2c8

    goto :goto_132

    :pswitch_124  #0x2
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_132

    :pswitch_12b  #0x1
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_132
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_2d0

    goto :goto_146

    :sswitch_13a
    const-string v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_146

    :sswitch_140
    const-string v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_146
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_2da

    goto :goto_159

    :pswitch_14c  #0x2
    const-string v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_159

    :pswitch_152  #0x1
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_159
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_166

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_166
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2e2

    goto :goto_17c

    :sswitch_16e
    const-string/jumbo v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17c

    :sswitch_175
    const-string/jumbo v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_17c
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_2ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_19a
    const-string/jumbo v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1a1
    const-string v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1a7
    const-string/jumbo v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1ae
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1b5
    const-string/jumbo v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1bc
    const-string v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1c2
    const-string/jumbo v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1c9
    const-string/jumbo v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1d0
    const-string v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :sswitch_1d6
    nop

    :goto_1d7
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_316

    :pswitch_1dc  #0x2
    goto :goto_1ea

    :pswitch_1dd  #0x3
    const-string v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ea

    :pswitch_1e3  #0x1
    const-string/jumbo v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_1ea
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_320

    goto :goto_202

    :pswitch_1f0  #0x3
    const-string v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_202

    :pswitch_1f6  #0x2
    const-string v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_202

    :pswitch_1fc  #0x1
    const-string v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_202
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_32a

    goto :goto_21c

    :pswitch_208  #0x3
    const-string v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21c

    :pswitch_20e  #0x2
    const-string/jumbo v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21c

    :pswitch_215  #0x1
    const-string/jumbo v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_21c
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_334

    goto :goto_230

    :pswitch_222  #0x2
    const-string/jumbo v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_230

    :pswitch_229  #0x1
    const-string/jumbo v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_230
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_33c

    goto :goto_251

    :pswitch_236  #0x4
    const-string/jumbo v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_251

    :pswitch_23d  #0x3
    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_251

    :pswitch_244  #0x2
    const-string v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_251

    :pswitch_24a  #0x1
    const-string/jumbo v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_251
    if-eqz p1, :cond_27d

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_25e

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_262

    :cond_25e
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_29e
    .sparse-switch
        0x40 -> :sswitch_64
        0x80 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_ea  #00000001
        :pswitch_e3  #00000002
        :pswitch_dd  #00000003
        :pswitch_d6  #00000004
    .end packed-switch

    :sswitch_data_2b4
    .sparse-switch
        0x10 -> :sswitch_ff
        0x20 -> :sswitch_f9
    .end sparse-switch

    :sswitch_data_2be
    .sparse-switch
        0x100 -> :sswitch_115
        0x200 -> :sswitch_10e
    .end sparse-switch

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_12b  #00000001
        :pswitch_124  #00000002
    .end packed-switch

    :sswitch_data_2d0
    .sparse-switch
        0x4 -> :sswitch_140
        0x8 -> :sswitch_13a
    .end sparse-switch

    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_152  #00000001
        :pswitch_14c  #00000002
    .end packed-switch

    :sswitch_data_2e2
    .sparse-switch
        0x10 -> :sswitch_175
        0x20 -> :sswitch_16e
    .end sparse-switch

    :sswitch_data_2ec
    .sparse-switch
        0x0 -> :sswitch_1d6
        0x78 -> :sswitch_1d0
        0xa0 -> :sswitch_1c9
        0xd5 -> :sswitch_1c2
        0xf0 -> :sswitch_1bc
        0x140 -> :sswitch_1b5
        0x1e0 -> :sswitch_1ae
        0x280 -> :sswitch_1a7
        0xfffe -> :sswitch_1a1
        0xffff -> :sswitch_19a
    .end sparse-switch

    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_1e3  #00000001
        :pswitch_1dc  #00000002
        :pswitch_1dd  #00000003
    .end packed-switch

    :pswitch_data_320
    .packed-switch 0x1
        :pswitch_1fc  #00000001
        :pswitch_1f6  #00000002
        :pswitch_1f0  #00000003
    .end packed-switch

    :pswitch_data_32a
    .packed-switch 0x1
        :pswitch_215  #00000001
        :pswitch_20e  #00000002
        :pswitch_208  #00000003
    .end packed-switch

    :pswitch_data_334
    .packed-switch 0x1
        :pswitch_229  #00000001
        :pswitch_222  #00000002
    .end packed-switch

    :pswitch_data_33c
    .packed-switch 0x1
        :pswitch_24a  #00000001
        :pswitch_244  #00000002
        :pswitch_23d  #00000003
        :pswitch_236  #00000004
    .end packed-switch
.end method

.method public static uiModeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x7
    const-string v0, "UI_MODE_TYPE_VR_HEADSET"

    return-object v0

    :pswitch_b  #0x6
    const-string v0, "UI_MODE_TYPE_WATCH"

    return-object v0

    :pswitch_e  #0x5
    const-string v0, "UI_MODE_TYPE_APPLIANCE"

    return-object v0

    :pswitch_11  #0x4
    const-string v0, "UI_MODE_TYPE_TELEVISION"

    return-object v0

    :pswitch_14  #0x3
    const-string v0, "UI_MODE_TYPE_CAR"

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "UI_MODE_TYPE_DESK"

    return-object v0

    :pswitch_1a  #0x1
    const-string v0, "UI_MODE_TYPE_NORMAL"

    return-object v0

    :pswitch_1d  #0x0
    const-string v0, "UI_MODE_TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
    .end packed-switch
.end method


# virtual methods
.method public clearLocales()V
    .registers 2

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method public compareTo(Landroid/content/res/Configuration;)I
    .registers 11

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_a

    return v3

    :cond_a
    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_10

    return v4

    :cond_10
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v2, v5

    if-eqz v2, :cond_18

    return v2

    :cond_18
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_20

    return v5

    :cond_20
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_af

    return v4

    :cond_37
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    return v3

    :cond_40
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_51
    if-ge v3, v2, :cond_9e

    iget-object v4, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    iget-object v6, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6e

    return v5

    :cond_6e
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7d

    return v5

    :cond_7d
    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8c

    return v5

    :cond_8c
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9b

    return v5

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_9e
    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    iget-object v4, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    sub-int v5, v3, v4

    if-eqz v5, :cond_af

    return v5

    :cond_af
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v2, v3

    if-eqz v2, :cond_b7

    return v2

    :cond_b7
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_bf

    return v3

    :cond_bf
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_c7

    return v2

    :cond_c7
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_cf

    return v3

    :cond_cf
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_d7

    return v2

    :cond_d7
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_df

    return v3

    :cond_df
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_e7

    return v2

    :cond_e7
    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_ef

    return v3

    :cond_ef
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_f7

    return v2

    :cond_f7
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_ff

    return v3

    :cond_ff
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_107

    return v2

    :cond_107
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_10f

    return v3

    :cond_10f
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_117

    return v2

    :cond_117
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_11f

    return v3

    :cond_11f
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v4, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_127

    return v2

    :cond_127
    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-eqz v2, :cond_132

    return v2

    :cond_132
    iget v3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v4, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_13a

    return v3

    :cond_13a
    iget v2, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_142

    return v2

    :cond_142
    iget-object v3, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v3, :cond_14e

    iget-object v4, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v4, :cond_14e

    invoke-interface {v3, v4}, Landroid/content/res/IMiuiConfiguration;->compareTo(Ljava/lang/Object;)I

    move-result v2

    :cond_14e
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;ZZ)I
    .registers 11

    const/4 v0, 0x0

    if-nez p2, :cond_a

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    const/high16 v1, 0x40000000  # 2.0f

    or-int/2addr v0, v1

    :cond_15
    if-nez p2, :cond_1b

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_23

    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_23

    or-int/lit8 v0, v0, 0x1

    :cond_23
    if-nez p2, :cond_29

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_31

    :cond_29
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_31

    or-int/lit8 v0, v0, 0x2

    :cond_31
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    if-nez p2, :cond_41

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_41
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    or-int/lit8 v0, v0, 0x4

    or-int/lit16 v0, v0, 0x2000

    :cond_4f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v1, 0xc0

    if-nez p2, :cond_57

    if-eqz v2, :cond_5f

    :cond_57
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eq v2, v3, :cond_5f

    or-int/lit16 v0, v0, 0x2000

    :cond_5f
    if-nez p2, :cond_65

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_6d

    :cond_65
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_6d

    or-int/lit8 v0, v0, 0x8

    :cond_6d
    if-nez p2, :cond_73

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_7b

    :cond_73
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_7b

    or-int/lit8 v0, v0, 0x10

    :cond_7b
    if-nez p2, :cond_81

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_89

    :cond_81
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_89

    or-int/lit8 v0, v0, 0x20

    :cond_89
    if-nez p2, :cond_8f

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_97

    :cond_8f
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_97

    or-int/lit8 v0, v0, 0x20

    :cond_97
    if-nez p2, :cond_9d

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_a5

    :cond_9d
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_a5

    or-int/lit8 v0, v0, 0x40

    :cond_a5
    if-nez p2, :cond_ab

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_b3

    :cond_ab
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_b3

    or-int/lit8 v0, v0, 0x20

    :cond_b3
    if-nez p2, :cond_b9

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_c1

    :cond_b9
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_c1

    or-int/lit16 v0, v0, 0x80

    :cond_c1
    if-nez p2, :cond_c9

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_d9

    :cond_c9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v1, v3, :cond_d9

    or-int/lit16 v0, v0, 0x100

    :cond_d9
    if-nez p2, :cond_e1

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_ed

    :cond_e1
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v1, v3, :cond_ed

    or-int/lit16 v0, v0, 0x4000

    :cond_ed
    if-nez p2, :cond_f5

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_101

    :cond_f5
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v1, v3, :cond_101

    or-int/lit16 v0, v0, 0x4000

    :cond_101
    if-nez p2, :cond_107

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_10f

    :cond_107
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v3, :cond_10f

    or-int/lit16 v0, v0, 0x200

    :cond_10f
    if-nez p2, :cond_115

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_11d

    :cond_115
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v3, :cond_11d

    or-int/lit16 v0, v0, 0x400

    :cond_11d
    if-nez p2, :cond_123

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_12b

    :cond_123
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v3, :cond_12b

    or-int/lit16 v0, v0, 0x400

    :cond_12b
    if-nez p2, :cond_131

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_139

    :cond_131
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v3, :cond_139

    or-int/lit16 v0, v0, 0x800

    :cond_139
    if-nez p2, :cond_13f

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_147

    :cond_13f
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v3, :cond_147

    or-int/lit16 v0, v0, 0x1000

    :cond_147
    if-nez p2, :cond_14d

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_156

    :cond_14d
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v3, :cond_156

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_156
    if-nez p3, :cond_169

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v3, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_169

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_169
    if-nez p2, :cond_172

    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_17b

    :cond_172
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v3, :cond_17b

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_17b
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_188

    iget-object v3, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v3, :cond_188

    invoke-interface {v1, v3}, Landroid/content/res/IMiuiConfiguration;->diff(Landroid/content/res/IMiuiConfiguration;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_188
    if-nez p2, :cond_198

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    if-eq v1, v3, :cond_19a

    :cond_198
    or-int/lit16 v0, v0, 0x400

    :cond_19a
    return v0
.end method

.method public diffPublicOnly(Landroid/content/res/Configuration;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V
    .registers 11

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    if-nez p5, :cond_ba

    const-wide v2, 0x10200000001L

    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10d00000002L

    iget v4, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000003L

    iget v4, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_34

    const-wide v3, 0x10900000014L

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_34
    const-wide v2, 0x10d00000005L

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000006L

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000007L

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000008L

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000009L

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000aL

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000bL

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000cL

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000eL

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000011L

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000012L

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    if-nez p4, :cond_b0

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v2, :cond_b0

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_b0
    const-wide v2, 0x10d00000015L

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_ba
    const-wide v2, 0x10d0000000dL

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000fL

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000010L

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraConfig()Landroid/content/res/IMiuiConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    return-object v0
.end method

.method public getLayoutDirection()I
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .registers 2

    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_7a

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    :cond_7a
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    add-int/2addr v1, v2

    return v1
.end method

.method public isLayoutSizeAtLeast(I)Z
    .registers 4

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-lt v0, p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public isNightModeActive()Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_f

    return v2

    :cond_f
    sub-int/2addr v1, v3

    const/high16 v3, 0x10000

    if-le v1, v3, :cond_15

    return v0

    :cond_15
    if-lez v1, :cond_18

    move v0, v2

    :cond_18
    return v0
.end method

.method public isScreenHdr()Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isScreenRound()Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isScreenWideColorGamut()Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public makeDefault()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    move v1, v2

    :cond_2b
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v0, :cond_b1

    invoke-interface {v0, p1}, Landroid/content/res/IMiuiConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    :cond_b1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    return-void
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ") found when trying to add: "

    const-string v4, ";script-"

    const-string v5, "Repeated locale ("

    const-string v6, ";variant-"

    const-string v7, ";country-"

    const-string/jumbo v8, "readFromProto error building locale with: language-"

    const-string v9, ""

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    :goto_1d
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_42f

    const/4 v13, -0x1

    if-eq v0, v13, :cond_40c

    :try_start_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_409

    const-string v14, "Configuration"

    packed-switch v0, :pswitch_data_450

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_403

    :pswitch_33  #0x15
    const-wide v13, 0x10d00000015L

    :try_start_38
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_44

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_403

    :catchall_44
    move-exception v0

    move-wide v3, v10

    goto/16 :goto_431

    :pswitch_48  #0x14
    move-wide v15, v10

    const-wide v10, 0x10900000014L

    :try_start_4e
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_59} :catch_5f
    .catchall {:try_start_4e .. :try_end_59} :catchall_178

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :catch_5f
    move-exception v0

    :try_start_60
    const-string v10, "error parsing locale list in configuration."

    invoke-static {v14, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_6b  #0x13
    move-wide v15, v10

    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v10, 0x10b00000013L

    invoke-virtual {v0, v2, v10, v11}, Landroid/app/WindowConfiguration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_7c  #0x12
    move-wide v15, v10

    const-wide v10, 0x10d00000012L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_8e  #0x11
    move-wide v15, v10

    const-wide v10, 0x10d00000011L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_a0  #0x10
    move-wide v15, v10

    const-wide v10, 0x10d00000010L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_b2  #0xf
    move-wide v15, v10

    const-wide v10, 0x10d0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_c4  #0xe
    move-wide v15, v10

    const-wide v10, 0x10d0000000eL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_d6  #0xd
    move-wide v15, v10

    const-wide v10, 0x10d0000000dL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_e8  #0xc
    move-wide v15, v10

    const-wide v10, 0x10d0000000cL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_fa  #0xb
    move-wide v15, v10

    const-wide v10, 0x10d0000000bL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_10c  #0xa
    move-wide v15, v10

    const-wide v10, 0x10d0000000aL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_11e  #0x9
    move-wide v15, v10

    const-wide v10, 0x10d00000009L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_130  #0x8
    move-wide v15, v10

    const-wide v10, 0x10d00000008L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_142  #0x7
    move-wide v15, v10

    const-wide v10, 0x10d00000007L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_154  #0x6
    move-wide v15, v10

    const-wide v10, 0x10d00000006L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->colorMode:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :pswitch_166  #0x5
    move-wide v15, v10

    const-wide v10, 0x10d00000005L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_172
    .catchall {:try_start_60 .. :try_end_172} :catchall_178

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    :catchall_178
    move-exception v0

    move-wide v3, v15

    goto/16 :goto_431

    :pswitch_17c  #0x4
    move-wide v15, v10

    const-wide v10, 0x20b00000004L

    :try_start_182
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10
    :try_end_186
    .catchall {:try_start_182 .. :try_end_186} :catchall_3be

    move-object v0, v9

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    move-object/from16 v19, v9

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    :goto_195
    :try_start_195
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_199
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_195 .. :try_end_199} :catch_31b
    .catchall {:try_start_195 .. :try_end_199} :catchall_309

    if-eq v0, v13, :cond_22a

    :try_start_19b
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_19f
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_19b .. :try_end_19f} :catch_218
    .catchall {:try_start_19b .. :try_end_19f} :catchall_205

    packed-switch v0, :pswitch_data_47e

    move-object/from16 v18, v14

    goto/16 :goto_201

    :pswitch_1a6  #0x4
    move-object/from16 v18, v14

    const-wide v13, 0x10900000004L

    :try_start_1ad
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_201

    :pswitch_1b4  #0x3
    move-object/from16 v18, v14

    const-wide v13, 0x10900000003L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_201

    :pswitch_1c2  #0x2
    move-object/from16 v18, v14

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_201

    :pswitch_1d0  #0x1
    move-object/from16 v18, v14

    const-wide v13, 0x10900000001L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1db
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1ad .. :try_end_1db} :catch_1f0
    .catchall {:try_start_1ad .. :try_end_1db} :catchall_1de

    move-object/from16 v20, v0

    goto :goto_201

    :catchall_1de
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_32f

    :catch_1f0
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_32b

    :goto_201
    move-object/from16 v14, v18

    const/4 v13, -0x1

    goto :goto_195

    :catchall_205
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_32f

    :catch_218
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_32b

    :cond_22a
    move-object/from16 v18, v14

    :try_start_22c
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_22f
    .catchall {:try_start_22c .. :try_end_22f} :catchall_3be

    :try_start_22f
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V
    :try_end_234
    .catch Ljava/util/IllformedLocaleException; {:try_start_22f .. :try_end_234} :catch_2c3
    .catchall {:try_start_22f .. :try_end_234} :catchall_3be

    move-object/from16 v13, v20

    :try_start_236
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_23a
    .catch Ljava/util/IllformedLocaleException; {:try_start_236 .. :try_end_23a} :catch_2b3
    .catchall {:try_start_236 .. :try_end_23a} :catchall_3be

    move-object/from16 v14, v21

    :try_start_23c
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_240
    .catch Ljava/util/IllformedLocaleException; {:try_start_23c .. :try_end_240} :catch_2a5
    .catchall {:try_start_23c .. :try_end_240} :catchall_3be

    move-object/from16 v19, v9

    move-object/from16 v9, v22

    :try_start_244
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_248
    .catch Ljava/util/IllformedLocaleException; {:try_start_244 .. :try_end_248} :catch_29b
    .catchall {:try_start_244 .. :try_end_248} :catchall_3be

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    :try_start_24c
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v22, v16

    move/from16 v1, v22

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_268
    .catch Ljava/util/IllformedLocaleException; {:try_start_24c .. :try_end_268} :catch_295
    .catchall {:try_start_24c .. :try_end_268} :catchall_3b8

    move-object/from16 v16, v5

    :try_start_26a
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_282
    .catch Ljava/util/IllformedLocaleException; {:try_start_26a .. :try_end_282} :catch_288
    .catchall {:try_start_26a .. :try_end_282} :catchall_3b8

    move-object/from16 v5, v18

    :try_start_284
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_291

    :catch_288
    move-exception v0

    goto :goto_298

    :cond_28a
    move-object/from16 v16, v5

    move-object/from16 v5, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_291
    .catch Ljava/util/IllformedLocaleException; {:try_start_284 .. :try_end_291} :catch_293
    .catchall {:try_start_284 .. :try_end_291} :catchall_3b8

    :goto_291
    goto/16 :goto_301

    :catch_293
    move-exception v0

    goto :goto_2d4

    :catch_295
    move-exception v0

    move-object/from16 v16, v5

    :goto_298
    move-object/from16 v5, v18

    goto :goto_2d4

    :catch_29b
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto :goto_2d4

    :catch_2a5
    move-exception v0

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    move-object/from16 v9, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto :goto_2d4

    :catch_2b3
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto :goto_2d4

    :catch_2c3
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    :goto_2d4
    :try_start_2d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_300
    .catchall {:try_start_2d4 .. :try_end_300} :catchall_3b8

    nop

    :goto_301
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    goto/16 :goto_403

    :catchall_309
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    move-object v1, v0

    goto :goto_32f

    :catch_31b
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    :goto_32b
    nop

    :try_start_32c
    throw v0
    :try_end_32d
    .catchall {:try_start_32c .. :try_end_32d} :catchall_32d

    :catchall_32d
    move-exception v0

    move-object v1, v0

    :goto_32f
    move-object/from16 v2, p1

    :try_start_331
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_334
    .catchall {:try_start_331 .. :try_end_334} :catchall_3b8

    :try_start_334
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18
    :try_end_351
    .catch Ljava/util/IllformedLocaleException; {:try_start_334 .. :try_end_351} :catch_387
    .catchall {:try_start_334 .. :try_end_351} :catchall_3b8

    move/from16 v19, v18

    move-wide/from16 v22, v10

    move/from16 v10, v19

    const/4 v11, -0x1

    if-eq v10, v11, :cond_381

    :try_start_35a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_384

    :cond_381
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_384
    .catch Ljava/util/IllformedLocaleException; {:try_start_35a .. :try_end_384} :catch_385
    .catchall {:try_start_35a .. :try_end_384} :catchall_3b8

    :goto_384
    goto :goto_3b6

    :catch_385
    move-exception v0

    goto :goto_38a

    :catch_387
    move-exception v0

    move-wide/from16 v22, v10

    :goto_38a
    :try_start_38a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b6
    nop

    throw v1
    :try_end_3b8
    .catchall {:try_start_38a .. :try_end_3b8} :catchall_3b8

    :catchall_3b8
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_400

    :catchall_3be
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v15

    goto/16 :goto_431

    :pswitch_3c6  #0x3
    move-object v2, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    const-wide v0, 0x10d00000003L

    move-object/from16 v2, p1

    :try_start_3d2
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_3d6
    .catchall {:try_start_3d2 .. :try_end_3d6} :catchall_3db

    move-object/from16 v1, p0

    :try_start_3d8
    iput v0, v1, Landroid/content/res/Configuration;->mnc:I

    goto :goto_403

    :catchall_3db
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_400

    :pswitch_3df  #0x2
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    const-wide v9, 0x10d00000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    goto :goto_403

    :pswitch_3ef  #0x1
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    const-wide v9, 0x10200000001L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_3fe
    .catchall {:try_start_3d8 .. :try_end_3fe} :catchall_3ff

    goto :goto_403

    :catchall_3ff
    move-exception v0

    :goto_400
    move-wide/from16 v3, v20

    goto :goto_431

    :goto_403
    move-object/from16 v9, v19

    move-wide/from16 v10, v20

    goto/16 :goto_1d

    :catchall_409
    move-exception v0

    move-wide v3, v10

    goto :goto_431

    :cond_40c
    move-wide/from16 v20, v10

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_428

    new-instance v0, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_428
    move-wide/from16 v3, v20

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    nop

    return-void

    :catchall_42f
    move-exception v0

    move-wide v3, v10

    :goto_431
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_44b

    new-instance v5, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Locale;

    invoke-interface {v12, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v5, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_44b
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    throw v0

    nop

    :pswitch_data_450
    .packed-switch 0x1
        :pswitch_3ef  #00000001
        :pswitch_3df  #00000002
        :pswitch_3c6  #00000003
        :pswitch_17c  #00000004
        :pswitch_166  #00000005
        :pswitch_154  #00000006
        :pswitch_142  #00000007
        :pswitch_130  #00000008
        :pswitch_11e  #00000009
        :pswitch_10c  #0000000a
        :pswitch_fa  #0000000b
        :pswitch_e8  #0000000c
        :pswitch_d6  #0000000d
        :pswitch_c4  #0000000e
        :pswitch_b2  #0000000f
        :pswitch_a0  #00000010
        :pswitch_8e  #00000011
        :pswitch_7c  #00000012
        :pswitch_6b  #00000013
        :pswitch_48  #00000014
        :pswitch_33  #00000015
    .end packed-switch

    :pswitch_data_47e
    .packed-switch 0x1
        :pswitch_1d0  #00000001
        :pswitch_1c2  #00000002
        :pswitch_1b4  #00000003
        :pswitch_1a6  #00000004
    .end packed-switch
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 5

    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_12

    :cond_7
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_12
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .registers 4

    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .registers 4

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_26

    :cond_14
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_26
    :goto_26
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v0, :cond_93

    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_93

    invoke-interface {v0, v1}, Landroid/content/res/IMiuiConfiguration;->setTo(Landroid/content/res/IMiuiConfiguration;)V

    :cond_93
    iget v0, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;II)V
    .registers 6

    const/high16 v0, 0x40000000  # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    :cond_9
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    :cond_11
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_19

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_19
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3b

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_3b
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_4a

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_4a
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_52

    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    :cond_52
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5a

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_5a
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_66

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    :cond_66
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_76

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_76
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7e

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    :cond_7e
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_86

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_86
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_93

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_93
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_9b

    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_9b
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_a3

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_a3
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_af

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_af
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_b7

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_b7
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_bf

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_bf
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_c8

    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_c8
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_d4

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, p3}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;I)V

    :cond_d4
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_dd

    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    :cond_dd
    return-void
.end method

.method public setToDefaults()V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->setToDefaults()V

    const v1, 0x7fffffff

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/content/res/IMiuiConfiguration;->setToDefaults()V

    :cond_4b
    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_25
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_38

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_38
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3d
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_51
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_56
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    sparse-switch v2, :sswitch_data_328

    const-string v3, " layoutDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, v2, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_79

    :sswitch_68
    const-string v3, " ldrtl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    :sswitch_6e
    const-string v3, " ldltr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    :sswitch_74
    const-string v3, " ?layoutDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_79
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v4, "dp"

    if-eqz v3, :cond_8d

    const-string v3, " sw"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_92

    :cond_8d
    const-string v3, " ?swdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_92
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_a4

    const-string v3, " w"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    :cond_a4
    const-string v3, " ?wdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a9
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_bb

    const-string v3, " h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    :cond_bb
    const-string v3, " ?hdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c0
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_d2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d7

    :cond_d2
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d7
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_336

    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_108

    :pswitch_eb  #0x4
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    :pswitch_f1  #0x3
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    :pswitch_f7  #0x2
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    :pswitch_fd  #0x1
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    :pswitch_103  #0x0
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_108
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_344

    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_128

    :sswitch_11c
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_128

    :sswitch_122
    goto :goto_128

    :sswitch_123
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_128
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_352

    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_148

    :sswitch_13c
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_148

    :sswitch_142
    goto :goto_148

    :sswitch_143
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_148
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_360

    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_168

    :pswitch_15c  #0x2
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_168

    :pswitch_162  #0x1
    goto :goto_168

    :pswitch_163  #0x0
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_168
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_36a

    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_189

    :pswitch_178  #0x2
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_189

    :pswitch_17e  #0x1
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_189

    :pswitch_184  #0x0
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_189
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_374

    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :pswitch_19d  #0x7
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :pswitch_1a3  #0x6
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :pswitch_1a9  #0x5
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :pswitch_1af  #0x4
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :pswitch_1b5  #0x3
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :pswitch_1bb  #0x2
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :pswitch_1c1  #0x1
    goto :goto_1c7

    :pswitch_1c2  #0x0
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c7
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_388

    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1e7

    :sswitch_1db
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e7

    :sswitch_1e1
    goto :goto_1e7

    :sswitch_1e2
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e7
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_396

    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_20e

    :pswitch_1f7  #0x3
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20e

    :pswitch_1fd  #0x2
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20e

    :pswitch_203  #0x1
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20e

    :pswitch_209  #0x0
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20e
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_3a2

    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_235

    :pswitch_21e  #0x3
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    :pswitch_224  #0x2
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    :pswitch_22a  #0x1
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    :pswitch_230  #0x0
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_235
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v3, "/h"

    const-string v4, "/v"

    const-string v5, "/?"

    const-string v6, "/"

    packed-switch v1, :pswitch_data_3ae

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_25c

    :pswitch_24b  #0x3
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    :pswitch_251  #0x2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    :pswitch_255  #0x1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    :pswitch_259  #0x0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25c
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_3ba

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_275

    :pswitch_26a  #0x2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_275

    :pswitch_26e  #0x1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_275

    :pswitch_272  #0x0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_275
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_3c4

    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a2

    :pswitch_285  #0x4
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    :pswitch_28b  #0x3
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    :pswitch_291  #0x2
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    :pswitch_297  #0x1
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    :pswitch_29d  #0x0
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a2
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_3d2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2bb

    :pswitch_2b0  #0x2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2bb

    :pswitch_2b4  #0x1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2bb

    :pswitch_2b8  #0x0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2bb
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_2d4

    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2d4
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_2e3

    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2e3
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_2f5

    const-string v1, " fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2fa

    :cond_2f5
    const-string v1, " ?fontWeightAdjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2fa
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_305

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_305
    iget v1, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    packed-switch v1, :pswitch_data_3dc

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_31e

    :pswitch_313  #0x2
    const-string v1, "/a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31e

    :pswitch_319  #0x1
    const-string v1, "/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_31e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_328
    .sparse-switch
        0x0 -> :sswitch_74
        0x40 -> :sswitch_6e
        0x80 -> :sswitch_68
    .end sparse-switch

    :pswitch_data_336
    .packed-switch 0x0
        :pswitch_103  #00000000
        :pswitch_fd  #00000001
        :pswitch_f7  #00000002
        :pswitch_f1  #00000003
        :pswitch_eb  #00000004
    .end packed-switch

    :sswitch_data_344
    .sparse-switch
        0x0 -> :sswitch_123
        0x10 -> :sswitch_122
        0x20 -> :sswitch_11c
    .end sparse-switch

    :sswitch_data_352
    .sparse-switch
        0x0 -> :sswitch_143
        0x4 -> :sswitch_142
        0x8 -> :sswitch_13c
    .end sparse-switch

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_163  #00000000
        :pswitch_162  #00000001
        :pswitch_15c  #00000002
    .end packed-switch

    :pswitch_data_36a
    .packed-switch 0x0
        :pswitch_184  #00000000
        :pswitch_17e  #00000001
        :pswitch_178  #00000002
    .end packed-switch

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_1c2  #00000000
        :pswitch_1c1  #00000001
        :pswitch_1bb  #00000002
        :pswitch_1b5  #00000003
        :pswitch_1af  #00000004
        :pswitch_1a9  #00000005
        :pswitch_1a3  #00000006
        :pswitch_19d  #00000007
    .end packed-switch

    :sswitch_data_388
    .sparse-switch
        0x0 -> :sswitch_1e2
        0x10 -> :sswitch_1e1
        0x20 -> :sswitch_1db
    .end sparse-switch

    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_209  #00000000
        :pswitch_203  #00000001
        :pswitch_1fd  #00000002
        :pswitch_1f7  #00000003
    .end packed-switch

    :pswitch_data_3a2
    .packed-switch 0x0
        :pswitch_230  #00000000
        :pswitch_22a  #00000001
        :pswitch_224  #00000002
        :pswitch_21e  #00000003
    .end packed-switch

    :pswitch_data_3ae
    .packed-switch 0x0
        :pswitch_259  #00000000
        :pswitch_255  #00000001
        :pswitch_251  #00000002
        :pswitch_24b  #00000003
    .end packed-switch

    :pswitch_data_3ba
    .packed-switch 0x0
        :pswitch_272  #00000000
        :pswitch_26e  #00000001
        :pswitch_26a  #00000002
    .end packed-switch

    :pswitch_data_3c4
    .packed-switch 0x0
        :pswitch_29d  #00000000
        :pswitch_297  #00000001
        :pswitch_291  #00000002
        :pswitch_28b  #00000003
        :pswitch_285  #00000004
    .end packed-switch

    :pswitch_data_3d2
    .packed-switch 0x0
        :pswitch_2b8  #00000000
        :pswitch_2b4  #00000001
        :pswitch_2b0  #00000002
    .end packed-switch

    :pswitch_data_3dc
    .packed-switch 0x1
        :pswitch_319  #00000001
        :pswitch_313  #00000002
    .end packed-switch
.end method

.method public unset()V
    .registers 2

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    return-void
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .registers 9

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_13

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_13

    const/high16 v2, 0x40000000  # 2.0f

    or-int/2addr v0, v2

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v1, :cond_1f

    or-int/lit8 v0, v0, 0x1

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    :cond_1f
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2b

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v1, :cond_2b

    or-int/lit8 v0, v0, 0x2

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_2b
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    or-int/lit8 v0, v0, 0x4

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    :cond_62
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    if-eqz v1, :cond_75

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_75

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    or-int/lit16 v0, v0, 0x2000

    :cond_75
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_86

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_81

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_86

    :cond_81
    or-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    :cond_86
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_92

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v2, :cond_92

    or-int/lit8 v0, v0, 0x8

    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_92
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_9e

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v2, :cond_9e

    or-int/lit8 v0, v0, 0x10

    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    :cond_9e
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_aa

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v2, :cond_aa

    or-int/lit8 v0, v0, 0x20

    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_aa
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_b6

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v2, :cond_b6

    or-int/lit8 v0, v0, 0x20

    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    :cond_b6
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_c2

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v2, :cond_c2

    or-int/lit8 v0, v0, 0x40

    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    :cond_c2
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_ce

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v2, :cond_ce

    or-int/lit8 v0, v0, 0x20

    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_ce
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_da

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_da

    or-int/lit16 v0, v0, 0x80

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_da
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eqz v3, :cond_f1

    and-int/lit8 v3, v2, 0xf

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v4, 0xf

    if-eq v3, v5, :cond_f1

    or-int/lit16 v0, v0, 0x100

    and-int/lit8 v3, v4, -0x10

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_f1
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eqz v3, :cond_108

    and-int/lit8 v3, v2, 0x30

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v4, 0x30

    if-eq v3, v5, :cond_108

    or-int/lit16 v0, v0, 0x100

    and-int/lit8 v3, v4, -0x31

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_108
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eqz v3, :cond_11f

    and-int/lit16 v3, v2, 0x300

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v4, 0x300

    if-eq v3, v5, :cond_11f

    or-int/lit16 v0, v0, 0x100

    and-int/lit16 v3, v4, -0x301

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11f
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v3, 0x10000000

    and-int v4, v2, v3

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int v6, v5, v3

    if-eq v4, v6, :cond_137

    if-eqz v2, :cond_137

    or-int/lit16 v0, v0, 0x100

    const v4, -0x10000001

    and-int/2addr v4, v5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_137
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v2, 0x3

    if-eqz v4, :cond_14e

    and-int/lit8 v4, v2, 0x3

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v5, 0x3

    if-eq v4, v6, :cond_14e

    or-int/lit16 v0, v0, 0x4000

    and-int/lit8 v4, v5, -0x4

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_14e
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v2, 0xc

    if-eqz v4, :cond_165

    and-int/lit8 v4, v2, 0xc

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v5, 0xc

    if-eq v4, v6, :cond_165

    or-int/lit16 v0, v0, 0x4000

    and-int/lit8 v4, v5, -0xd

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_165
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_189

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    if-eq v4, v2, :cond_189

    or-int/lit16 v0, v0, 0x200

    and-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_17a

    and-int/lit8 v4, v4, -0x10

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_17a
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v2, 0x30

    if-eqz v4, :cond_189

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_189
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_195

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v2, :cond_195

    or-int/lit16 v0, v0, 0x400

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_195
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_1a1

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v2, :cond_1a1

    or-int/lit16 v0, v0, 0x400

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1a1
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_1ad

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v2, :cond_1ad

    or-int/lit16 v0, v0, 0x800

    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1ad
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_1b9

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v2, :cond_1b9

    or-int/lit16 v0, v0, 0x1000

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1b9
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_1bf

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    :cond_1bf
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_1c5

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    :cond_1c5
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_1cb

    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    :cond_1cb
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_1d8

    iget v4, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v4, :cond_1d8

    const/high16 v4, -0x80000000

    or-int/2addr v0, v4

    iput v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_1d8
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_1de

    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    :cond_1de
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-eqz v2, :cond_1eb

    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    :cond_1eb
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v2, :cond_1f8

    iget-object v4, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v4, :cond_1f8

    invoke-interface {v2, v4}, Landroid/content/res/IMiuiConfiguration;->updateFrom(Landroid/content/res/IMiuiConfiguration;)I

    move-result v2

    or-int/2addr v0, v2

    :cond_1f8
    iget v2, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    if-eqz v2, :cond_202

    iget v4, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    if-eq v4, v2, :cond_202

    iput v2, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    :cond_202
    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_210

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v2, v4, :cond_210

    or-int/2addr v0, v3

    iput v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    :cond_210
    return v0
.end method

.method public writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .registers 12

    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_b

    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_f

    :cond_b
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x10d00000002L

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10d00000004L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_24
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/app/WindowConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v0, :cond_94

    invoke-interface {v0, p1, p2}, Landroid/content/res/IMiuiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_94
    iget v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
