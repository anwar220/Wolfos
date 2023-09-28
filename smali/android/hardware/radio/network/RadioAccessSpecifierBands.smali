# classes2.dex

.class public final Landroid/hardware/radio/network/RadioAccessSpecifierBands;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/RadioAccessSpecifierBands$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/RadioAccessSpecifierBands;",
            ">;"
        }
    .end annotation
.end field

.field public static final eutranBands:I = 0x3

.field public static final geranBands:I = 0x1

.field public static final ngranBands:I = 0x4

.field public static final noinit:I = 0x0

.field public static final utranBands:I = 0x2


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/RadioAccessSpecifierBands-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

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
    const-string v0, "ngranBands"

    return-object v0

    :pswitch_1f  #0x3
    const-string v0, "eutranBands"

    return-object v0

    :pswitch_22  #0x2
    const-string v0, "utranBands"

    return-object v0

    :pswitch_25  #0x1
    const-string v0, "geranBands"

    return-object v0

    :pswitch_28  #0x0
    const-string v0, "noinit"

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

.method public static eutranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static geranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ngranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noinit(Z)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 4

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static utranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    return v0
.end method

.method public getEutranBands()[I
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getGeranBands()[I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getNgranBands()[I
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getNoinit()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    return v0
.end method

.method public getUtranBands()[I
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_28  #0x3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_30  #0x2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_40  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_38  #00000001
        :pswitch_30  #00000002
        :pswitch_28  #00000003
        :pswitch_20  #00000004
    .end packed-switch
.end method

.method public setEutranBands([I)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setGeranBands([I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setNgranBands([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setNoinit(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setUtranBands([I)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_be

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.RadioAccessSpecifierBands.ngranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/NgranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_42  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.RadioAccessSpecifierBands.eutranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/EutranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_62  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.RadioAccessSpecifierBands.utranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/UtranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_82  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.RadioAccessSpecifierBands.geranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/GeranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a2  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.RadioAccessSpecifierBands.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_a2  #00000000
        :pswitch_82  #00000001
        :pswitch_62  #00000002
        :pswitch_42  #00000003
        :pswitch_22  #00000004
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    :pswitch_b  #0x4
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_33

    :pswitch_13  #0x3
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_33

    :pswitch_1b  #0x2
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_33

    :pswitch_23  #0x1
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_33

    :pswitch_2b  #0x0
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

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
