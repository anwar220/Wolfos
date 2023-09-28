# classes2.dex

.class public final Landroid/hardware/vibrator/PrimitivePwle;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/PrimitivePwle$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/vibrator/PrimitivePwle;",
            ">;"
        }
    .end annotation
.end field

.field public static final active:I = 0x0

.field public static final braking:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle$1;

    invoke-direct {v0}, Landroid/hardware/vibrator/PrimitivePwle$1;-><init>()V

    sput-object v0, Landroid/hardware/vibrator/PrimitivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    iput-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    iput-object p2, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/vibrator/PrimitivePwle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/vibrator/PrimitivePwle;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    iput-object p2, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_22

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

    :pswitch_1c  #0x1
    const-string v0, "braking"

    return-object v0

    :pswitch_1f  #0x0
    const-string v0, "active"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method

.method public static active(Landroid/hardware/vibrator/ActivePwle;)Landroid/hardware/vibrator/PrimitivePwle;
    .registers 3

    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static braking(Landroid/hardware/vibrator/BrakingPwle;)Landroid/hardware/vibrator/PrimitivePwle;
    .registers 3

    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(ILjava/lang/Object;)V

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


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    :pswitch_9  #0x1
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getBraking()Landroid/hardware/vibrator/BrakingPwle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1d

    :pswitch_13  #0x0
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getActive()Landroid/hardware/vibrator/ActivePwle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_9  #00000001
    .end packed-switch
.end method

.method public getActive()Landroid/hardware/vibrator/ActivePwle;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/vibrator/ActivePwle;

    return-object v0
.end method

.method public getBraking()Landroid/hardware/vibrator/BrakingPwle;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/vibrator/BrakingPwle;

    return-object v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_38

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

    :pswitch_20  #0x1
    sget-object v1, Landroid/hardware/vibrator/BrakingPwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/vibrator/BrakingPwle;

    invoke-direct {p0, v0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x0
    sget-object v1, Landroid/hardware/vibrator/ActivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/vibrator/ActivePwle;

    invoke-direct {p0, v0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c  #00000000
        :pswitch_20  #00000001
    .end packed-switch
.end method

.method public setActive(Landroid/hardware/vibrator/ActivePwle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setBraking(Landroid/hardware/vibrator/BrakingPwle;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    :pswitch_b  #0x1
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getBraking()Landroid/hardware/vibrator/BrakingPwle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    :pswitch_13  #0x0
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getActive()Landroid/hardware/vibrator/ActivePwle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_b  #00000001
    .end packed-switch
.end method
