# classes3.dex

.class public final Landroid/os/StatsBootstrapAtomValue;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsBootstrapAtomValue$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsBootstrapAtomValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final boolValue:I = 0x0

.field public static final bytesValue:I = 0x5

.field public static final floatValue:I = 0x3

.field public static final intValue:I = 0x1

.field public static final longValue:I = 0x2

.field public static final stringValue:I = 0x4


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/StatsBootstrapAtomValue$1;

    invoke-direct {v0}, Landroid/os/StatsBootstrapAtomValue$1;-><init>()V

    sput-object v0, Landroid/os/StatsBootstrapAtomValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/StatsBootstrapAtomValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/os/StatsBootstrapAtomValue;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_32

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d  #0x5
    const-string v0, "bytesValue"

    return-object v0

    :pswitch_20  #0x4
    const-string/jumbo v0, "stringValue"

    return-object v0

    :pswitch_24  #0x3
    const-string v0, "floatValue"

    return-object v0

    :pswitch_27  #0x2
    const-string/jumbo v0, "longValue"

    return-object v0

    :pswitch_2b  #0x1
    const-string/jumbo v0, "intValue"

    return-object v0

    :pswitch_2f  #0x0
    const-string v0, "boolValue"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_2b  #00000001
        :pswitch_27  #00000002
        :pswitch_24  #00000003
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
    .end packed-switch
.end method

.method public static boolValue(Z)Landroid/os/StatsBootstrapAtomValue;
    .registers 4

    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bytesValue([B)Landroid/os/StatsBootstrapAtomValue;
    .registers 3

    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static floatValue(F)Landroid/os/StatsBootstrapAtomValue;
    .registers 4

    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static intValue(I)Landroid/os/StatsBootstrapAtomValue;
    .registers 4

    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static longValue(J)Landroid/os/StatsBootstrapAtomValue;
    .registers 5

    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static stringValue(Ljava/lang/String;)Landroid/os/StatsBootstrapAtomValue;
    .registers 3

    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    return v0
.end method

.method public getBoolValue()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytesValue()[B
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public getFloatValue()F
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_21  #0x5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_29  #0x4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_31  #0x3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3d  #0x2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_49  #0x1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_55  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_55  #00000000
        :pswitch_49  #00000001
        :pswitch_3d  #00000002
        :pswitch_31  #00000003
        :pswitch_29  #00000004
        :pswitch_21  #00000005
    .end packed-switch
.end method

.method public setBoolValue(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setBytesValue([B)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setFloatValue(F)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIntValue(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setLongValue(J)V
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    :pswitch_b  #0x5
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getBytesValue()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3b

    :pswitch_13  #0x4
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3b

    :pswitch_1b  #0x3
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getFloatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_3b

    :pswitch_23  #0x2
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3b

    :pswitch_2b  #0x1
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    :pswitch_33  #0x0
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getBoolValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_2b  #00000001
        :pswitch_23  #00000002
        :pswitch_1b  #00000003
        :pswitch_13  #00000004
        :pswitch_b  #00000005
    .end packed-switch
.end method
