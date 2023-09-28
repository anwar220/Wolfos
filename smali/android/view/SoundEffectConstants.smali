# classes3.dex

.class public Landroid/view/SoundEffectConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SoundEffectConstants$NavigationSoundEffect;,
        Landroid/view/SoundEffectConstants$SoundEffect;
    }
.end annotation


# static fields
.field public static final CLICK:I = 0x0

.field public static final NAVIGATION_DOWN:I = 0x4

.field public static final NAVIGATION_LEFT:I = 0x1

.field public static final NAVIGATION_REPEAT_DOWN:I = 0x8

.field public static final NAVIGATION_REPEAT_LEFT:I = 0x5

.field private static final NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

.field public static final NAVIGATION_REPEAT_RIGHT:I = 0x7

.field public static final NAVIGATION_REPEAT_UP:I = 0x6

.field public static final NAVIGATION_RIGHT:I = 0x3

.field public static final NAVIGATION_UP:I = 0x2

.field private static sLastNavigationRepeatSoundEffectId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/view/SoundEffectConstants;->NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

    const/4 v0, -0x1

    sput v0, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConstantForFocusDirection(IZ)I
    .registers 4

    if-eqz p1, :cond_16

    sparse-switch p0, :sswitch_data_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_d
    const/4 v0, 0x7

    return v0

    :sswitch_f
    const/4 v0, 0x5

    return v0

    :sswitch_11
    const/16 v0, 0x8

    return v0

    :sswitch_14
    const/4 v0, 0x6

    return v0

    :cond_16
    invoke-static {p0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    return v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_11
        0x11 -> :sswitch_f
        0x21 -> :sswitch_14
        0x42 -> :sswitch_d
        0x82 -> :sswitch_11
    .end sparse-switch
.end method

.method public static getContantForFocusDirection(I)I
    .registers 3

    sparse-switch p0, :sswitch_data_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    const/4 v0, 0x3

    return v0

    :sswitch_d
    const/4 v0, 0x1

    return v0

    :sswitch_f
    const/4 v0, 0x4

    return v0

    :sswitch_11
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_f
        0x11 -> :sswitch_d
        0x21 -> :sswitch_11
        0x42 -> :sswitch_b
        0x82 -> :sswitch_f
    .end sparse-switch
.end method

.method public static isNavigationRepeat(I)Z
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const/4 v0, 0x5

    if-eq p0, v0, :cond_10

    const/4 v0, 0x7

    if-eq p0, v0, :cond_10

    const/4 v0, 0x6

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public static nextNavigationRepeatSoundEffectId()I
    .registers 2

    sget-object v0, Landroid/view/SoundEffectConstants;->NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    if-lt v0, v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    sput v0, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    invoke-static {v0}, Landroid/media/AudioManager;->getNthNavigationRepeatSoundEffect(I)I

    move-result v1

    return v1
.end method
