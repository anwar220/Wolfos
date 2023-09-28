# classes2.dex

.class public Landroid/hardware/radio/network/BarringInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BARRING_TYPE_CONDITIONAL:I = 0x1

.field public static final BARRING_TYPE_NONE:I = 0x0

.field public static final BARRING_TYPE_UNCONDITIONAL:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/BarringInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_TYPE_CS_FALLBACK:I = 0x5

.field public static final SERVICE_TYPE_CS_SERVICE:I = 0x0

.field public static final SERVICE_TYPE_CS_VOICE:I = 0x2

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x8

.field public static final SERVICE_TYPE_MMTEL_VIDEO:I = 0x7

.field public static final SERVICE_TYPE_MMTEL_VOICE:I = 0x6

.field public static final SERVICE_TYPE_MO_DATA:I = 0x4

.field public static final SERVICE_TYPE_MO_SIGNALLING:I = 0x3

.field public static final SERVICE_TYPE_OPERATOR_1:I = 0x3e9

.field public static final SERVICE_TYPE_OPERATOR_10:I = 0x3f2

.field public static final SERVICE_TYPE_OPERATOR_11:I = 0x3f3

.field public static final SERVICE_TYPE_OPERATOR_12:I = 0x3f4

.field public static final SERVICE_TYPE_OPERATOR_13:I = 0x3f5

.field public static final SERVICE_TYPE_OPERATOR_14:I = 0x3f6

.field public static final SERVICE_TYPE_OPERATOR_15:I = 0x3f7

.field public static final SERVICE_TYPE_OPERATOR_16:I = 0x3f8

.field public static final SERVICE_TYPE_OPERATOR_17:I = 0x3f9

.field public static final SERVICE_TYPE_OPERATOR_18:I = 0x3fa

.field public static final SERVICE_TYPE_OPERATOR_19:I = 0x3fb

.field public static final SERVICE_TYPE_OPERATOR_2:I = 0x3ea

.field public static final SERVICE_TYPE_OPERATOR_20:I = 0x3fc

.field public static final SERVICE_TYPE_OPERATOR_21:I = 0x3fd

.field public static final SERVICE_TYPE_OPERATOR_22:I = 0x3fe

.field public static final SERVICE_TYPE_OPERATOR_23:I = 0x3ff

.field public static final SERVICE_TYPE_OPERATOR_24:I = 0x400

.field public static final SERVICE_TYPE_OPERATOR_25:I = 0x401

.field public static final SERVICE_TYPE_OPERATOR_26:I = 0x402

.field public static final SERVICE_TYPE_OPERATOR_27:I = 0x403

.field public static final SERVICE_TYPE_OPERATOR_28:I = 0x404

.field public static final SERVICE_TYPE_OPERATOR_29:I = 0x405

.field public static final SERVICE_TYPE_OPERATOR_3:I = 0x3eb

.field public static final SERVICE_TYPE_OPERATOR_30:I = 0x406

.field public static final SERVICE_TYPE_OPERATOR_31:I = 0x407

.field public static final SERVICE_TYPE_OPERATOR_32:I = 0x408

.field public static final SERVICE_TYPE_OPERATOR_4:I = 0x3ec

.field public static final SERVICE_TYPE_OPERATOR_5:I = 0x3ed

.field public static final SERVICE_TYPE_OPERATOR_6:I = 0x3ee

.field public static final SERVICE_TYPE_OPERATOR_7:I = 0x3ef

.field public static final SERVICE_TYPE_OPERATOR_8:I = 0x3f0

.field public static final SERVICE_TYPE_OPERATOR_9:I = 0x3f1

.field public static final SERVICE_TYPE_PS_SERVICE:I = 0x1

.field public static final SERVICE_TYPE_SMS:I = 0x9


# instance fields
.field public barringType:I

.field public barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

.field public serviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/network/BarringInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/BarringInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    iput v0, p0, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    return-void
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

    iget-object v1, p0, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/BarringInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7a

    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5e
    :try_start_5e
    sget-object v2, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    iput-object v2, p0, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_78

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_72
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_78
    move-exception v2

    goto :goto_82

    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_78

    :goto_82
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8b

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "{"

    const-string v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "barringType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "barringTypeSpecificInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.BarringInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
