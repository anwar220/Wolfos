# classes3.dex

.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$FrequencyVibrationParameter;,
        Landroid/os/VibrationEffect$AmplitudeVibrationParameter;,
        Landroid/os/VibrationEffect$VibrationParameter;,
        Landroid/os/VibrationEffect$WaveformBuilder;,
        Landroid/os/VibrationEffect$Composition;,
        Landroid/os/VibrationEffect$Composed;,
        Landroid/os/VibrationEffect$EffectType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AMPLITUDE:I = -0x1

.field public static final EFFECT_CLICK:I = 0x0

.field public static final EFFECT_DOUBLE_CLICK:I = 0x1

.field public static final EFFECT_HEAVY_CLICK:I = 0x5

.field public static final EFFECT_POP:I = 0x4

.field public static final EFFECT_STRENGTH_LIGHT:I = 0x0

.field public static final EFFECT_STRENGTH_MEDIUM:I = 0x1

.field public static final EFFECT_STRENGTH_STRONG:I = 0x2

.field public static final EFFECT_TEXTURE_TICK:I = 0x15

.field public static final EFFECT_THUD:I = 0x3

.field public static final EFFECT_TICK:I = 0x2

.field public static final MAX_AMPLITUDE:I = 0xff

.field private static final MAX_HAPTIC_FEEDBACK_COMPOSITION_SIZE:J = 0x3L

.field private static final MAX_HAPTIC_FEEDBACK_DURATION:J = 0x3e8L

.field public static final RINGTONES:[I

.field private static final SCALE_GAMMA:F = 0.65f


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOneShot(JI)Landroid/os/VibrationEffect;
    .registers 6

    if-eqz p2, :cond_12

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    new-array v0, v0, [I

    aput p2, v0, v2

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createPredefined(I)Landroid/os/VibrationEffect;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static createWaveform([JI)Landroid/os/VibrationEffect;
    .registers 6

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_13

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public static createWaveform([J[II)Landroid/os/VibrationEffect;
    .registers 10

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_33

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    const/high16 v2, -0x40800000  # -1.0f

    goto :goto_1b

    :cond_15
    aget v2, p1, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000  # 255.0f

    div-float/2addr v2, v3

    :goto_1b
    new-instance v3, Landroid/os/vibrator/StepSegment;

    const/4 v4, 0x0

    aget-wide v5, p0, v1

    long-to-int v5, v5

    invoke-direct {v3, v2, v4, v5}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2a
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    return-object v1

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amplitudes.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static effectIdToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_1e

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string v0, "TEXTURE_TICK"

    return-object v0

    :sswitch_b
    const-string v0, "HEAVY_CLICK"

    return-object v0

    :sswitch_e
    const-string v0, "POP"

    return-object v0

    :sswitch_11
    const-string v0, "THUD"

    return-object v0

    :sswitch_14
    const-string v0, "TICK"

    return-object v0

    :sswitch_17
    const-string v0, "DOUBLE_CLICK"

    return-object v0

    :sswitch_1a
    const-string v0, "CLICK"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0x15 -> :sswitch_8
    .end sparse-switch
.end method

.method public static effectStrengthToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x2
    const-string v0, "STRONG"

    return-object v0

    :pswitch_b  #0x1
    const-string v0, "MEDIUM"

    return-object v0

    :pswitch_e  #0x0
    const-string v0, "LIGHT"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_b  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method

.method public static get(I)Landroid/os/VibrationEffect;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static get(IZ)Landroid/os/VibrationEffect;
    .registers 5

    new-instance v0, Landroid/os/VibrationEffect$Composed;

    new-instance v1, Landroid/os/vibrator/PrebakedSegment;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/os/vibrator/PrebakedSegment;-><init>(IZI)V

    invoke-direct {v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/vibrator/VibrationEffectSegment;)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method

.method public static get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 11

    invoke-static {}, Landroid/os/VibrationEffectStub;->getInstance()Landroid/os/VibrationEffectStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/VibrationEffectStub;->get(Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    return-object v3

    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_26

    move-object v4, p0

    :cond_26
    const/4 v5, 0x0

    :goto_27
    array-length v6, v1

    if-ge v5, v6, :cond_51

    sget-object v6, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v7, v6

    if-ge v5, v7, :cond_51

    aget-object v7, v1, v5

    if-nez v7, :cond_34

    goto :goto_4e

    :cond_34
    aget-object v7, v1, v5

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_41

    goto :goto_4e

    :cond_41
    invoke-virtual {v7, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    aget v3, v6, v5

    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v3

    return-object v3

    :cond_4e
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_51
    return-object v3
.end method

.method public static scale(FF)F
    .registers 13

    const v0, 0x3fc4ec4f

    invoke-static {p1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_10

    mul-float v1, p0, v0

    return v1

    :cond_10
    const/high16 v2, 0x40800000  # 4.0f

    sub-float/2addr v2, p1

    invoke-static {p1, v2}, Landroid/util/MathUtils;->pow(FF)F

    move-result v2

    mul-float v3, p0, v0

    mul-float/2addr v3, v2

    mul-float v4, v0, v2

    invoke-static {v3}, Landroid/util/MathUtils;->exp(F)F

    move-result v5

    invoke-static {v4}, Landroid/util/MathUtils;->exp(F)F

    move-result v6

    add-float v7, v6, v1

    sub-float v8, v6, v1

    div-float/2addr v7, v8

    sub-float v8, v5, v1

    add-float v9, v5, v1

    div-float/2addr v8, v9

    mul-float v9, v7, v8

    const/4 v10, 0x0

    invoke-static {v9, v10, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1
.end method

.method public static startComposition()Landroid/os/VibrationEffect$Composition;
    .registers 1

    new-instance v0, Landroid/os/VibrationEffect$Composition;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition;-><init>()V

    return-object v0
.end method

.method public static startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 1

    new-instance v0, Landroid/os/VibrationEffect$WaveformBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformBuilder;-><init>()V

    return-object v0
.end method

.method public static startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 3

    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    return-object v0
.end method

.method public static startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 4

    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    return-object v0
.end method


# virtual methods
.method public applyEffectStrength(I)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(I)TT;"
        }
    .end annotation

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public isHapticFeedbackCandidate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract resolve(I)Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract scale(F)Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(F)TT;"
        }
    .end annotation
.end method

.method public abstract validate()V
.end method
