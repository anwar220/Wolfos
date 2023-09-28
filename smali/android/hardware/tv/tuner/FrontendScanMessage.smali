# classes2.dex

.class public final Landroid/hardware/tv/tuner/FrontendScanMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendScanMessage$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendScanMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final analogType:I = 0x6

.field public static final annex:I = 0xd

.field public static final atsc3PlpInfos:I = 0xb

.field public static final dvbtCellIds:I = 0xf

.field public static final frequencies:I = 0x3

.field public static final groupIds:I = 0x8

.field public static final hierarchy:I = 0x5

.field public static final inputStreamIds:I = 0x9

.field public static final isEnd:I = 0x1

.field public static final isHighPriority:I = 0xe

.field public static final isLocked:I = 0x0

.field public static final modulation:I = 0xc

.field public static final plpIds:I = 0x7

.field public static final progressPercent:I = 0x2

.field public static final std:I = 0xa

.field public static final symbolRates:I = 0x4


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendScanMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendScanMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendScanMessage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_4c

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

    :pswitch_1c  #0xf
    const-string v0, "dvbtCellIds"

    return-object v0

    :pswitch_1f  #0xe
    const-string v0, "isHighPriority"

    return-object v0

    :pswitch_22  #0xd
    const-string v0, "annex"

    return-object v0

    :pswitch_25  #0xc
    const-string v0, "modulation"

    return-object v0

    :pswitch_28  #0xb
    const-string v0, "atsc3PlpInfos"

    return-object v0

    :pswitch_2b  #0xa
    const-string v0, "std"

    return-object v0

    :pswitch_2e  #0x9
    const-string v0, "inputStreamIds"

    return-object v0

    :pswitch_31  #0x8
    const-string v0, "groupIds"

    return-object v0

    :pswitch_34  #0x7
    const-string v0, "plpIds"

    return-object v0

    :pswitch_37  #0x6
    const-string v0, "analogType"

    return-object v0

    :pswitch_3a  #0x5
    const-string v0, "hierarchy"

    return-object v0

    :pswitch_3d  #0x4
    const-string v0, "symbolRates"

    return-object v0

    :pswitch_40  #0x3
    const-string v0, "frequencies"

    return-object v0

    :pswitch_43  #0x2
    const-string v0, "progressPercent"

    return-object v0

    :pswitch_46  #0x1
    const-string v0, "isEnd"

    return-object v0

    :pswitch_49  #0x0
    const-string v0, "isLocked"

    return-object v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_49  #00000000
        :pswitch_46  #00000001
        :pswitch_43  #00000002
        :pswitch_40  #00000003
        :pswitch_3d  #00000004
        :pswitch_3a  #00000005
        :pswitch_37  #00000006
        :pswitch_34  #00000007
        :pswitch_31  #00000008
        :pswitch_2e  #00000009
        :pswitch_2b  #0000000a
        :pswitch_28  #0000000b
        :pswitch_25  #0000000c
        :pswitch_22  #0000000d
        :pswitch_1f  #0000000e
        :pswitch_1c  #0000000f
    .end packed-switch
.end method

.method public static analogType(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static annex(B)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static atsc3PlpInfos([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return v1

    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_26
    return v0
.end method

.method public static dvbtCellIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static frequencies([J)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static groupIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hierarchy(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static inputStreamIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isEnd(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isHighPriority(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isLocked(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static modulation(Landroid/hardware/tv/tuner/FrontendModulation;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static plpIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static progressPercent(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static std(Landroid/hardware/tv/tuner/FrontendScanMessageStandard;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static symbolRates([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    goto :goto_27

    :pswitch_9  #0xc
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getModulation()Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_27

    :pswitch_13  #0xb
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_27

    :pswitch_1d  #0xa
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0xa
        :pswitch_1d  #0000000a
        :pswitch_13  #0000000b
        :pswitch_9  #0000000c
    .end packed-switch
.end method

.method public getAnalogType()I
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAnnex()B
    .registers 2

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    .registers 2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    return-object v0
.end method

.method public getDvbtCellIds()[I
    .registers 2

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getFrequencies()[J
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public getGroupIds()[I
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getHierarchy()I
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInputStreamIds()[I
    .registers 2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getIsEnd()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsHighPriority()Z
    .registers 2

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsLocked()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getModulation()Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 2

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendModulation;

    return-object v0
.end method

.method public getPlpIds()[I
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getProgressPercent()I
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

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

.method public getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    return-object v0
.end method

.method public getSymbolRates()[I
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_c8

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

    :pswitch_20  #0xf
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_28  #0xe
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_34  #0xd
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_40  #0xc
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4c  #0xb
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_58  #0xa
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_64  #0x9
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_6c  #0x8
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_74  #0x7
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_7c  #0x6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_88  #0x5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_94  #0x4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_9c  #0x3
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_a4  #0x2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_b0  #0x1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_bc  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_bc  #00000000
        :pswitch_b0  #00000001
        :pswitch_a4  #00000002
        :pswitch_9c  #00000003
        :pswitch_94  #00000004
        :pswitch_88  #00000005
        :pswitch_7c  #00000006
        :pswitch_74  #00000007
        :pswitch_6c  #00000008
        :pswitch_64  #00000009
        :pswitch_58  #0000000a
        :pswitch_4c  #0000000b
        :pswitch_40  #0000000c
        :pswitch_34  #0000000d
        :pswitch_28  #0000000e
        :pswitch_20  #0000000f
    .end packed-switch
.end method

.method public setAnalogType(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setAnnex(B)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setAtsc3PlpInfos([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)V
    .registers 3

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbtCellIds([I)V
    .registers 3

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setFrequencies([J)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setGroupIds([I)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setHierarchy(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setInputStreamIds([I)V
    .registers 3

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsEnd(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsHighPriority(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsLocked(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setModulation(Landroid/hardware/tv/tuner/FrontendModulation;)V
    .registers 3

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPlpIds([I)V
    .registers 3

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setProgressPercent(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setStd(Landroid/hardware/tv/tuner/FrontendScanMessageStandard;)V
    .registers 3

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSymbolRates([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    packed-switch v0, :pswitch_data_90

    goto/16 :goto_8f

    :pswitch_c  #0xf
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getDvbtCellIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8f

    :pswitch_15  #0xe
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsHighPriority()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_8f

    :pswitch_1e  #0xd
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAnnex()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_8f

    :pswitch_27  #0xc
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getModulation()Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_8f

    :pswitch_2f  #0xb
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_8f

    :pswitch_37  #0xa
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_8f

    :pswitch_3f  #0x9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getInputStreamIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_8f

    :pswitch_47  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getGroupIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_8f

    :pswitch_4f  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getPlpIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_8f

    :pswitch_57  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAnalogType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8f

    :pswitch_5f  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getHierarchy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8f

    :pswitch_67  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getSymbolRates()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_8f

    :pswitch_6f  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getFrequencies()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_8f

    :pswitch_77  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getProgressPercent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8f

    :pswitch_7f  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsEnd()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_8f

    :pswitch_87  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_87  #00000000
        :pswitch_7f  #00000001
        :pswitch_77  #00000002
        :pswitch_6f  #00000003
        :pswitch_67  #00000004
        :pswitch_5f  #00000005
        :pswitch_57  #00000006
        :pswitch_4f  #00000007
        :pswitch_47  #00000008
        :pswitch_3f  #00000009
        :pswitch_37  #0000000a
        :pswitch_2f  #0000000b
        :pswitch_27  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_15  #0000000e
        :pswitch_c  #0000000f
    .end packed-switch
.end method
