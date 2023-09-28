# classes2.dex

.class public final Landroid/hardware/tv/tuner/DemuxFilterSettings;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxFilterSettings$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final alp:I = 0x4

.field public static final ip:I = 0x2

.field public static final mmtp:I = 0x1

.field public static final tlv:I = 0x3

.field public static final ts:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    iput-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxFilterSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

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
    const-string v0, "alp"

    return-object v0

    :pswitch_1f  #0x3
    const-string v0, "tlv"

    return-object v0

    :pswitch_22  #0x2
    const-string v0, "ip"

    return-object v0

    :pswitch_25  #0x1
    const-string v0, "mmtp"

    return-object v0

    :pswitch_28  #0x0
    const-string v0, "ts"

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

.method public static alp(Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

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

.method public static ip(Landroid/hardware/tv/tuner/DemuxIpFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mmtp(Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static tlv(Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ts(Landroid/hardware/tv/tuner/DemuxTsFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    goto :goto_3b

    :pswitch_9  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getAlp()Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_13  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTlv()Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_1d  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getIp()Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_27  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getMmtp()Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_31  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTs()Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_3b
    return v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_27  #00000001
        :pswitch_1d  #00000002
        :pswitch_13  #00000003
        :pswitch_9  #00000004
    .end packed-switch
.end method

.method public getAlp()Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    return-object v0
.end method

.method public getIp()Landroid/hardware/tv/tuner/DemuxIpFilterSettings;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    return-object v0
.end method

.method public getMmtp()Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    return-object v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    return v0
.end method

.method public getTlv()Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    return-object v0
.end method

.method public getTs()Landroid/hardware/tv/tuner/DemuxTsFilterSettings;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    return-object v0
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
    sget-object v1, Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x3
    sget-object v1, Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x2
    sget-object v1, Landroid/hardware/tv/tuner/DemuxIpFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_44  #0x1
    sget-object v1, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_50  #0x0
    sget-object v1, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

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

.method public setAlp(Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIp(Landroid/hardware/tv/tuner/DemuxIpFilterSettings;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setMmtp(Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setTlv(Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setTs(Landroid/hardware/tv/tuner/DemuxTsFilterSettings;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    :pswitch_b  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getAlp()Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_33

    :pswitch_13  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTlv()Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_33

    :pswitch_1b  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getIp()Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_33

    :pswitch_23  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getMmtp()Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_33

    :pswitch_2b  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTs()Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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
