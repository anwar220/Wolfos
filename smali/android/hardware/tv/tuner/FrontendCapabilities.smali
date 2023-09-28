# classes2.dex

.class public final Landroid/hardware/tv/tuner/FrontendCapabilities;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendCapabilities$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final analogCaps:I = 0x0

.field public static final atsc3Caps:I = 0x2

.field public static final atscCaps:I = 0x1

.field public static final dtmbCaps:I = 0x3

.field public static final dvbcCaps:I = 0x5

.field public static final dvbsCaps:I = 0x4

.field public static final dvbtCaps:I = 0x6

.field public static final isdbs3Caps:I = 0x8

.field public static final isdbsCaps:I = 0x7

.field public static final isdbtCaps:I = 0x9


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    iput-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_3a

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

    :pswitch_1c  #0x9
    const-string v0, "isdbtCaps"

    return-object v0

    :pswitch_1f  #0x8
    const-string v0, "isdbs3Caps"

    return-object v0

    :pswitch_22  #0x7
    const-string v0, "isdbsCaps"

    return-object v0

    :pswitch_25  #0x6
    const-string v0, "dvbtCaps"

    return-object v0

    :pswitch_28  #0x5
    const-string v0, "dvbcCaps"

    return-object v0

    :pswitch_2b  #0x4
    const-string v0, "dvbsCaps"

    return-object v0

    :pswitch_2e  #0x3
    const-string v0, "dtmbCaps"

    return-object v0

    :pswitch_31  #0x2
    const-string v0, "atsc3Caps"

    return-object v0

    :pswitch_34  #0x1
    const-string v0, "atscCaps"

    return-object v0

    :pswitch_37  #0x0
    const-string v0, "analogCaps"

    return-object v0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_34  #00000001
        :pswitch_31  #00000002
        :pswitch_2e  #00000003
        :pswitch_2b  #00000004
        :pswitch_28  #00000005
        :pswitch_25  #00000006
        :pswitch_22  #00000007
        :pswitch_1f  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method

.method public static analogCaps(Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static atsc3Caps(Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static atscCaps(Landroid/hardware/tv/tuner/FrontendAtscCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_10
    return v0
.end method

.method public static dtmbCaps(Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbcCaps(Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbsCaps(Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbtCaps(Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbs3Caps(Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbsCaps(Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbtCaps(Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    goto :goto_6d

    :pswitch_9  #0x9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_13  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_1d  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_27  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_31  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_3b  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_45  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_4f  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_59  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    :pswitch_63  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_6d
    return v0

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_63  #00000000
        :pswitch_59  #00000001
        :pswitch_4f  #00000002
        :pswitch_45  #00000003
        :pswitch_3b  #00000004
        :pswitch_31  #00000005
        :pswitch_27  #00000006
        :pswitch_1d  #00000007
        :pswitch_13  #00000008
        :pswitch_9  #00000009
    .end packed-switch
.end method

.method public getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    return-object v0
.end method

.method public getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    return-object v0
.end method

.method public getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    return-object v0
.end method

.method public getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    return-object v0
.end method

.method public getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    return-object v0
.end method

.method public getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    return-object v0
.end method

.method public getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    return-object v0
.end method

.method public getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    return-object v0
.end method

.method public getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    return-object v0
.end method

.method public getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
    .registers 2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    return-object v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_98

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

    :pswitch_20  #0x9
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x8
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x7
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_44  #0x6
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_50  #0x5
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5c  #0x4
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_68  #0x3
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_74  #0x2
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_80  #0x1
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_8c  #0x0
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_8c  #00000000
        :pswitch_80  #00000001
        :pswitch_74  #00000002
        :pswitch_68  #00000003
        :pswitch_5c  #00000004
        :pswitch_50  #00000005
        :pswitch_44  #00000006
        :pswitch_38  #00000007
        :pswitch_2c  #00000008
        :pswitch_20  #00000009
    .end packed-switch
.end method

.method public setAnalogCaps(Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setAtsc3Caps(Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setAtscCaps(Landroid/hardware/tv/tuner/FrontendAtscCapabilities;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDtmbCaps(Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbcCaps(Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbsCaps(Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbtCaps(Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;)V
    .registers 3

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbs3Caps(Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbsCaps(Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;)V
    .registers 3

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbtCaps(Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;)V
    .registers 3

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    :pswitch_b  #0x9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_13  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_1b  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_23  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_2b  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_33  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_3b  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_43  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_4b  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_53  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_4b  #00000001
        :pswitch_43  #00000002
        :pswitch_3b  #00000003
        :pswitch_33  #00000004
        :pswitch_2b  #00000005
        :pswitch_23  #00000006
        :pswitch_1b  #00000007
        :pswitch_13  #00000008
        :pswitch_b  #00000009
    .end packed-switch
.end method
