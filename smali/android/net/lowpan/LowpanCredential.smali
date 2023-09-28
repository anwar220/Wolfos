# classes2.dex

.class public Landroid/net/lowpan/LowpanCredential;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanCredential;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNSPECIFIED_KEY_INDEX:I


# instance fields
.field private mMasterKey:[B

.field private mMasterKeyIndex:I


# direct methods
.method static bridge synthetic -$$Nest$fputmMasterKey(Landroid/net/lowpan/LowpanCredential;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMasterKeyIndex(Landroid/net/lowpan/LowpanCredential;I)V
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/lowpan/LowpanCredential$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanCredential$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([B)V

    return-void
.end method

.method private constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {p0, p1, p2}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([BI)V

    return-void
.end method

.method public static createMasterKey([B)Landroid/net/lowpan/LowpanCredential;
    .registers 2

    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanCredential;-><init>([B)V

    return-object v0
.end method

.method public static createMasterKey([BI)Landroid/net/lowpan/LowpanCredential;
    .registers 3

    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0, p0, p1}, Landroid/net/lowpan/LowpanCredential;-><init>([BI)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/lowpan/LowpanCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanCredential;

    iget-object v2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    iget v3, v0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public getMasterKey()[B
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMasterKeyIndex()I
    .registers 2

    iget v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMasterKey()Z
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method setMasterKey([B)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [B

    :cond_9
    iput-object p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    return-void
.end method

.method setMasterKey([BI)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([B)V

    invoke-virtual {p0, p2}, Landroid/net/lowpan/LowpanCredential;->setMasterKeyIndex(I)V

    return-void
.end method

.method setMasterKeyIndex(I)V
    .registers 2

    iput p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return-void
.end method

.method public toSensitiveString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<LowpanCredential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanCredential;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, " MasterKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    if-eqz v1, :cond_34

    const-string v1, ", Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_34

    :cond_2f
    const-string v1, " empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_34
    :goto_34
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<LowpanCredential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanCredential;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, " MasterKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    if-eqz v1, :cond_2a

    const-string v1, ", Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_25
    const-string v1, " empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2a
    :goto_2a
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
