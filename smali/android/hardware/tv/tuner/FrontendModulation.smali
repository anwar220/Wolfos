# classes2.dex

.class public final Landroid/hardware/tv/tuner/FrontendModulation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendModulation$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendModulation;",
            ">;"
        }
    .end annotation
.end field

.field public static final atsc:I = 0x6

.field public static final atsc3:I = 0x7

.field public static final dtmb:I = 0x8

.field public static final dvbc:I = 0x0

.field public static final dvbs:I = 0x1

.field public static final dvbt:I = 0x2

.field public static final isdbs:I = 0x3

.field public static final isdbs3:I = 0x4

.field public static final isdbt:I = 0x5


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendModulation$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendModulation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_38

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

    :pswitch_1c  #0x8
    const-string v0, "dtmb"

    return-object v0

    :pswitch_1f  #0x7
    const-string v0, "atsc3"

    return-object v0

    :pswitch_22  #0x6
    const-string v0, "atsc"

    return-object v0

    :pswitch_25  #0x5
    const-string v0, "isdbt"

    return-object v0

    :pswitch_28  #0x4
    const-string v0, "isdbs3"

    return-object v0

    :pswitch_2b  #0x3
    const-string v0, "isdbs"

    return-object v0

    :pswitch_2e  #0x2
    const-string v0, "dvbt"

    return-object v0

    :pswitch_31  #0x1
    const-string v0, "dvbs"

    return-object v0

    :pswitch_34  #0x0
    const-string v0, "dvbc"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_31  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
        :pswitch_1f  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method

.method public static atsc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static atsc3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dtmb(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbs3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    return v0
.end method

.method public getAtsc()I
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAtsc3()I
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDtmb()I
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDvbc()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDvbs()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDvbt()I
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsdbs()I
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsdbs3()I
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsdbt()I
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

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

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

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

    :pswitch_20  #0x8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_44  #0x5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_50  #0x4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5c  #0x3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_68  #0x2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_74  #0x1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_80  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_80  #00000000
        :pswitch_74  #00000001
        :pswitch_68  #00000002
        :pswitch_5c  #00000003
        :pswitch_50  #00000004
        :pswitch_44  #00000005
        :pswitch_38  #00000006
        :pswitch_2c  #00000007
        :pswitch_20  #00000008
    .end packed-switch
.end method

.method public setAtsc(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setAtsc3(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDtmb(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbc(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbs(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbt(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbs(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbs3(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbt(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    packed-switch v0, :pswitch_data_54

    goto :goto_53

    :pswitch_b  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDtmb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_13  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_1b  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_23  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_2b  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_33  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_3b  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_43  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :pswitch_4b  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_43  #00000001
        :pswitch_3b  #00000002
        :pswitch_33  #00000003
        :pswitch_2b  #00000004
        :pswitch_23  #00000005
        :pswitch_1b  #00000006
        :pswitch_13  #00000007
        :pswitch_b  #00000008
    .end packed-switch
.end method
