# classes.dex

.class public final Landroid/hardware/display/BrightnessInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessInfo$BrightnessMaxReason;,
        Landroid/hardware/display/BrightnessInfo$HighBrightnessMode;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_MAX_REASON_NONE:I = 0x0

.field public static final BRIGHTNESS_MAX_REASON_THERMAL:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGH_BRIGHTNESS_MODE_HDR:I = 0x2

.field public static final HIGH_BRIGHTNESS_MODE_OFF:I = 0x0

.field public static final HIGH_BRIGHTNESS_MODE_SUNLIGHT:I = 0x1


# instance fields
.field public final adjustedBrightness:F

.field public final brightness:F

.field public final brightnessMaxReason:I

.field public final brightnessMaximum:F

.field public final brightnessMinimum:F

.field public final highBrightnessMode:I

.field public final highBrightnessTransitionPoint:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/display/BrightnessInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFIFI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    iput p2, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    iput p3, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iput p4, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    iput p5, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    iput p6, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    iput p7, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    return-void
.end method

.method public constructor <init>(FFFIFI)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFI)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/display/BrightnessInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/BrightnessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static briMaxReasonToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const-string v0, "invalid"

    return-object v0

    :pswitch_6  #0x1
    const-string/jumbo v0, "thermal"

    return-object v0

    :pswitch_a  #0x0
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_a  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public static hbmToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const-string v0, "invalid"

    return-object v0

    :pswitch_6  #0x2
    const-string v0, "hdr"

    return-object v0

    :pswitch_9  #0x1
    const-string/jumbo v0, "sunlight"

    return-object v0

    :pswitch_d  #0x0
    const-string/jumbo v0, "off"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_9  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
