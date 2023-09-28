# classes4.dex

.class public Lcom/android/internal/widget/LockscreenCredential;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCredential:[B

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockscreenCredential$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    array-length v2, p2

    if-nez v2, :cond_f

    move v0, v1

    :cond_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_29

    :cond_13
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1e

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1e

    if-ne p1, v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v2, v0

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v2, v1

    :goto_1f
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    array-length v2, p2

    if-lez v2, :cond_26

    move v0, v1

    :cond_26
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_29
    iput p1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iput-object p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    return-void
.end method

.method synthetic constructor <init>(I[BLcom/android/internal/widget/LockscreenCredential-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-void
.end method

.method private static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method public static createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .registers 4

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public static createNone()Lcom/android/internal/widget/LockscreenCredential;
    .registers 3

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public static createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 4

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public static createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Lcom/android/internal/widget/LockscreenCredential;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public static createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 4

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public static createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method private ensureNotZeroized()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Credential is already zeroized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public static legacyPasswordToHash([B[B)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_4d

    array-length v0, p0

    if-eqz v0, :cond_4d

    if-nez p1, :cond_8

    goto :goto_4d

    :cond_8
    :try_start_8
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v1

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v5

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_43} :catch_44

    return-object v3

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static passwordToHistoryHash([B[B[B)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_3d

    array-length v0, p0

    if-eqz v0, :cond_3d

    if-eqz p2, :cond_3d

    if-nez p1, :cond_a

    goto :goto_3d

    :cond_a
    :try_start_a
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_33} :catch_34

    return-object v2

    :catch_34
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public checkAgainstStoredType(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0
.end method

.method public checkLength()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_15

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pattern must not be null and at least 4 dots long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    return-void

    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_33

    return-void

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password must not be null and at least of length 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public duplicate()Lcom/android/internal/widget/LockscreenCredential;
    .registers 5

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v2, :cond_e

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    iget v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iget-object v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public getCredential()[B
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    return-object v0
.end method

.method public getType()I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isNone()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPassword()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPattern()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isPin()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public legacyPasswordToHash([B)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public passwordToHistoryHash([B[B)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    array-length v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

.method public zeroize()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    :cond_b
    return-void
.end method
