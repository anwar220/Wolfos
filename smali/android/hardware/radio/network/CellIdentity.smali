# classes2.dex

.class public final Landroid/hardware/radio/network/CellIdentity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/CellIdentity$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final cdma:I = 0x4

.field public static final gsm:I = 0x1

.field public static final lte:I = 0x5

.field public static final noinit:I = 0x0

.field public static final nr:I = 0x6

.field public static final tdscdma:I = 0x3

.field public static final wcdma:I = 0x2


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/network/CellIdentity$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellIdentity;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/CellIdentity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellIdentity;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/CellIdentity;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_32

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

    :pswitch_1c  #0x6
    const-string v0, "nr"

    return-object v0

    :pswitch_1f  #0x5
    const-string v0, "lte"

    return-object v0

    :pswitch_22  #0x4
    const-string v0, "cdma"

    return-object v0

    :pswitch_25  #0x3
    const-string v0, "tdscdma"

    return-object v0

    :pswitch_28  #0x2
    const-string v0, "wcdma"

    return-object v0

    :pswitch_2b  #0x1
    const-string v0, "gsm"

    return-object v0

    :pswitch_2e  #0x0
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_2b  #00000001
        :pswitch_28  #00000002
        :pswitch_25  #00000003
        :pswitch_22  #00000004
        :pswitch_1f  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method

.method public static cdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

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

.method public static gsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static lte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noinit(Z)Landroid/hardware/radio/network/CellIdentity;
    .registers 4

    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static nr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static tdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static wcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    goto :goto_45

    :pswitch_9  #0x6
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    :pswitch_13  #0x5
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    :pswitch_1d  #0x4
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    :pswitch_27  #0x3
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    :pswitch_31  #0x2
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    :pswitch_3b  #0x1
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_45
    return v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3b  #00000001
        :pswitch_31  #00000002
        :pswitch_27  #00000003
        :pswitch_1d  #00000004
        :pswitch_13  #00000005
        :pswitch_9  #00000006
    .end packed-switch
.end method

.method public getCdma()Landroid/hardware/radio/network/CellIdentityCdma;
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityCdma;

    return-object v0
.end method

.method public getGsm()Landroid/hardware/radio/network/CellIdentityGsm;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityGsm;

    return-object v0
.end method

.method public getLte()Landroid/hardware/radio/network/CellIdentityLte;
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityLte;

    return-object v0
.end method

.method public getNoinit()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNr()Landroid/hardware/radio/network/CellIdentityNr;
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityNr;

    return-object v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    return v0
.end method

.method public getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityTdscdma;

    return-object v0
.end method

.method public getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityWcdma;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_74

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

    :pswitch_20  #0x6
    sget-object v1, Landroid/hardware/radio/network/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityNr;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x5
    sget-object v1, Landroid/hardware/radio/network/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityLte;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x4
    sget-object v1, Landroid/hardware/radio/network/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityCdma;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_44  #0x3
    sget-object v1, Landroid/hardware/radio/network/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityTdscdma;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_50  #0x2
    sget-object v1, Landroid/hardware/radio/network/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityWcdma;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5c  #0x1
    sget-object v1, Landroid/hardware/radio/network/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityGsm;

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_68  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_68  #00000000
        :pswitch_5c  #00000001
        :pswitch_50  #00000002
        :pswitch_44  #00000003
        :pswitch_38  #00000004
        :pswitch_2c  #00000005
        :pswitch_20  #00000006
    .end packed-switch
.end method

.method public setCdma(Landroid/hardware/radio/network/CellIdentityCdma;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setGsm(Landroid/hardware/radio/network/CellIdentityGsm;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setLte(Landroid/hardware/radio/network/CellIdentityLte;)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setNoinit(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setNr(Landroid/hardware/radio/network/CellIdentityNr;)V
    .registers 3

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_fe

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_42  #0x5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.lte("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_62  #0x4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.cdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_82  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.tdscdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a2  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.wcdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c2  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.gsm("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_e2  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_e2  #00000000
        :pswitch_c2  #00000001
        :pswitch_a2  #00000002
        :pswitch_82  #00000003
        :pswitch_62  #00000004
        :pswitch_42  #00000005
        :pswitch_22  #00000006
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    packed-switch v0, :pswitch_data_44

    goto :goto_43

    :pswitch_b  #0x6
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    :pswitch_13  #0x5
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    :pswitch_1b  #0x4
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    :pswitch_23  #0x3
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    :pswitch_2b  #0x2
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    :pswitch_33  #0x1
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    :pswitch_3b  #0x0
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3b  #00000000
        :pswitch_33  #00000001
        :pswitch_2b  #00000002
        :pswitch_23  #00000003
        :pswitch_1b  #00000004
        :pswitch_13  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method
