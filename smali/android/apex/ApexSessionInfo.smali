# classes.dex

.class public Landroid/apex/ApexSessionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public crashingNativeProcess:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;

.field public isActivated:Z

.field public isActivationFailed:Z

.field public isRevertFailed:Z

.field public isRevertInProgress:Z

.field public isReverted:Z

.field public isStaged:Z

.field public isSuccess:Z

.field public isUnknown:Z

.field public isVerified:Z

.field public sessionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/apex/ApexSessionInfo$1;

    invoke-direct {v0}, Landroid/apex/ApexSessionInfo$1;-><init>()V

    sput-object v0, Landroid/apex/ApexSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1a0

    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_19e

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

    iput v2, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_19e

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

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4c

    move v2, v5

    goto :goto_4d

    :cond_4c
    move v2, v6

    :goto_4d
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_65

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5f

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_5f
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_65
    :try_start_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    move v2, v5

    goto :goto_6e

    :cond_6d
    move v2, v6

    :goto_6e
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_86
    :try_start_86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8e

    move v2, v5

    goto :goto_8f

    :cond_8e
    move v2, v6

    :goto_8f
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a7

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a1

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_a1
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a7
    :try_start_a7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_af

    move v2, v5

    goto :goto_b0

    :cond_af
    move v2, v6

    :goto_b0
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_a7 .. :try_end_b6} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_c2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d0

    move v2, v5

    goto :goto_d1

    :cond_d0
    move v2, v6

    :goto_d1
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d7
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e9

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e3

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_e3
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e9
    :try_start_e9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f1

    move v2, v5

    goto :goto_f2

    :cond_f1
    move v2, v6

    :goto_f2
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_e9 .. :try_end_f8} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_112

    move v2, v5

    goto :goto_113

    :cond_112
    move v2, v6

    :goto_113
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_119
    .catchall {:try_start_10a .. :try_end_119} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_125

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_125
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12b
    :try_start_12b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_133

    move v2, v5

    goto :goto_134

    :cond_133
    move v2, v6

    :goto_134
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13a
    .catchall {:try_start_12b .. :try_end_13a} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_146

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_146
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14c
    :try_start_14c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_153

    goto :goto_154

    :cond_153
    move v5, v6

    :goto_154
    iput-boolean v5, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15a
    .catchall {:try_start_14c .. :try_end_15a} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_16c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_166

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_166
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16c
    :try_start_16c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_176
    .catchall {:try_start_16c .. :try_end_176} :catchall_19e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_188

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_182

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_182
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_188
    :try_start_188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;
    :try_end_18e
    .catchall {:try_start_188 .. :try_end_18e} :catchall_19e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_198

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_198
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_19e
    move-exception v2

    goto :goto_1a8

    :cond_1a0
    :try_start_1a0
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1a8
    .catchall {:try_start_1a0 .. :try_end_1a8} :catchall_19e

    :goto_1a8
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1b1

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b1
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
