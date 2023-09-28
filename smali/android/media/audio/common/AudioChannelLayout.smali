# classes2.dex

.class public final Landroid/media/audio/common/AudioChannelLayout;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioChannelLayout$Tag;
    }
.end annotation


# static fields
.field public static final CHANNEL_BACK_CENTER:I = 0x100

.field public static final CHANNEL_BACK_LEFT:I = 0x10

.field public static final CHANNEL_BACK_RIGHT:I = 0x20

.field public static final CHANNEL_BOTTOM_FRONT_CENTER:I = 0x200000

.field public static final CHANNEL_BOTTOM_FRONT_LEFT:I = 0x100000

.field public static final CHANNEL_BOTTOM_FRONT_RIGHT:I = 0x400000

.field public static final CHANNEL_FRONT_CENTER:I = 0x4

.field public static final CHANNEL_FRONT_LEFT:I = 0x1

.field public static final CHANNEL_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final CHANNEL_FRONT_RIGHT:I = 0x2

.field public static final CHANNEL_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final CHANNEL_FRONT_WIDE_LEFT:I = 0x1000000

.field public static final CHANNEL_FRONT_WIDE_RIGHT:I = 0x2000000

.field public static final CHANNEL_HAPTIC_A:I = 0x40000000

.field public static final CHANNEL_HAPTIC_B:I = 0x20000000

.field public static final CHANNEL_LOW_FREQUENCY:I = 0x8

.field public static final CHANNEL_LOW_FREQUENCY_2:I = 0x800000

.field public static final CHANNEL_SIDE_LEFT:I = 0x200

.field public static final CHANNEL_SIDE_RIGHT:I = 0x400

.field public static final CHANNEL_TOP_BACK_CENTER:I = 0x10000

.field public static final CHANNEL_TOP_BACK_LEFT:I = 0x8000

.field public static final CHANNEL_TOP_BACK_RIGHT:I = 0x20000

.field public static final CHANNEL_TOP_CENTER:I = 0x800

.field public static final CHANNEL_TOP_FRONT_CENTER:I = 0x2000

.field public static final CHANNEL_TOP_FRONT_LEFT:I = 0x1000

.field public static final CHANNEL_TOP_FRONT_RIGHT:I = 0x4000

.field public static final CHANNEL_TOP_SIDE_LEFT:I = 0x40000

.field public static final CHANNEL_TOP_SIDE_RIGHT:I = 0x80000

.field public static final CHANNEL_VOICE_DNLINK:I = 0x8000

.field public static final CHANNEL_VOICE_UPLINK:I = 0x4000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioChannelLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_MASK_1:I = 0x1

.field public static final INDEX_MASK_10:I = 0x3ff

.field public static final INDEX_MASK_11:I = 0x7ff

.field public static final INDEX_MASK_12:I = 0xfff

.field public static final INDEX_MASK_13:I = 0x1fff

.field public static final INDEX_MASK_14:I = 0x3fff

.field public static final INDEX_MASK_15:I = 0x7fff

.field public static final INDEX_MASK_16:I = 0xffff

.field public static final INDEX_MASK_17:I = 0x1ffff

.field public static final INDEX_MASK_18:I = 0x3ffff

.field public static final INDEX_MASK_19:I = 0x7ffff

.field public static final INDEX_MASK_2:I = 0x3

.field public static final INDEX_MASK_20:I = 0xfffff

.field public static final INDEX_MASK_21:I = 0x1fffff

.field public static final INDEX_MASK_22:I = 0x3fffff

.field public static final INDEX_MASK_23:I = 0x7fffff

.field public static final INDEX_MASK_24:I = 0xffffff

.field public static final INDEX_MASK_3:I = 0x7

.field public static final INDEX_MASK_4:I = 0xf

.field public static final INDEX_MASK_5:I = 0x1f

.field public static final INDEX_MASK_6:I = 0x3f

.field public static final INDEX_MASK_7:I = 0x7f

.field public static final INDEX_MASK_8:I = 0xff

.field public static final INDEX_MASK_9:I = 0x1ff

.field public static final INTERLEAVE_LEFT:I = 0x0

.field public static final INTERLEAVE_RIGHT:I = 0x1

.field public static final LAYOUT_13POINT_360RA:I = 0x72f607

.field public static final LAYOUT_22POINT2:I = 0xffffff

.field public static final LAYOUT_2POINT0POINT2:I = 0xc0003

.field public static final LAYOUT_2POINT1:I = 0xb

.field public static final LAYOUT_2POINT1POINT2:I = 0xc000b

.field public static final LAYOUT_3POINT0POINT2:I = 0xc0007

.field public static final LAYOUT_3POINT1:I = 0xf

.field public static final LAYOUT_3POINT1POINT2:I = 0xc000f

.field public static final LAYOUT_5POINT1:I = 0x3f

.field public static final LAYOUT_5POINT1POINT2:I = 0xc003f

.field public static final LAYOUT_5POINT1POINT4:I = 0x2d03f

.field public static final LAYOUT_5POINT1_SIDE:I = 0x60f

.field public static final LAYOUT_6POINT1:I = 0x13f

.field public static final LAYOUT_7POINT1:I = 0x63f

.field public static final LAYOUT_7POINT1POINT2:I = 0xc063f

.field public static final LAYOUT_7POINT1POINT4:I = 0x2d63f

.field public static final LAYOUT_9POINT1POINT4:I = 0x302d63f

.field public static final LAYOUT_9POINT1POINT6:I = 0x30ed63f

.field public static final LAYOUT_FRONT_BACK:I = 0x104

.field public static final LAYOUT_HAPTIC_AB:I = 0x60000000

.field public static final LAYOUT_MONO:I = 0x1

.field public static final LAYOUT_MONO_HAPTIC_A:I = 0x40000001

.field public static final LAYOUT_MONO_HAPTIC_AB:I = 0x60000001

.field public static final LAYOUT_PENTA:I = 0x37

.field public static final LAYOUT_QUAD:I = 0x33

.field public static final LAYOUT_QUAD_SIDE:I = 0x603

.field public static final LAYOUT_STEREO:I = 0x3

.field public static final LAYOUT_STEREO_HAPTIC_A:I = 0x40000003

.field public static final LAYOUT_STEREO_HAPTIC_AB:I = 0x60000003

.field public static final LAYOUT_SURROUND:I = 0x107

.field public static final LAYOUT_TRI:I = 0x7

.field public static final LAYOUT_TRI_BACK:I = 0x103

.field public static final VOICE_CALL_MONO:I = 0xc000

.field public static final VOICE_DNLINK_MONO:I = 0x8000

.field public static final VOICE_UPLINK_MONO:I = 0x4000

.field public static final indexMask:I = 0x2

.field public static final invalid:I = 0x1

.field public static final layoutMask:I = 0x3

.field public static final none:I = 0x0

.field public static final voiceMask:I = 0x4


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/audio/common/AudioChannelLayout$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioChannelLayout$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioChannelLayout-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioChannelLayout;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x4
    const-string v0, "voiceMask"

    return-object v0

    :pswitch_1f  #0x3
    const-string v0, "layoutMask"

    return-object v0

    :pswitch_22  #0x2
    const-string v0, "indexMask"

    return-object v0

    :pswitch_25  #0x1
    const-string v0, "invalid"

    return-object v0

    :pswitch_28  #0x0
    const-string v0, "none"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_25  #00000001
        :pswitch_22  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method

.method public static indexMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4

    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static invalid(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4

    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static layoutMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4

    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static none(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4

    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static voiceMask(I)Landroid/media/audio/common/AudioChannelLayout;
    .registers 4

    new-instance v0, Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/media/audio/common/AudioChannelLayout;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioChannelLayout;

    if-nez v2, :cond_d

    return v1

    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioChannelLayout;

    iget v3, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    if-eq v3, v4, :cond_17

    return v1

    :cond_17
    iget-object v3, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    return v1

    :cond_22
    return v0
.end method

.method public getIndexMask()I
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInvalid()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLayoutMask()I
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNone()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    return v0
.end method

.method public getVoiceMask()I
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioChannelLayout;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioChannelLayout;->_value:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_20  #0x4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_44  #0x1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_50  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_44  #00000001
        :pswitch_38  #00000002
        :pswitch_2c  #00000003
        :pswitch_20  #00000004
    .end packed-switch
.end method

.method public setIndexMask(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setInvalid(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setLayoutMask(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setNone(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setVoiceMask(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/media/audio/common/AudioChannelLayout;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_ae

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.voiceMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3e  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.layoutMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5a  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.indexMask("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_76  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.invalid("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getInvalid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_92  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioChannelLayout.none("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getNone()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_92  #00000000
        :pswitch_76  #00000001
        :pswitch_5a  #00000002
        :pswitch_3e  #00000003
        :pswitch_22  #00000004
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/audio/common/AudioChannelLayout;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    :pswitch_b  #0x4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :pswitch_13  #0x3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :pswitch_1b  #0x2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :pswitch_23  #0x1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getInvalid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :pswitch_2b  #0x0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getNone()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_23  #00000001
        :pswitch_1b  #00000002
        :pswitch_13  #00000003
        :pswitch_b  #00000004
    .end packed-switch
.end method
