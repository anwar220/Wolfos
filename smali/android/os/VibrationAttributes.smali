# classes3.dex

.class public final Landroid/os/VibrationAttributes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationAttributes$Builder;,
        Landroid/os/VibrationAttributes$Flag;,
        Landroid/os/VibrationAttributes$Usage;,
        Landroid/os/VibrationAttributes$UsageClass;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ALL_SUPPORTED:I = 0x3

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x1

.field public static final FLAG_BYPASS_USER_VIBRATION_INTENSITY_OFF:I = 0x2

.field public static final FLAG_INVALIDATE_SETTINGS_CACHE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VibrationAttributes"

.field public static final USAGE_ACCESSIBILITY:I = 0x42

.field public static final USAGE_ALARM:I = 0x11

.field public static final USAGE_CLASS_ALARM:I = 0x1

.field public static final USAGE_CLASS_FEEDBACK:I = 0x2

.field public static final USAGE_CLASS_MASK:I = 0xf

.field public static final USAGE_CLASS_MEDIA:I = 0x3

.field public static final USAGE_CLASS_UNKNOWN:I = 0x0

.field public static final USAGE_COMMUNICATION_REQUEST:I = 0x41

.field public static final USAGE_FILTER_MATCH_ALL:I = -0x1

.field public static final USAGE_HARDWARE_FEEDBACK:I = 0x32

.field public static final USAGE_MEDIA:I = 0x13

.field public static final USAGE_NOTIFICATION:I = 0x31

.field public static final USAGE_PHYSICAL_EMULATION:I = 0x22

.field public static final USAGE_RINGTONE:I = 0x21

.field public static final USAGE_TOUCH:I = 0x12

.field public static final USAGE_UNKNOWN:I


# instance fields
.field private final mFlags:I

.field private final mOriginalAudioUsage:I

.field private final mUsage:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/VibrationAttributes$1;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$1;-><init>()V

    sput-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iput p2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    and-int/lit8 v0, p3, 0x3

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(IIILandroid/os/VibrationAttributes-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/VibrationAttributes;-><init>(III)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/VibrationAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createForUsage(I)Landroid/os/VibrationAttributes;
    .registers 2

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static usageToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_18
    const-string v0, "ACCESSIBILITY"

    return-object v0

    :sswitch_1b
    const-string v0, "COMMUNICATION_REQUEST"

    return-object v0

    :sswitch_1e
    const-string v0, "HARDWARE_FEEDBACK"

    return-object v0

    :sswitch_21
    const-string v0, "NOTIFICATION"

    return-object v0

    :sswitch_24
    const-string v0, "PHYSICAL_EMULATION"

    return-object v0

    :sswitch_27
    const-string v0, "RINGTONE"

    return-object v0

    :sswitch_2a
    const-string v0, "MEDIA"

    return-object v0

    :sswitch_2d
    const-string v0, "TOUCH"

    return-object v0

    :sswitch_30
    const-string v0, "ALARM"

    return-object v0

    :sswitch_33
    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_33
        0x11 -> :sswitch_30
        0x12 -> :sswitch_2d
        0x13 -> :sswitch_2a
        0x21 -> :sswitch_27
        0x22 -> :sswitch_24
        0x31 -> :sswitch_21
        0x32 -> :sswitch_1e
        0x41 -> :sswitch_1b
        0x42 -> :sswitch_18
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/os/VibrationAttributes;

    iget v3, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mUsage:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mFlags:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public getAudioUsage()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    sparse-switch v0, :sswitch_data_1c

    const/4 v0, 0x0

    return v0

    :sswitch_c
    const/16 v0, 0xb

    return v0

    :sswitch_f
    const/4 v0, 0x2

    return v0

    :sswitch_11
    const/4 v0, 0x5

    return v0

    :sswitch_13
    const/4 v0, 0x6

    return v0

    :sswitch_15
    const/4 v0, 0x1

    return v0

    :sswitch_17
    const/16 v0, 0xd

    return v0

    :sswitch_1a
    const/4 v0, 0x4

    return v0

    :sswitch_data_1c
    .sparse-switch
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_17
        0x13 -> :sswitch_15
        0x21 -> :sswitch_13
        0x31 -> :sswitch_11
        0x41 -> :sswitch_f
        0x42 -> :sswitch_c
    .end sparse-switch
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method public getUsage()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method public getUsageClass()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFlagSet(I)Z
    .registers 3

    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationAttributes: Usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Audio Usage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
